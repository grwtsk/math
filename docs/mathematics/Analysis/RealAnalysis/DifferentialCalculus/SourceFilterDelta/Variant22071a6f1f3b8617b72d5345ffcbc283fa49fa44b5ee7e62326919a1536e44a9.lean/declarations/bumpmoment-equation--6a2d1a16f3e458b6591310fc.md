# bumpMoment_equation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aeac2dbffda9d6cdcf5f6ba18743af325785a5f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72d7ae85-7938-d8cd-4063-121aafe60843",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8187015-eab5-100f-c3b7-eb8c4fe2de82",
  "kind": "theorem",
  "lexical_name": "bumpMoment_equation",
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
  "slug": "bumpmoment-equation--6a2d1a16f3e458b6591310fc",
  "source": {
    "blob": "aeac2dbffda9d6cdcf5f6ba18743af325785a5f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a2d1a16f3e458b6591310fcef2fe87e8e28cf7e909ab6ff0ccb094d5d6abb34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8187015-eab5-100f-c3b7-eb8c4fe2de82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_equation (z : ℂ) :
    z * bumpMoment 2 z + 10 * bumpMoment 1 z - z * bumpMoment 0 z = 0 := by
  let g : ℝ → ℂ := fun x =>
    (z * (1 - (x : ℂ) ^ 2) ^ 5 - 10 * (x : ℂ) * (1 - (x : ℂ) ^ 2) ^ 4) *
      Complex.exp (z * (x : ℂ))
  have hg : IntervalIntegrable g volume (-1) 1 := by
    apply Continuous.intervalIntegrable
    dsimp [g]
    fun_prop
  have hz := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => bumpFlux_hasDerivAt z x) hg
  have hzero : (∫ x : ℝ in (-1)..1, g x) = 0 := by
    simpa only [Complex.ofReal_one, Complex.ofReal_neg, one_pow, neg_one_sq,
      sub_self, zero_pow (by omega : 5 ≠ 0), zero_mul, sub_zero] using hz
  calc
    _ = ∫ x : ℝ in (-1)..1,
        z * ((x : ℂ) ^ 2 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) +
        10 * ((x : ℂ) ^ 1 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) -
        z * ((x : ℂ) ^ 0 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) := by
      rw [intervalIntegral.integral_sub
        (((bumpMoment_intervalIntegrable 2 z).const_mul z).add
          ((bumpMoment_intervalIntegrable 1 z).const_mul 10))
        ((bumpMoment_intervalIntegrable 0 z).const_mul z),
        intervalIntegral.integral_add ((bumpMoment_intervalIntegrable 2 z).const_mul z)
          ((bumpMoment_intervalIntegrable 1 z).const_mul 10)]
      simp only [intervalIntegral.integral_const_mul, bumpMoment]
    _ = -(∫ x : ℝ in (-1)..1, g x) := by
      rw [← intervalIntegral.integral_neg]
      apply intervalIntegral.integral_congr
      intro x _
      dsimp [g]
      ring
    _ = 0 := by rw [hzero, neg_zero]

/-- A positive weighted mass and the signed radial energy identity force zero real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeac2dbffda9d6cdcf5f6ba18743af325785a5f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
