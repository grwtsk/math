# weighted_difference_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b275da6-c925-1429-9be2-dfcedaa3b331",
  "kind": "theorem",
  "lexical_name": "weighted_difference_abel",
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
  "slug": "weighted-difference-abel--140f479ed62df3e3dba7261c",
  "source": {
    "blob": "ab79fc8f41264567f32b4d0cfd52227cabf3fe74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:140f479ed62df3e3dba7261c638b965f188278e5e989a0b1077917aea059f616",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b275da6-c925-1429-9be2-dfcedaa3b331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_difference_abel (N : ℕ) :
    weightedMangoldt N - weightedPrime N =
      (Chebyshev.psi N - Chebyshev.theta N) / (N : ℝ) +
        ∫ x in Set.Ioc 1 (N : ℝ), (Chebyshev.psi x - Chebyshev.theta x) / x ^ 2 := by
  have hd (x : ℝ) (hx : x ∈ Set.Icc 1 (N : ℝ)) :
      deriv (fun t : ℝ => t⁻¹) x = -(x ^ 2)⁻¹ :=
    (hasDerivAt_inv (by linarith [hx.1] : x ≠ 0)).deriv
  have hi : IntegrableOn (deriv (fun t : ℝ => t⁻¹)) (Set.Icc 1 (N : ℝ)) := by
    have hc : ContinuousOn (fun x : ℝ => -(x ^ 2)⁻¹) (Set.Icc 1 (N : ℝ)) :=
      ((continuousOn_id.pow 2).inv₀
        (by intro x hx; exact pow_ne_zero 2 (by linarith [hx.1] : x ≠ 0))).neg
    exact hc.integrableOn_Icc.congr_fun (fun x hx => (hd x hx).symm) measurableSet_Icc
  have ha := sum_mul_eq_sub_integral_mul₀ properPowerCoefficient
    (by simp [properPowerCoefficient, primeCoefficient]) (N : ℝ)
    (f := fun t : ℝ => t⁻¹)
    (fun t ht => (hasDerivAt_inv (by linarith [ht.1] : t ≠ 0)).differentiableAt) hi
  have hpN := properPower_prefix (N : ℝ)
  rw [Nat.floor_natCast] at hpN
  rw [Nat.floor_natCast, hpN] at ha
  have hsum : (∑ k ∈ Icc 0 N, (k : ℝ)⁻¹ * properPowerCoefficient k) =
      weightedMangoldt N - weightedPrime N := by
    rw [weighted_difference, Finset.Icc_eq_cons_Ioc (Nat.zero_le N), Finset.sum_cons]
    · simp only [Nat.cast_zero, inv_zero, zero_mul, zero_add]
      apply Finset.sum_congr rfl
      intro k hk
      ring
  rw [hsum] at ha
  have hint : (∫ t in Set.Ioc 1 (N : ℝ),
      deriv (fun t : ℝ => t⁻¹) t * ∑ k ∈ Icc 0 ⌊t⌋₊, properPowerCoefficient k) =
      -(∫ t in Set.Ioc 1 (N : ℝ), (Chebyshev.psi t - Chebyshev.theta t) / t ^ 2) := by
    rw [← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t ht
    dsimp only
    rw [hd t ⟨ht.1.le, ht.2⟩, properPower_prefix]
    ring
  rw [hint] at ha
  simpa only [sub_neg_eq_add, div_eq_mul_inv, mul_comm] using ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab79fc8f41264567f32b4d0cfd52227cabf3fe74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
