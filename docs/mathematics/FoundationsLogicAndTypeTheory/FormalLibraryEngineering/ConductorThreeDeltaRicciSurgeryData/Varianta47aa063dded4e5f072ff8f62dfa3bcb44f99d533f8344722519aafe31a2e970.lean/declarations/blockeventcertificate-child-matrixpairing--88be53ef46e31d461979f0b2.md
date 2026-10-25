# BlockEventCertificate.child_matrixPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b4ca35e24d86473513aa5bf8296282db57cbc65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 477,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ff273b2-7c86-fec5-5da8-1e4f4cc6d75b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60452d5c-1165-df49-ca32-984bb36d0bed",
  "kind": "theorem",
  "lexical_name": "BlockEventCertificate.child_matrixPairing",
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
  "slug": "blockeventcertificate-child-matrixpairing--88be53ef46e31d461979f0b2",
  "source": {
    "blob": "8b4ca35e24d86473513aa5bf8296282db57cbc65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 477,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88be53ef46e31d461979f0b265153b809afa813d766a45e7b02bc8b8cbe51861",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60452d5c-1165-df49-ca32-984bb36d0bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BlockEventCertificate.child_matrixPairing {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (certificate : BlockEventCertificate parent)
    (child : certificate.surgery.Child) (x : ℕ) :
    typeIIMatrixPairing
        (certificate.childState child).leftCoefficient
        ((certificate.childState child).cutoffMatrix x)
        (certificate.childState child).rightCoefficient =
      typeIIMatrixPairing parent.leftCoefficient
        (certificate.surgery.blockMatrix child x)
        parent.rightCoefficient := by
  classical
  rw [certificate.child_cutoff child]
  simp only [typeIIMatrixPairing]
  apply Finset.sum_congr rfl
  intro left _
  apply Finset.sum_congr rfl
  intro right _
  by_cases hmatrix : certificate.surgery.blockMatrix child x left right = 0
  · simp [hmatrix]
  · have hsupport := certificate.surgery.blockMatrix_support
      child x left right hmatrix
    rw [certificate.child_leftCoefficient child left,
      certificate.child_rightCoefficient child right,
      if_pos hsupport.1, if_pos hsupport.2]

/-- Exact signed decomposition of a parent event into its child pairings and
the cross-neck term.  This theorem is bookkeeping only; bounding the cross
term remains `GlobalCrossNeckBudget`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4ca35e24d86473513aa5bf8296282db57cbc65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
