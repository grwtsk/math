# raw_psi_weight_eq_closed_atoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb18b600-c23c-9252-fa95-bf83fca0a707",
  "kind": "theorem",
  "lexical_name": "raw_psi_weight_eq_closed_atoms",
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
  "slug": "raw-psi-weight-eq-closed-atoms--b094b2ed2b6be01506c28f89",
  "source": {
    "blob": "7879f686bf89ad4cad47509c82b316f2dcff9485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Varianta9a0f06190c216025a64360c710bbf2958538f440bc253f915ee41825c6fc4ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b094b2ed2b6be01506c28f89da86463c1211efb997c0d8422e467f96f15c58b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Varianta9a0f06190c216025a64360c710bbf2958538f440bc253f915ee41825c6fc4ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb18b600-c23c-9252-fa95-bf83fca0a707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_psi_weight_eq_closed_atoms (t : ℝ) (ht : Real.log 2 ≤ t) :
    (∫ y in 2..Real.exp t, Chebyshev.psi y * literalXiWeight t y) =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊,
        vonMangoldt n * (-signedAtomPrimitive t n) := by
  have hX : 2 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht
  have hc := literalXiWeight_continuousOn t (Real.exp t)
  have hd : ∀ y ∈ Icc (2 : ℝ) (Real.exp t), DifferentiableAt ℝ (signedAtomPrimitive t) y := by
    intro y hy
    exact (signedAtomPrimitive_hasDerivAt t y (by linarith [hy.1])).differentiableAt
  have hi : IntegrableOn (deriv (signedAtomPrimitive t)) (Icc 2 (Real.exp t)) := by
    apply hc.integrableOn_Icc.congr_fun
    · intro y hy
      exact (signedAtomPrimitive_hasDerivAt t y (by linarith [hy.1])).deriv.symm
    · exact measurableSet_Icc
  have ha := sum_mul_eq_sub_integral_mul₁ (vonMangoldt : ℕ → ℝ)
    (by simp) (by simp) (Real.exp t) hd hi
  have hj : (∫ y in Ioc (2 : ℝ) (Real.exp t),
      deriv (signedAtomPrimitive t) y * ∑ n ∈ Finset.Icc 0 ⌊y⌋₊, vonMangoldt n) =
      ∫ y in 2..Real.exp t, Chebyshev.psi y * literalXiWeight t y := by
    rw [intervalIntegral.integral_of_le hX]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro y hy
    dsimp only
    rw [(signedAtomPrimitive_hasDerivAt t y (by linarith [hy.1])).deriv,
      ← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [signedAtomPrimitive_at_upper, zero_mul, hj, zero_sub] at ha
  have hn := congrArg Neg.neg ha
  rw [neg_neg] at hn
  calc
    _ = -(∑ n ∈ Finset.Icc 0 ⌊Real.exp t⌋₊,
        signedAtomPrimitive t n * vonMangoldt n) := hn.symm
    _ = _ := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro n _
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Varianta9a0f06190c216025a64360c710bbf2958538f440bc253f915ee41825c6fc4ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Varianta9a0f06190c216025a64360c710bbf2958538f440bc253f915ee41825c6fc4ca.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7879f686bf89ad4cad47509c82b316f2dcff9485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
