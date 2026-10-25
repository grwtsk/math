# extendUpdatedVarsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8ed3640634f01ef28f97883c0f6d79763e8364bc7e649277efb92ffb0eac879",
  "kind": "def",
  "lexical_name": "extendUpdatedVarsAux",
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
  "slug": "extendupdatedvarsaux--f6e38068b89b9dcc0a825899",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 499,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6e38068b89b9dcc0a825899b4ae5d58b5f39ef7966eea3cd618f3b5c3ecf5dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8ed3640634f01ef28f97883c0f6d79763e8364bc7e649277efb92ffb0eac879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def extendUpdatedVarsAux (c : Code) (ws : VarSet) : TermElabM Code :=
  let rec update (c : Code) : TermElabM Code := do
    match c with
    | .joinpoint j ps b k    => return .joinpoint j ps (← update b) (← update k)
    | .seq e k               => return .seq e (← update k)
    | .match ref g ds t alts =>
      if alts.any fun alt => alt.vars.any fun x => ws.contains x.getId then
        -- If a pattern variable is shadowing a variable in ws, we `pullExitPoints`
        pullExitPoints c
      else
        return .match ref g ds t (← alts.mapM fun alt => do pure { alt with rhs := (← update alt.rhs) })
    | .matchExpr ref «meta» d alts e =>
      if alts.any fun alt => alt.vars.any fun x => ws.contains x.getId then
        -- If a pattern variable is shadowing a variable in ws, we `pullExitPoints`
        pullExitPoints c
      else
        let alts ← alts.mapM fun alt => do pure { alt with rhs := (← update alt.rhs) }
        let e ← update e
        return .matchExpr ref «meta» d alts e
    | .ite ref none o c t e => return .ite ref none o c (← update t) (← update e)
    | .ite ref (some h) o cond t e =>
      if ws.contains h.getId then
        -- if the `h` at `if h : c then t else e` shadows a variable in `ws`, we `pullExitPoints`
        pullExitPoints c
      else
        return Code.ite ref (some h) o cond (← update t) (← update e)
    | .reassign xs stx k => return .reassign xs stx (← update k)
    | .decl xs stx k => do
      if xs.any fun x => ws.contains x.getId then
        -- One the declared variables is shadowing a variable in `ws`
        pullExitPoints c
      else
        return .decl xs stx (← update k)
    | c => return  c
  update c

/--
Extend the set of updated variables. It assumes `ws` is a super set of `c.uvars`.
We **cannot** simply update the field `c.uvars`, because `c` may have shadowed some variable in `ws`.
See discussion at `pullExitPoints`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
