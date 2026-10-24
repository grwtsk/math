# hasDerivAt_Gammaℝ_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:512e6d4e-8320-5f21-7149-108bdc182920",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_Gammaℝ_one",
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
  "slug": "hasderivat-gamma-one--4d7fb00d304d45fcb2b029aa",
  "source": {
    "blob": "f0c52719ee8db7a33e2c399748d854dd5b12ab6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 214,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d7fb00d304d45fcb2b029aa4c56ff6a1c79f3ff558066186cfea2e9ebbdafaa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:512e6d4e-8320-5f21-7149-108bdc182920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_Gammaℝ_one : HasDerivAt Gammaℝ (-(γ + log (4 * π)) / 2) 1 := by
  let f (s : ℂ) : ℂ := π ^ (-s / 2)
  let g (s : ℂ) : ℂ := Gamma (s / 2)
  have aux : (π : ℂ) ^ (1 / 2 : ℂ) = ↑√π := by
    rw [Real.sqrt_eq_rpow, ofReal_cpow Real.pi_pos.le, ofReal_div, ofReal_one, ofReal_ofNat]
  have aux2 : (√π : ℂ) ≠ 0 := by rw [ofReal_ne_zero]; positivity
  have hf : HasDerivAt f (-log π / 2 / √π) 1 := by
    have := ((hasDerivAt_neg (1 : ℂ)).div_const 2).const_cpow (c := π) (Or.inr (by norm_num))
    refine this.congr_deriv ?_
    rw [mul_assoc, ← mul_div_assoc, mul_neg_one, neg_div, cpow_neg, ← div_eq_inv_mul, aux]
  have hg : HasDerivAt g (-√π * (γ + 2 * log 2) / 2) 1 := by
    have := hasDerivAt_Gamma_one_half.comp 1 (?_ : HasDerivAt (fun s : ℂ ↦ s / 2) (1 / 2) 1)
    · rwa [mul_one_div] at this
    · exact (hasDerivAt_id _).div_const _
  refine HasDerivAt.congr_deriv (hf.mul hg) ?_
  simp only [f]
  rw [Gamma_one_half_eq, aux, div_mul_cancel₀ _ aux2, neg_div _ (1 : ℂ), cpow_neg, aux,
    mul_div_assoc, ← mul_assoc, mul_neg, inv_mul_cancel₀ aux2, neg_one_mul, ← neg_div,
    ← _root_.add_div, ← neg_add, add_comm, add_assoc, ← ofReal_log Real.pi_pos.le, ← ofReal_ofNat,
    ← ofReal_log zero_le_two,
    ← ofReal_mul, ← Nat.cast_ofNat (R := ℝ), ← Real.log_pow, ← ofReal_add,
    ← Real.log_mul (by positivity) (by positivity),
    Nat.cast_ofNat, ofReal_ofNat, ofReal_log (by positivity)]
  norm_num

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c52719ee8db7a33e2c399748d854dd5b12ab6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
