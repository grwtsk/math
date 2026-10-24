# upperHemicontinuous_spectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78163a80-f3d8-1dcb-ecec-88bfc0606184",
  "kind": "lemma",
  "lexical_name": "upperHemicontinuous_spectrum",
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
  "slug": "upperhemicontinuous-spectrum--226d206ff02cf8c2b2a2ad84",
  "source": {
    "blob": "9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 848,
    "line": 824,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:226d206ff02cf8c2b2a2ad84f5fc93372a7ee84ca00f896646c7f2a55ac6b357",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78163a80-f3d8-1dcb-ecec-88bfc0606184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–848.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma upperHemicontinuous_spectrum [NormedField 𝕜] [ProperSpace 𝕜]
    [NormedRing A] [NormedAlgebra 𝕜 A] [CompleteSpace A] :
    UpperHemicontinuous (spectrum 𝕜 : A → Set 𝕜) := by
  /- It suffices to use the sequential characterization of upper hemicontinuity.
  Suppose that `a : ℕ → A` converges to `a₀`, `x : ℕ → 𝕜` converges to `x₀`, and for all `n`,
  `x n ∈ spectrum 𝕜 (a n)`. -/
  rw [upperHemicontinuous_iff]
  refine fun a₀ ↦ .of_sequences
    (isCompact_closedBall 0 ((‖a₀‖ + 1) * ‖(1 : A)‖)).isSeqCompact ?_ <|
    fun a ha x hx_mem x₀ hx ↦ ?_
  /- We must show that `spectrum 𝕜 (a n)` is eventually contained in some fixed compact set
  (we've chosen `closedBall 0 ((‖a₀‖ + 1) * ‖(1 : A)‖)`). This follows since the spectrum of any
  `b` is bounded `‖b‖ * ‖1‖` and `a` converges to `a₀`.  -/
  · filter_upwards [Metric.closedBall_mem_nhds a₀ zero_lt_one] with a ha
    apply spectrum.subset_closedBall_norm_mul a |>.trans <| Metric.closedBall_subset_closedBall ?_
    gcongr
    apply norm_le_norm_add_norm_sub' a a₀ |>.trans
    gcongr
    simpa [dist_eq_norm] using ha
  /- Finally, `x₀ ∈ spectrum 𝕜 a₀` since `algebraMap 𝕜 A x₀ - a₀` is not invertible, being itself
  the limit of the non-invertible elements `algebraMap 𝕜 A (x n) - (a n)`. -/
  · exact nonunits.isClosed.mem_of_tendsto
      (continuous_algebraMap 𝕜 A |>.tendsto x₀ |>.comp hx |>.sub ha) <| .of_forall hx_mem

/-- The map `a ↦ spectrum ℝ≥0 a` is upper hemicontinuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
