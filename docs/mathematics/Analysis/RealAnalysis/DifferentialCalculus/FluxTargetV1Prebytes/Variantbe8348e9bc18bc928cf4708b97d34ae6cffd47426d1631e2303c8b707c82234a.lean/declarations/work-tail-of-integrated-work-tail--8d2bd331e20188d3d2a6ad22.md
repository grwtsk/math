# work_tail_of_integrated_work_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1de5ae9fb2daf5f59ceaa5ce895a6c78ab41bcdc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da05bc5d-ee66-f35f-4825-1825f3fe52bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a825d4c-0d5b-b0cd-0c72-e3d17cedfa92",
  "kind": "theorem",
  "lexical_name": "work_tail_of_integrated_work_tail",
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
  "slug": "work-tail-of-integrated-work-tail--8d2bd331e20188d3d2a6ad22",
  "source": {
    "blob": "1de5ae9fb2daf5f59ceaa5ce895a6c78ab41bcdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 258,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variantbe8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d2bd331e20188d3d2a6ad2232e3c61c5c1a70b1b93309f453b29d87919cf102",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variantbe8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a825d4c-0d5b-b0cd-0c72-e3d17cedfa92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem work_tail_of_integrated_work_tail
    (h : IntegratedMangoldtWorkTailLowerBound) : MangoldtWorkTailLowerBound := by
  rcases h with ⟨B, hB, R, hR, hflux⟩
  refine ⟨max 0 (B - criticalMangoldtWork 2), le_max_left _ _, R, by linarith, ?_⟩
  intro A hRA
  have hA : 1 < A := by linarith
  have hf := hflux A hRA
  rw [criticalMangoldtWork_flux (by norm_num : (1 : ℝ) < 2) hA] at hf
  have hm := le_max_right (0 : ℝ) (B - criticalMangoldtWork 2)
  linarith

/-- An original work witness converts to integrated flux using honest nonnegative constants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variantbe8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variantbe8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1de5ae9fb2daf5f59ceaa5ce895a6c78ab41bcdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
