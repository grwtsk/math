# pickup_abs_decay_of_mertensDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fab292b-f905-e8ae-92d5-347b10b89ff2",
  "kind": "theorem",
  "lexical_name": "pickup_abs_decay_of_mertensDecay",
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
  "slug": "pickup-abs-decay-of-mertensdecay--1b22a7dbede923a14202f79e",
  "source": {
    "blob": "55bede3243c949d4be1266489f670985bdb33070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierMertensDecayAdapter/Variantab89d60b6c78b64ac6f468b3dbfdc724c398de7e45ff911bed5199216bfc174e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b22a7dbede923a14202f79e1736d762e10dd25c6e8c2ce5f16ea5176a9d9519",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierMertensDecayAdapter/Variantab89d60b6c78b64ac6f468b3dbfdc724c398de7e45ff911bed5199216bfc174e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fab292b-f905-e8ae-92d5-347b10b89ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_abs_decay_of_mertensDecay {C c T : ℝ}
    (hC : 0 < C) (hc : 0 < c) (hM : MertensDecayBound C c)
    (hT : max 1 (16 * c ^ 2) ≤ T) {s : ℝ} (hs : s ∈ Icc 0 T) :
    |pickup s| ≤ 4 * C * Real.exp (T / 2 - c * Real.sqrt T) := by
  have hT1 : 1 ≤ T := (le_max_left _ _).trans hT
  have hTc : 16 * c ^ 2 ≤ T := (le_max_right _ _).trans hT
  have hT₀ : 0 < T := by linarith
  have hsqrt : 0 < Real.sqrt T := Real.sqrt_pos.mpr hT₀
  have hsq : Real.sqrt T ^ 2 = T := Real.sq_sqrt hT₀.le
  have hfour : 4 * c ≤ Real.sqrt T := by nlinarith
  have hcdiv : c / Real.sqrt T ≤ (1 / 4 : ℝ) := by
    apply (div_le_iff₀ hsqrt).mpr
    linarith
  let β : ℝ := 1 / 2 - c / Real.sqrt T
  have hβ₁ : (1 / 4 : ℝ) ≤ β := by dsimp [β]; linarith
  have hβ : 0 < β := by linarith
  have hCβ : 0 ≤ C / β := (div_pos hC hβ).le
  have hg (a b : ℝ) : IntervalIntegrable (fun u : ℝ => C * Real.exp (β * u)) volume a b :=
    (by fun_prop : Continuous (fun u : ℝ => C * Real.exp (β * u))).intervalIntegrable a b
  have hder (u : ℝ) : HasDerivAt (fun v : ℝ => C / β * Real.exp (β * v))
      (C * Real.exp (β * u)) u := by
    have heq : C / β * (Real.exp (β * u) * β) = C * Real.exp (β * u) := by
      calc
        _ = (C / β * β) * Real.exp (β * u) := by ring
        _ = _ := by rw [div_mul_cancel₀ _ hβ.ne']
    convert (((hasDerivAt_id u).const_mul β).exp).const_mul (C / β) using 1 <;>
      first | rfl | simpa only [id_eq, mul_one] using heq.symm
  have hint : (∫ u in (0 : ℝ)..s, C * Real.exp (β * u)) =
      C / β * (Real.exp (β * s) - 1) := by
    have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hder u) (hg 0 s)
    simpa only [mul_zero, Real.exp_zero, mul_one, mul_sub] using hi
  have hdensity : ∀ u ∈ Icc 0 s, |pickupDensity u| ≤ C * Real.exp (β * u) := by
    intro u hu
    exact pickupDensity_le_exponential_of_mertensDecay hC hc hM hT₀ hu.1 (hu.2.trans hs.2)
  have hpre : |pickup s| ≤ C / β * Real.exp (β * T) := by
    rw [pickup_eq_integral hs.1]
    calc
      _ ≤ ∫ u in (0 : ℝ)..s, |pickupDensity u| :=
        intervalIntegral.abs_integral_le_integral_abs hs.1
      _ ≤ ∫ u in (0 : ℝ)..s, C * Real.exp (β * u) :=
        intervalIntegral.integral_mono_on hs.1 (pickupDensity_intervalIntegrable 0 s).abs
          (hg 0 s) hdensity
      _ = C / β * (Real.exp (β * s) - 1) := hint
      _ ≤ C / β * Real.exp (β * s) := by nlinarith
      _ ≤ C / β * Real.exp (β * T) :=
        mul_le_mul_of_nonneg_left
          (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hs.2 hβ.le)) hCβ
  have hcoeff : C / β ≤ 4 * C := by
    apply (div_le_iff₀ hβ).mpr
    nlinarith
  have hdiv : T / Real.sqrt T = Real.sqrt T := by
    apply (div_eq_iff hsqrt.ne').mpr
    simpa only [pow_two] using hsq.symm
  have hβT : β * T = T / 2 - c * Real.sqrt T := by
    dsimp [β]
    rw [sub_mul, show c / Real.sqrt T * T = c * (T / Real.sqrt T) by ring, hdiv]
    ring
  exact hpre.trans (by
    rw [← hβT]
    exact mul_le_mul_of_nonneg_right hcoeff (Real.exp_pos _).le)

/-- Quantitative decay of the actual positive envelope on every admissible
real time, obtained without replacing the closed arithmetic recording. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierMertensDecayAdapter/Variantab89d60b6c78b64ac6f468b3dbfdc724c398de7e45ff911bed5199216bfc174e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierMertensDecayAdapter/Variantab89d60b6c78b64ac6f468b3dbfdc724c398de7e45ff911bed5199216bfc174e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55bede3243c949d4be1266489f670985bdb33070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
