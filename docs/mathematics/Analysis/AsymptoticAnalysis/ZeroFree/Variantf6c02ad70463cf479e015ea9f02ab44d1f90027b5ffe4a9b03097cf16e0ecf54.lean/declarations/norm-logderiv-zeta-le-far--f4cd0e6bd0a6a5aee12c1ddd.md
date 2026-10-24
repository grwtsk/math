# norm_logDeriv_zeta_le_far

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 532,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c7e1d4a-b5c3-ac74-c467-bf6b4880e601",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7eb4828-5701-f04f-69cc-b1d50f7e7106",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_zeta_le_far",
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
  "slug": "norm-logderiv-zeta-le-far--f4cd0e6bd0a6a5aee12c1ddd",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 532,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4cd0e6bd0a6a5aee12c1ddd35e71895715d63c80516c148d271bfe507cf55c9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7eb4828-5701-f04f-69cc-b1d50f7e7106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_zeta_le_far : ∃ M : ℝ, 0 ≤ M ∧ ∀ w : ℂ, 3 / 2 ≤ w.re →
    ‖logDeriv riemannZeta w‖ ≤ M := by
  set a : ℕ → ℂ := fun n => ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) with ha
  have hsum : Summable (fun n : ℕ => ‖LSeries.term a ((3 / 2 : ℝ) : ℂ) n‖) := by
    have h := ArithmeticFunction.LSeriesSummable_vonMangoldt (s := ((3 / 2 : ℝ) : ℂ))
      (by simp only [Complex.ofReal_re]; norm_num)
    exact summable_norm_iff.mpr h
  refine ⟨∑' n : ℕ, ‖LSeries.term a ((3 / 2 : ℝ) : ℂ) n‖, tsum_nonneg fun _ => norm_nonneg _,
    fun w hw => ?_⟩
  have hre1 : 1 < w.re := by linarith
  have h1 : logDeriv riemannZeta w = -LSeries a w := by
    have h2 := ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hre1
    rw [logDeriv, Pi.div_apply, ha, h2]; ring
  have hle : ∀ n : ℕ, ‖LSeries.term a w n‖ ≤ ‖LSeries.term a ((3 / 2 : ℝ) : ℂ) n‖ := by
    intro n
    rcases Nat.eq_zero_or_pos n with h0 | hn
    · simp [h0, LSeries.term_zero]
    rw [LSeries.norm_term_eq, LSeries.norm_term_eq]
    simp only [hn.ne', if_false, Complex.ofReal_re]
    apply div_le_div_of_nonneg_left (norm_nonneg _) (by positivity)
    exact Real.rpow_le_rpow_of_exponent_le (by exact_mod_cast hn) hw
  have hsum' : Summable (fun n : ℕ => ‖LSeries.term a w n‖) :=
    Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hle hsum
  rw [h1, norm_neg, LSeries]
  calc ‖∑' n, LSeries.term a w n‖ ≤ ∑' n, ‖LSeries.term a w n‖ := norm_tsum_le_tsum_norm hsum'
    _ ≤ ∑' n, ‖LSeries.term a ((3 / 2 : ℝ) : ℂ) n‖ := hsum'.tsum_le_tsum hle hsum

/-- ‖ξ′/ξ(w)‖ ≤ C log(2 + |w|) for Re w ≥ 3/2  (ξ′/ξ = Γℝ′/Γℝ + 1/w + 1/(w−1) + ζ′/ζ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
