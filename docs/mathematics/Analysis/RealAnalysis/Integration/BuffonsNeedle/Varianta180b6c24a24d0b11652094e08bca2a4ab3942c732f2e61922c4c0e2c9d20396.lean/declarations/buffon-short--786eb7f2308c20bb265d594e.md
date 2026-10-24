# buffon_short

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4974230b9c84bf9f6826bec42fdbfb15e0a49b4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b21bc388-44cb-f610-75db-fe0843bde5e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb104d13-bebc-f462-2f08-eade4d94c5cb",
  "kind": "theorem",
  "lexical_name": "buffon_short",
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
  "slug": "buffon-short--786eb7f2308c20bb265d594e",
  "source": {
    "blob": "4974230b9c84bf9f6826bec42fdbfb15e0a49b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 259,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:786eb7f2308c20bb265d594effe3f031243ebc95073b3b6e8486b18ef5d5d8ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb104d13-bebc-f462-2f08-eade4d94c5cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem buffon_short (h : l ≤ d) : ℙ[N l B] = (2 * l) * (d * π)⁻¹ := by
  simp_rw [buffon_integral d l hd B hBₘ hB, short_needle_inter_eq d l hl h _,
    MeasureTheory.setIntegral_const, MeasureTheory.measureReal_def,
    Real.volume_Icc, smul_eq_mul, mul_one, mul_comm (d * π)⁻¹ _,
    mul_eq_mul_right_iff]
  apply Or.inl
  ring_nf
  have : ∀ᵐ θ, θ ∈ Set.Icc 0 π → ENNReal.toReal (ENNReal.ofReal (θ.sin * l)) = θ.sin * l := by
    have (θ : ℝ) (hθ : θ ∈ Set.Icc 0 π) : 0 ≤ θ.sin * l :=
      mul_nonneg (Real.sin_nonneg_of_mem_Icc hθ) hl.le
    simp_rw [ENNReal.toReal_ofReal_eq_iff, MeasureTheory.ae_of_all _ this]
  simp_rw [MeasureTheory.setIntegral_congr_ae measurableSet_Icc this,
    ← smul_eq_mul, integral_smul_const, smul_eq_mul, mul_comm, mul_eq_mul_left_iff,
    MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le Real.pi_pos.le,
    integral_sin, Real.cos_zero, Real.cos_pi, sub_neg_eq_add, one_add_one_eq_two, true_or]

/--
The integrand in the long case is `min d (θ.sin * l)` and its integrability is necessary for
the integral lemmas below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4974230b9c84bf9f6826bec42fdbfb15e0a49b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
