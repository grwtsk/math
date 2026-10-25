# assignConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b82219c81309d09443841961c8cba8ae97c8b62ff698e30a743727a23220c392",
  "kind": "def",
  "lexical_name": "assignConst",
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
  "slug": "assignconst--6c541c0fc3b62d5c5fe14421",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1278,
    "line": 1251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c541c0fc3b62d5c5fe144212e773a4f3f0e407447f24a2de7cd13fe90f9ca21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b82219c81309d09443841961c8cba8ae97c8b62ff698e30a743727a23220c392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1251–1278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def assignConst (mvar : Expr) (numArgs : Nat) (v : Expr) : MetaM Bool := do
  let mvarDecl ← mvar.mvarId!.getDecl
  forallBoundedTelescope mvarDecl.type numArgs fun xs _ => do
    if xs.size != numArgs then
      pure false
    else
      let some v ← mkLambdaFVarsWithLetDeps xs v | pure false
      match (← checkAssignment mvar.mvarId! #[] v) with
      | none   => pure false
      | some v =>
        trace[Meta.isDefEq.constApprox] "{mvar} := {v}"
        checkTypesAndAssign mvar v

/--
  Auxiliary procedure for solving `?m args =?= v` when `args[*...patternVarPrefix]` contains
  only pairwise distinct free variables.
  Let `args[*...patternVarPrefix] = #[a₁, ..., aₙ]`, and `args[patternVarPrefix...*] = #[b₁, ..., bᵢ]`,
  this procedure first reduces the constraint to
  ```
  ?m a₁ ... aₙ =?= fun x₁ ... xᵢ => v
  ```
  where the left-hand-side is a constant function.
  Then, it tries to find the longest prefix `#[a₁, ..., aⱼ]` of `#[a₁, ..., aₙ]` such that the following assignment is valid.
  ```
  ?m := fun y₁ ... y‌ⱼ => (fun y_{j+1} ... yₙ x₁ ... xᵢ => v)[a₁/y₁, .., aⱼ/yⱼ]
  ```
  That is, after the longest prefix is found, we solve the constraint as the lhs was a pattern. See the definition of "pattern" above.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L1251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
