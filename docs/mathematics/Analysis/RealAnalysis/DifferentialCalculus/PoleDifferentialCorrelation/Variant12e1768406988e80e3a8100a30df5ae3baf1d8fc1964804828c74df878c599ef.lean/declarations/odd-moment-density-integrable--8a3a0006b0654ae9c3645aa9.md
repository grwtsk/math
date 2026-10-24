# odd_moment_density_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bc2ef396d31fd9257473b8da5c55961453dedcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8d8ddb1-be18-9246-07ec-52f51be00178",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07616536-0fb8-0854-cf41-ca3a3fde4283",
  "kind": "theorem",
  "lexical_name": "odd_moment_density_integrable",
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
  "slug": "odd-moment-density-integrable--8a3a0006b0654ae9c3645aa9",
  "source": {
    "blob": "7bc2ef396d31fd9257473b8da5c55961453dedcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a3a0006b0654ae9c3645aa9a65dc9b79f25c976541eeb1daafe9eece484da8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07616536-0fb8-0854-cf41-ca3a3fde4283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_moment_density_integrable (k : ℕ) (hk : k ≤ 1) :
    Integrable (oddMomentDensity k) := by
  have hD : Continuous (bumpMomentDensity k) := by
    unfold bumpMomentDensity bumpDensity
    exact (continuous_id.pow _).mul
      ((Complex.continuous_normSq.comp
        (BridgeFourier.sourceFourier_continuous source_bump_integrable)).div_const _)
  apply ((bump_moment_density_integrable k (by omega)).add
    (bump_moment_density_integrable (k + 1) (by omega))).mono'
      (continuous_id.mul hD).aestronglyMeasurable
  filter_upwards [] with u
  change ‖u * bumpMomentDensity k u‖ ≤ bumpMomentDensity k u + bumpMomentDensity (k + 1) u
  rw [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (bump_moment_density_nonneg k u)]
  have hu : |u| ≤ 1 + u ^ 2 := by
    nlinarith [sq_abs u, sq_nonneg (|u| - 1)]
  calc
    _ ≤ (1 + u ^ 2) * bumpMomentDensity k u :=
      mul_le_mul_of_nonneg_right hu (bump_moment_density_nonneg k u)
    _ = bumpMomentDensity k u + bumpMomentDensity (k + 1) u := by
      rw [← frequency_mul_odd_moment_density]
      unfold oddMomentDensity
      ring

/-- All required sine integrands are integrable, without an infinite Taylor expansion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bc2ef396d31fd9257473b8da5c55961453dedcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
