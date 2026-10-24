# spectralSection_strip_necessary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3735b21edaa58b0279d9d7b931f6867c704346f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f066dcff-c07f-3372-b62a-d2b98fb27342",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c569559f-f4ff-e695-65b0-38676577ab1c",
  "kind": "theorem",
  "lexical_name": "spectralSection_strip_necessary",
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
  "slug": "spectralsection-strip-necessary--f58200301c395093ac2957a5",
  "source": {
    "blob": "3735b21edaa58b0279d9d7b931f6867c704346f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58200301c395093ac2957a5d9c26d35ea235e59053424f4988c724b3e47185e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c569559f-f4ff-e695-65b0-38676577ab1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralSection_strip_necessary (n : ℕ) (hn : 2 ≤ n) (δ : ℝ) (hδ : 0 ≤ δ)
    (hstrip : ∀ z : ℂ, spectralSection (n + 2) z = 0 → z.im ^ 2 ≤ δ) :
    coefficient (n + 1) < 5 * (n + 2 : ℕ) * δ * coefficient (n + 2) := by
  let s := (sectionPolynomial (n + 2)).roots
  have hcard : s.card = n + 2 := by
    change (sectionPolynomial (n + 2)).roots.card = n + 2
    rw [Polynomial.splits_iff_card_roots.mp (IsAlgClosed.splits _),
      sectionPolynomial_natDegree]
  let A : ℝ := coefficient (n + 1) / coefficient (n + 2)
  have hsum : s.sum.re = -A := by
    have h := sectionPolynomial_roots_sum (n + 1)
    change s.sum = -((A : ℝ) : ℂ) at h
    rw [h, Complex.neg_re, Complex.ofReal_re]
  have hpair (w : ℂ) (hw : w ∈ s) :
      w.re ^ 2 + 4 * δ * w.re - 4 * δ ^ 2 ≤ (w ^ 2).re := by
    obtain ⟨z, hz⟩ := IsAlgClosed.exists_pow_nat_eq (-w) (by norm_num : 0 < (2 : ℕ))
    have hzw : -z ^ 2 = w := by rw [hz, neg_neg]
    have hp : spectralSection (n + 2) z = 0 := by
      rw [← sectionPolynomial_eval, hzw]
      exact Polynomial.isRoot_of_mem_roots hw
    have him := hstrip z hp
    have hid : (w ^ 2).re - (w.re ^ 2 + 4 * δ * w.re - 4 * δ ^ 2) =
        4 * (z.re ^ 2 + δ) * (δ - z.im ^ 2) := by
      rw [← hzw]
      simp only [pow_two, Complex.mul_re, Complex.mul_im, Complex.neg_re, Complex.neg_im]
      ring
    have hh : 0 ≤ 4 * (z.re ^ 2 + δ) * (δ - z.im ^ 2) :=
      mul_nonneg (by positivity) (sub_nonneg.mpr him)
    linarith
  have hlow := sum_strip_lower s δ hpair
  have hcs := multiset_cs (s.map Complex.re)
  rw [Multiset.card_map, ← re_multiset_sum, hsum, hcard, Multiset.map_map] at hcs
  have hneg := sectionPolynomial_roots_square_sum_re_neg n hn
  change ((s.map (· ^ 2)).sum).re < 0 at hneg
  rw [hsum, hcard] at hlow
  let B : ℝ := (n + 2 : ℕ) * δ
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hA : 0 < A := div_pos
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 1))
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2))
  have hquad : A ^ 2 < 4 * B * A + 4 * B ^ 2 := by
    have hh := mul_lt_mul_of_pos_left (hlow.trans_lt hneg)
      (by positivity : (0 : ℝ) < (n + 2 : ℕ))
    dsimp [B]
    dsimp only [Function.comp_def] at hcs
    nlinarith
  have hAB : A < 5 * B := by
    by_contra! hab
    have hh := mul_nonneg (sub_nonneg.mpr hab) (show 0 ≤ A + B by positivity)
    nlinarith [sq_nonneg B]
  have hapos := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2)
  have hh := (div_lt_iff₀ hapos).mp hAB
  simpa [A, B, mul_assoc] using hh

end
end FormalResearch.RiemannHypothesis.XiSectionObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3735b21edaa58b0279d9d7b931f6867c704346f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
