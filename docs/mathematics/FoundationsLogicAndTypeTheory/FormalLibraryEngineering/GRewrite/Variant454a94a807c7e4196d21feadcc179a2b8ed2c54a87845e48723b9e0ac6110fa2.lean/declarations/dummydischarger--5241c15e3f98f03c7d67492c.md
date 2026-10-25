# dummyDischarger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:130dfa04060baff170138a477e7a7f60e6033c479b0abd2758bc7eec3e837cc0",
  "kind": "def",
  "lexical_name": "dummyDischarger",
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
  "slug": "dummydischarger--5241c15e3f98f03c7d67492c",
  "source": {
    "blob": "cce4506a662515d32779db5f6e07114be994c861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5241c15e3f98f03c7d67492c6cb43121bd8d99f901e1f687ae6a6847c80a2641",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:130dfa04060baff170138a477e7a7f60e6033c479b0abd2758bc7eec3e837cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def dummyDischarger (ref : IO.Ref (Array GrwPos)) (hyp? : Bool) (fvar : Expr)
    (goal : MVarId) : MetaM Bool := do
  let e ← instantiateMVars (← goal.getType)
  let mkApp2 relation lhs rhs := e | throwError "`{e}` is not a relation"
  let .const relName _ := relation.getAppFn | throwError "{e} is not a relation"
  if relName matches ``Eq | ``Iff then throwError "{e} is not a generalized relation"
  let symm ←
    if lhs.cleanupAnnotations == fvar then
      pure hyp?
    else if rhs.cleanupAnnotations == fvar then
      pure !hyp?
    else
      throwError "{e} doesn't have {fvar} on either side"
  ref.set (← gcongrBackward relName relation symm)
  throw <| .error default "dummyError"

/-- Determine possible ways in which a `grw` call could rewrite at the given subexpression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce4506a662515d32779db5f6e07114be994c861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
