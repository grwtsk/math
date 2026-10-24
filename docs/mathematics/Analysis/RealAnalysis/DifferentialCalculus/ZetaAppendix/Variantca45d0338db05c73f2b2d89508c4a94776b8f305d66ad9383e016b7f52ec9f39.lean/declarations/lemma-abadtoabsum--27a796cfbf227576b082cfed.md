# lemma_abadtoabsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1950,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01b81d8b-a9ac-d83f-b1fc-bda3923d6e22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b3d700b-e32b-2c0a-f143-af88661337a3",
  "kind": "theorem",
  "lexical_name": "lemma_abadtoabsum",
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
  "slug": "lemma-abadtoabsum--27a796cfbf227576b082cfed",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2023,
    "line": 1950,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a796cfbf227576b082cfedcbaa6016fcf8b0f7d04ed7c580c0ed0be9f36c17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b3d700b-e32b-2c0a-f143-af88661337a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1950–2023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_abadtoabsum {a b : ℝ} (ha : 0 < a) (hb' : b.IsHalfInteger) (hab : b > a) {s : ℂ}
    (hs1 : s ≠ 1) (hsigma : 0 < s.re) :
    ∃ E, ∑ n ∈ Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) = -∑ n ∈ Ioc ⌊a⌋₊ ⌊b⌋₊,
      (n : ℂ) ^ (-s) + riemannZeta s + (b ^ (1 - s) : ℂ) / (1 - s) + E ∧
      ‖E‖ ≤ ‖s‖ / (2 * s.re * (b ^ s.re : ℝ)) := by
  have hb_pos : 0 < b := ha.trans hab
  have hmac := lemma_abadeulmac hb_pos hb' hs1 hsigma
  let E := s * ∫ y in Set.Ioi b, (Int.fract y - 1 / 2 : ℂ) * ((y : ℂ) ^ (-(s + 1)))
  refine ⟨E, ?_, ?_⟩
  · have hfinset : (Icc 1 ⌊b⌋₊ : Finset ℕ) = Finset.Icc 1 ⌊a⌋₊ ∪ Ioc ⌊a⌋₊ ⌊b⌋₊ := by
      ext n; simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
      refine ⟨fun ⟨h1, hn⟩ ↦ ?_, fun h ↦ ?_⟩
      · by_cases hn' : n ≤ ⌊a⌋₊
        · exact Or.inl ⟨h1, hn'⟩
        · exact Or.inr ⟨Nat.lt_of_not_le hn', hn⟩
      · rcases h with ⟨h1, hn⟩ | ⟨hn1, hn2⟩
        · exact ⟨h1, hn.trans <| Nat.floor_mono hab.le⟩
        · exact ⟨by omega, hn2⟩
    have hdisjoint : Disjoint (Finset.Icc 1 ⌊a⌋₊) (Ioc ⌊a⌋₊ ⌊b⌋₊) :=
      disjoint_left.mpr fun x hx₁ hx₂ ↦ by simp only [Finset.mem_Icc] at hx₁; simp only [Finset.mem_Ioc] at hx₂; omega
    rw [hfinset, sum_union hdisjoint] at hmac
    linear_combination' hmac
  · have h_integral_bound : ‖∫ y in Set.Ioi b, (Int.fract y - 1 / 2 : ℂ) * ((y : ℂ) ^ (-(s + 1)))‖ ≤
        (1 / 2) * (1 / (s.re * b ^ s.re)) := by
      have hstep1 : ‖∫ y in Set.Ioi b, (Int.fract y - 1 / 2 : ℂ) * ((y : ℂ) ^ (-(s + 1)))‖ ≤
          ∫ y in Set.Ioi b, ‖(Int.fract y - 1 / 2 : ℂ) * ((y : ℂ) ^ (-(s + 1)))‖ :=
        norm_integral_le_integral_norm _
      have : ∫ y in Set.Ioi b, ‖(Int.fract y - 1 / 2 : ℂ) * ((y : ℂ) ^ (-(s + 1)))‖ ≤
          ∫ y in Set.Ioi b, (1 / 2 : ℝ) * (y : ℝ) ^ (-(s.re + 1)) := by
        apply integral_mono_of_nonneg (Filter.Eventually.of_forall fun _ ↦ norm_nonneg _)
          ((integrableOn_Ioi_rpow_of_lt (by linarith) hb_pos).const_mul _) _
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
        simp only [norm_mul, norm_cpow_eq_rpow_re_of_pos (hb_pos.trans hy), neg_add_rev, add_re,
          neg_re, one_re]
        apply mul_le_mul_of_nonneg_right _ (rpow_nonneg (hb_pos.trans hy).le _)
        rw [norm_sub_rev]
        have hfract_bound : ‖(1 / 2 : ℂ) - ↑(Int.fract y)‖ ≤ 1 / 2 := by
          have : (1 / 2 : ℂ) - ↑(Int.fract y) = ↑((1 / 2 : ℝ) - (Int.fract y : ℝ)) := by
            simp only [ofReal_sub, ofReal_div, ofReal_one, ofReal_ofNat]
          rw [this, norm_real, norm_eq_abs, abs_le]
          constructor <;> linarith [Int.fract_nonneg y, Int.fract_lt_one y]
        exact hfract_bound
      have : ∫ y in Set.Ioi b, (1 / 2 : ℝ) * (y : ℝ) ^ (-(s.re + 1)) =
          (1 / 2) * (1 / (s.re * b ^ s.re)) := by
        rw [integral_const_mul, integral_Ioi_rpow_of_lt (by linarith : -(s.re + 1) < -1) hb_pos]
        have : -(s.re + 1) + 1 = -s.re := by ring
        have : b ^ (-s.re) = (b ^ s.re)⁻¹ := rpow_neg hb_pos.le s.re
        aesop
      linarith
    calc ‖E‖ = ‖s‖ * ‖∫ y in Set.Ioi b, (Int.fract y - 1 / 2 : ℂ) * ((y : ℂ) ^ (-(s + 1)))‖ := by simp only [E, norm_mul]
      _ ≤ ‖s‖ * ((1 / 2) * (1 / (s.re * b ^ s.re))) := mul_le_mul_of_nonneg_left h_integral_bound (norm_nonneg _)
      _ = ‖s‖ / (2 * s.re * b ^ s.re) := by ring

@[blueprint
  "lem:abadusepoisson"
  (title := "Poisson summation for a partial sum of $\\zeta(s)$")
  (statement := /--
Let $a,b\in \mathbb{R}\setminus \mathbb{Z}$, $b>a>0$. Let $s\in \mathbb{C}\setminus \{1\}$.
Define $f:\mathbb{R}\to\mathbb{C}$ by $f(y) = 1_{[a,b]}(y)/y^s$. Then
$$\sum_{a < n\leq b} \frac{1}{n^s} = \frac{b^{1-s} - a^{1-s}}{1-s}
  + \lim_{N\to \infty} \sum_{n=1}^N (\widehat{f}(n) + \widehat{f}(-n)).$$
-/)
  (proof := /--
Since $a\notin \mathbb{Z}$, $\sum_{a < n\leq b} \frac{1}{n^s} = \sum_{n\in \mathbb{Z}} f(n)$.
By Poisson summation (as in \cite[Thm.~D.3]{MR2378655})
$$\sum_{n\in \mathbb{Z}} f(n) = \lim_{N\to \infty} \sum_{n=-N}^N \widehat{f}(n) =
\widehat{f}(0) + \lim_{N\to \infty} \sum_{n=1}^N (\widehat{f}(n) + \widehat{f}(-n)),$$
where we use the facts that $f$ is in $L^1$, of bounded variation, and
(by $a,b\not\in \mathbb{Z}$) continuous at every integer. Now
$$\widehat{f}(0) = \int_{\mathbb{R}} f(y) dy
  = \int_a^b \frac{dy}{y^s} = \frac{b^{1-s}-a^{1-s}}{1-s}.$$
-/)
  (latexEnv := "lemma")
  (discussion := 568)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L1950).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
