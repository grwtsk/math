# alternatingGroup.commutator_perm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24af3a8d-3734-165d-ba59-9933c33a2f9d",
  "kind": "theorem",
  "lexical_name": "alternatingGroup.commutator_perm_eq",
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
  "slug": "alternatinggroup-commutator-perm-eq--083d2768ddc28d3b488a9d98",
  "source": {
    "blob": "b0bae72d4d25e97799ab4945862011a0074e9aed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant70e1bbb47fb011ae2385b4dcf05cd703394da9a5ebffd626f2a359aa4709c569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:083d2768ddc28d3b488a9d98c430562d7672ccb141d90e7a085bec066457f417",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant70e1bbb47fb011ae2385b4dcf05cd703394da9a5ebffd626f2a359aa4709c569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24af3a8d-3734-165d-ba59-9933c33a2f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alternatingGroup.commutator_perm_eq (h5 : 5 ≤ Nat.card α) :
    commutator (Perm α) = alternatingGroup α := by
  apply le_antisymm alternatingGroup.commutator_perm_le
  rw [← commutator_alternatingGroup_eq_self h5]
  exact commutator_mono le_top le_top

end Perfect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant70e1bbb47fb011ae2385b4dcf05cd703394da9a5ebffd626f2a359aa4709c569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant70e1bbb47fb011ae2385b4dcf05cd703394da9a5ebffd626f2a359aa4709c569.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0bae72d4d25e97799ab4945862011a0074e9aed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
