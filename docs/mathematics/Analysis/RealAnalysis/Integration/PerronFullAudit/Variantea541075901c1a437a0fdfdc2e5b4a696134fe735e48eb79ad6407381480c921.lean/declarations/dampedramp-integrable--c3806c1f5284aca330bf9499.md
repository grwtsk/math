# dampedRamp_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c08716e6ad2b68397f45d0dbd2735c2ca8ab11c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac93af12-03d2-d35f-9f29-4a43b4813d0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7e44228-38ea-9d34-21d9-9e20afb5dd7f",
  "kind": "theorem",
  "lexical_name": "dampedRamp_integrable",
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
  "slug": "dampedramp-integrable--c3806c1f5284aca330bf9499",
  "source": {
    "blob": "c08716e6ad2b68397f45d0dbd2735c2ca8ab11c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3806c1f5284aca330bf9499e8bb45cca0fba2da596af826535c3d521bcd4d21",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7e44228-38ea-9d34-21d9-9e20afb5dd7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedRamp_integrable (c : ℝ) (hc : 0 < c) : Integrable (dampedRamp c) := by
  rw [dampedRamp_eq_indicator]
  exact (kernelIntegrand_integrable_Ioi_zero 1 (c : ℂ) hc).integrable_indicator measurableSet_Ioi

/-- The exact Fourier transform fixes both the sign and the 2π convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08716e6ad2b68397f45d0dbd2735c2ca8ab11c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
