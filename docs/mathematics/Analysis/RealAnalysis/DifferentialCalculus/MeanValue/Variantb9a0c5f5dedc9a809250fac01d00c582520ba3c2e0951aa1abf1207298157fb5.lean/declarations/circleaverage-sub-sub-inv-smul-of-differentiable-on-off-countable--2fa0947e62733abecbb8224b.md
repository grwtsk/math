# circleAverage_sub_sub_inv_smul_of_differentiable_on_off_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2dfe2c0214bf6f07097591d120a961dcd43c7423",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a0c5f5dedc9a809250fac01d00c582520ba3c2e0951aa1abf1207298157fb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65a2ff6c-fb6b-8a13-e928-6af1bc5674fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcef03b9-0e95-bb63-783a-2f895a2977ab",
  "kind": "theorem",
  "lexical_name": "circleAverage_sub_sub_inv_smul_of_differentiable_on_off_countable",
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
  "slug": "circleaverage-sub-sub-inv-smul-of-differentiable-on-off-countable--2fa0947e62733abecbb8224b",
  "source": {
    "blob": "2dfe2c0214bf6f07097591d120a961dcd43c7423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantb9a0c5f5dedc9a809250fac01d00c582520ba3c2e0951aa1abf1207298157fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa0947e62733abecbb8224bc4a82e1ede98871e4bad47999510ce917c90ef5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantb9a0c5f5dedc9a809250fac01d00c582520ba3c2e0951aa1abf1207298157fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcef03b9-0e95-bb63-783a-2f895a2977ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleAverage_sub_sub_inv_smul_of_differentiable_on_off_countable (hs : s.Countable)
    (h₁f : ContinuousOn f (closedBall c |R|)) (h₂f : ∀ z ∈ ball c |R| \ s, DifferentiableAt ℂ f z)
    (hw : w ∈ ball c |R|) :
    circleAverage (fun z ↦ ((z - c) / (z - w)) • f z) c R = f w := by
  rw [← circleAverage_abs_radius]
  rcases le_or_gt |R| 0 with hR | hR
  · simp_all [ball_eq_empty.2 hR]
  calc circleAverage (fun z ↦ ((z - c) * (z - w)⁻¹) • f z) c |R|
  _ = (2 * π * I)⁻¹ • (∮ z in C(c, |R|), (z - w)⁻¹ • f z) := by
    simp only [circleAverage_eq_circleIntegral hR.ne', mul_inv_rev, inv_I, neg_mul, neg_smul,
      neg_inj, ne_eq, mul_eq_zero, I_ne_zero, inv_eq_zero, ofReal_eq_zero, pi_ne_zero,
      OfNat.ofNat_ne_zero, or_self, not_false_eq_true, smul_right_inj]
    apply circleIntegral.integral_congr hR.le
    intro z hz
    match_scalars
    have : z - c ≠ 0 := by grind [ne_of_mem_sphere]
    grind
  _ = f w := by
    rw [circleIntegral_sub_inv_smul_of_differentiable_on_off_countable hs hw h₁f h₂f]
    match_scalars
    simp [field]

/--
The **Generalized Mean Value Property** of complex differentiable functions: If `f : ℂ → E` is
complex differentiable at all points of a closed disc of radius `R` and center `c`, then for every
point `w` in the disk, the circle average `circleAverage (fun z ↦ ((z - c) * (z - w)⁻¹) • f z) c R`
equals `f w`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantb9a0c5f5dedc9a809250fac01d00c582520ba3c2e0951aa1abf1207298157fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantb9a0c5f5dedc9a809250fac01d00c582520ba3c2e0951aa1abf1207298157fb5.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfe2c0214bf6f07097591d120a961dcd43c7423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
