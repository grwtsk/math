# pullExitPointsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a59601a5c411783e3d1e18221aeba8dc640849b90478dc32a889911f0fc0ee48",
  "kind": "def",
  "lexical_name": "pullExitPointsAux",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "pullexitpointsaux--3bbe950e63f125caebc05ca1",
  "source": {
    "blob": "8c8da9f50ee7a399431280e0ec5e9dd066fa0789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 427,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bbe950e63f125caebc05ca17811e02e9e4b74c32b8a344360b4f1c58d102ba5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a59601a5c411783e3d1e18221aeba8dc640849b90478dc32a889911f0fc0ee48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def pullExitPointsAux (rs : VarSet) (c : Code) : StateRefT (Array JPDecl) TermElabM Code := do
  match c with
  | .decl xs stx k         => return .decl xs stx (← pullExitPointsAux (eraseVars rs xs) k)
  | .reassign xs stx k     => return .reassign xs stx (← pullExitPointsAux (insertVars rs xs) k)
  | .joinpoint j ps b k    => return .joinpoint j ps (← pullExitPointsAux rs b) (← pullExitPointsAux rs k)
  | .seq e k               => return .seq e (← pullExitPointsAux rs k)
  | .ite ref x? o c t e    => return .ite ref x? o c (← pullExitPointsAux (eraseOptVar rs x?) t) (← pullExitPointsAux (eraseOptVar rs x?) e)
  | .jmp ..                => return  c
  | .break ref             => mkSimpleJmp ref rs (.break ref)
  | .continue ref          => mkSimpleJmp ref rs (.continue ref)
  | .return ref val        => mkJmp ref rs val (fun y => return .return ref y)
  | .action e              =>
    -- We use `mkAuxDeclFor` because `e` is not pure.
    mkAuxDeclFor e fun y =>
      let ref := e
      mkJmp ref rs y (fun yFresh => return .action (← ``(Pure.pure $yFresh)))
  | .match ref g ds t alts =>
    let alts ← alts.mapM fun alt => do pure { alt with rhs := (← pullExitPointsAux (eraseVars rs alt.vars) alt.rhs) }
    return .match ref g ds t alts
  | .matchExpr ref «meta» d alts e =>
    let alts ← alts.mapM fun alt => do pure { alt with rhs := (← pullExitPointsAux (eraseVars rs alt.vars) alt.rhs) }
    let e ← pullExitPointsAux rs e
    return .matchExpr ref «meta» d alts e

/--
Auxiliary operation for adding new variables to the collection of updated variables in a CodeBlock.
When a new variable is not already in the collection, but is shadowed by some declaration in `c`,
we create auxiliary join points to make sure we preserve the semantics of the code block.
Example: suppose we have the code block `print x; let x := 10; return x`. And we want to extend it
with the reassignment `x := x + 1`. We first use `pullExitPoints` to create
```
let jp (x!1) :=  return x!1;
print x;
let x := 10;
jmp jp x
```
and then we add the reassignment
```
x := x + 1
let jp (x!1) := return x!1;
print x;
let x := 10;
jmp jp x
```
Note that we created a fresh variable `x!1` to avoid accidental name capture.
As another example, consider
```
print x;
let x := 10
y := y + 1;
return x;
```
We transform it into
```
let jp (y x!1) := return x!1;
print x;
let x := 10
y := y + 1;
jmp jp y x
```
and then we add the reassignment as in the previous example.
We need to include `y` in the jump, because each exit point is implicitly returning the set of
update variables.

We implement the method as follows. Let `us` be `c.uvars`, then
1- for each `return _ y` in `c`, we create a join point
  `let j (us y!1) := return y!1`
   and replace the `return _ y` with `jmp us y`
2- for each `break`, we create a join point
  `let j (us) := break`
   and replace the `break` with `jmp us`.
3- Same as 2 for `continue`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c8da9f50ee7a399431280e0ec5e9dd066fa0789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
