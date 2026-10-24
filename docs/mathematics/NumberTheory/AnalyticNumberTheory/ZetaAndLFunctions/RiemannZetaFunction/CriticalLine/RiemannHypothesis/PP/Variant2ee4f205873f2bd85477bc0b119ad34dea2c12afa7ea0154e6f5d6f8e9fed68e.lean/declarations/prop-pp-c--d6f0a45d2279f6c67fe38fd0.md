# prop_PP_c'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cbbb511-6c7b-ae38-2644-483f9ca680e3",
  "kind": "theorem",
  "lexical_name": "prop_PP_c'",
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
  "slug": "prop-pp-c--d6f0a45d2279f6c67fe38fd0",
  "source": {
    "blob": "287aac26488973ac9803facd5f914ae4e86e1a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 594,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6f0a45d2279f6c67fe38fd075673b4eb4dfdc323104da2c5724de492412822e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbbb511-6c7b-ae38-2644-483f9ca680e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_PP_c' (hMV : Zeta23.MVHilbert C) (hC : 0 ≤ C) (hF : LocalHypsCore cϱ p F)
    (hT : 1 ≤ p.T) (c : ℕ → ℂ) (hc1 : c 1 = 0) :
    |Mform F.Phi p.T (Pc p.X c) (Pc p.X c)
        - p.T / π * ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ ^ 2 / n * F.g (Real.log n)|
      ≤ KPP C cϱ * p.L *
        ((∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ ^ 2 / n)
          + (∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ ^ 2)
          + (∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ / Real.sqrt n) ^ 2) := by
  have h := prop_PP_c hMV hC hF hT c hc1
  refine h.trans ?_
  set A := ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ ^ 2 / n
  set B := ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ ^ 2
  set S₁ := ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ / Real.sqrt n
  have hA0 : 0 ≤ A := Finset.sum_nonneg fun n _ => div_nonneg (sq_nonneg _) (Nat.cast_nonneg _)
  have hB0 : 0 ≤ B := Finset.sum_nonneg fun n _ => sq_nonneg _
  have hS0 : 0 ≤ S₁ ^ 2 := sq_nonneg _
  have hL : 0 ≤ p.L := hF.L_pos.le
  have hcϱ : 4 ≤ cϱ := hF.four_le_cϱ
  have hπ : (0:ℝ) < π := Real.pi_pos
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hk : (0:ℝ) ≤ 1 / (2 * π ^ 2) := by positivity
  have h1 : (0:ℝ) ≤ 8 + 8 * cϱ := by linarith
  have h2 : (0:ℝ) ≤ 32 * π * C := by positivity
  have h3 : (0:ℝ) ≤ 2 * π / Real.log 2 := by positivity
  unfold KPP
  have eA : 1 / (2 * π ^ 2) * (8 + 8 * cϱ) * p.L * A
      ≤ 1 / (2 * π ^ 2) * ((8 + 8 * cϱ) + 32 * π * C + 2 * π / Real.log 2) * p.L * A := by
    apply mul_le_mul_of_nonneg_right _ hA0
    apply mul_le_mul_of_nonneg_right _ hL
    apply mul_le_mul_of_nonneg_left _ hk
    linarith
  have eB : 1 / (2 * π ^ 2) * (32 * π) * C * p.L * B
      ≤ 1 / (2 * π ^ 2) * ((8 + 8 * cϱ) + 32 * π * C + 2 * π / Real.log 2) * p.L * B := by
    rw [show 1 / (2 * π ^ 2) * (32 * π) * C = 1 / (2 * π ^ 2) * (32 * π * C) by ring]
    apply mul_le_mul_of_nonneg_right _ hB0
    apply mul_le_mul_of_nonneg_right _ hL
    apply mul_le_mul_of_nonneg_left _ hk
    linarith
  have eS : 1 / (2 * π ^ 2) * (2 * π / Real.log 2) * p.L * S₁ ^ 2
      ≤ 1 / (2 * π ^ 2) * ((8 + 8 * cϱ) + 32 * π * C + 2 * π / Real.log 2) * p.L * S₁ ^ 2 := by
    apply mul_le_mul_of_nonneg_right _ hS0
    apply mul_le_mul_of_nonneg_right _ hL
    apply mul_le_mul_of_nonneg_left _ hk
    linarith
  calc 1 / (2 * π ^ 2) * (8 + 8 * cϱ) * p.L * A
        + 1 / (2 * π ^ 2) * (32 * π) * C * p.L * B
        + 1 / (2 * π ^ 2) * (2 * π / Real.log 2) * p.L * S₁ ^ 2
      ≤ 1 / (2 * π ^ 2) * ((8 + 8 * cϱ) + 32 * π * C + 2 * π / Real.log 2) * p.L * A
        + 1 / (2 * π ^ 2) * ((8 + 8 * cϱ) + 32 * π * C + 2 * π / Real.log 2) * p.L * B
        + 1 / (2 * π ^ 2) * ((8 + 8 * cϱ) + 32 * π * C + 2 * π / Real.log 2) * p.L * S₁ ^ 2 :=
        add_le_add (add_le_add eA eB) eS
    _ = 1 / (2 * π ^ 2) * ((8 + 8 * cϱ) + 32 * π * C + 2 * π / Real.log 2) * p.L
        * (A + B + S₁ ^ 2) := by ring

end Results

end XiPrime
end Zeta23

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `287aac26488973ac9803facd5f914ae4e86e1a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
