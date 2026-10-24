# criticalDensity_integral_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd20640a7d0d0913e055dcbd7aa2d3a7c1afc9d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d404e31-bfef-b0dc-5fcd-ecec052b4fee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68496f9a-6a7e-0136-d458-44138f8b19ea",
  "kind": "theorem",
  "lexical_name": "criticalDensity_integral_pos",
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
  "slug": "criticaldensity-integral-pos--457395b6f3839b20729d18d0",
  "source": {
    "blob": "fd20640a7d0d0913e055dcbd7aa2d3a7c1afc9d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:457395b6f3839b20729d18d052c50d0038d21a1e00a8700086844c5f88409d5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68496f9a-6a7e-0136-d458-44138f8b19ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDensity_integral_pos {A : ℝ} (hA : 0 < A) :
    0 < ∫ u in 0..2*A, criticalDensity u := by
  have hm := intervalIntegral.integral_mono_on (μ := volume) (show 0 ≤ 2*A by linarith)
    (continuous_const.intervalIntegrable 0 (2*A))
    (density_continuous.intervalIntegrable 0 (2*A))
    (fun u hu => (criticalDensity_mem_Icc u hu.1).1)
  have he : (∫ u in 0..2*A, (1/2 : ℝ)) = A := by
    simp only [intervalIntegral.integral_const, smul_eq_mul]
    ring
  rw [he] at hm
  exact hA.trans_le hm

/-- The density mass is strictly smaller than the raw interval length at positive scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd20640a7d0d0913e055dcbd7aa2d3a7c1afc9d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
