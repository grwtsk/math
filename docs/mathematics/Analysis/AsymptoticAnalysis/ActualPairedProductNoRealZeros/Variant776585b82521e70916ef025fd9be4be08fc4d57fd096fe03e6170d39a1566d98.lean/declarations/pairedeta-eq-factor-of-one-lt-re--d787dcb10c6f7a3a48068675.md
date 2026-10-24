# pairedEta_eq_factor_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b5f4c5e-ebab-d054-493c-0627be8822b7",
  "kind": "theorem",
  "lexical_name": "pairedEta_eq_factor_of_one_lt_re",
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
  "slug": "pairedeta-eq-factor-of-one-lt-re--d787dcb10c6f7a3a48068675",
  "source": {
    "blob": "e00db4bfe96da2a5ece9381b609464cd6990c593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 201,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d787dcb10c6f7a3a4806867581429f8930010a7da3d2383778faf01fb6b5b033",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b5f4c5e-ebab-d054-493c-0627be8822b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pairedEta_eq_factor_of_one_lt_re
    {s : ℂ} (hs : 1 < s.re) :
    pairedEta s = etaZetaFactor s := by
  let f : ℕ → ℂ := fun n => (n : ℂ) ^ (-s)
  have hs0 : -s ≠ 0 :=
    neg_ne_zero.mpr (ne_zero_of_re_pos (zero_lt_one.trans hs))
  have hf : Summable f := by
    have h := Complex.summable_one_div_nat_cpow.mpr hs
    simpa only [f, Complex.cpow_neg, one_div] using h
  have htotal : ∑' n : ℕ, f n = riemannZeta s := by
    rw [zeta_eq_tsum_one_div_nat_cpow hs]
    apply tsum_congr
    intro n
    simp only [f, Complex.cpow_neg, one_div]
  have hzero : f 0 = 0 := by simp [f, zero_cpow hs0]
  have hevenSummable : Summable fun n : ℕ => f (2 * n) :=
    hf.comp_injective (mul_right_injective₀ (by omega : (2 : ℕ) ≠ 0))
  have hoddInjective : Function.Injective (fun n : ℕ => 2 * n + 1) := by
    intro a b h
    omega
  have hoddSummable : Summable fun n : ℕ => f (2 * n + 1) :=
    hf.comp_injective hoddInjective
  have heven :
      ∑' n : ℕ, f (2 * n) =
        (2 : ℂ) ^ (-s) * riemannZeta s := by
    calc
      ∑' n : ℕ, f (2 * n)
          = ∑' n : ℕ, (2 : ℂ) ^ (-s) * f n := by
              apply tsum_congr
              intro n
              have h2 : (0 : ℝ) ≤ 2 := by norm_num
              have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
              simp only [f, Nat.cast_mul, Nat.cast_ofNat]
              rw [← mul_cpow_ofReal_nonneg h2 hn]
      _ = (2 : ℂ) ^ (-s) * ∑' n : ℕ, f n := by
            rw [tsum_mul_left]
      _ = (2 : ℂ) ^ (-s) * riemannZeta s := by rw [htotal]
  have hevenShiftSummable : Summable fun n : ℕ => f (2 * n + 2) := by
    have h := hevenSummable.comp_injective (add_left_injective 1)
    apply h.congr
    intro n
    simp only [Function.comp_apply, Nat.mul_add, Nat.mul_one]
  have hevenShift :
      ∑' n : ℕ, f (2 * n + 2) =
        ∑' n : ℕ, f (2 * n) := by
    have h := hevenSummable.tsum_eq_zero_add
    rw [hzero, zero_add] at h
    simpa only [Nat.mul_add, Nat.mul_one] using h.symm
  have hsplit := tsum_even_add_odd hevenSummable hoddSummable
  rw [htotal, heven] at hsplit
  unfold pairedEta etaZetaFactor
  change (∑' n : ℕ, (f (2 * n + 1) - f (2 * n + 2))) = _
  rw [hoddSummable.tsum_sub hevenShiftSummable, hevenShift, heven]
  calc
    (∑' n : ℕ, f (2 * n + 1)) -
          (2 : ℂ) ^ (-s) * riemannZeta s
      = ((2 : ℂ) ^ (-s) * riemannZeta s +
          ∑' n : ℕ, f (2 * n + 1)) -
          2 * ((2 : ℂ) ^ (-s) * riemannZeta s) := by ring
    _ = riemannZeta s -
          2 * ((2 : ℂ) ^ (-s) * riemannZeta s) := by rw [hsplit]
    _ = (1 - 2 * (2 : ℂ) ^ (-s)) * riemannZeta s := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00db4bfe96da2a5ece9381b609464cd6990c593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
