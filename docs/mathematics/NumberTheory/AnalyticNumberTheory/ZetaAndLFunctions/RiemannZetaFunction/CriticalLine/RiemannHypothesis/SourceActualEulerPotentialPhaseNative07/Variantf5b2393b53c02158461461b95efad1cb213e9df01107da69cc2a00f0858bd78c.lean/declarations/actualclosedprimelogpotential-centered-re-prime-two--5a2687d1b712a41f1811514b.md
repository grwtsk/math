# actualClosedPrimeLogPotential_centered_re_prime_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5af17ea2-3830-c826-56ae-a610bb00628b",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeLogPotential_centered_re_prime_two",
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
  "slug": "actualclosedprimelogpotential-centered-re-prime-two--5a2687d1b712a41f1811514b",
  "source": {
    "blob": "86adffa8125250bc734d789a3024f190843a2bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative07/Variantf5b2393b53c02158461461b95efad1cb213e9df01107da69cc2a00f0858bd78c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a2687d1b712a41f1811514b26afc6d2c46d7a8bb2ee6dba369f5a8d6b38b204",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative07/Variantf5b2393b53c02158461461b95efad1cb213e9df01107da69cc2a00f0858bd78c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5af17ea2-3830-c826-56ae-a610bb00628b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeLogPotential_centered_re_prime_two
    (A c : ℝ) (hA : 1 ≤ A) :
    (actualClosedPrimeLogPotential A ((c:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I) -
      actualClosedPrimeLogPotential A (c:ℂ)).re ≤
      -2 * Real.exp (-c * Real.log 2) := by
  have hl : Real.log (2:ℝ) ≠ 0 := (Real.log_pos (by norm_num)).ne'
  have ha : a c 2 = Real.exp (-c * Real.log 2) := by
    simp [a, ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2), hl]
  have hc : Real.cos ((Real.pi/Real.log 2) * Real.log (2:ℝ)) = -1 := by
    rw [div_mul_cancel₀ _ hl, Real.cos_pi]
  have ht := actualClosedPrimeLogPotential_re A c (Real.pi/Real.log 2)
  have hz := actualClosedPrimeLogPotential_re A c 0
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
    a c n * Real.cos ((Real.pi/Real.log 2) * Real.log n) at ht
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), a c n * Real.cos (0 * Real.log n) at hz
  simp only [Complex.ofReal_zero, zero_mul, add_zero, Real.cos_zero, mul_one] at hz
  rw [Complex.sub_re, ht, hz, ← Finset.sum_sub_distrib]
  let f : ℕ → ℝ := fun n => a c n * Real.cos ((Real.pi/Real.log 2)*Real.log n)-a c n
  have hn (n : ℕ) : f n ≤ 0 := by
    exact sub_nonpos.mpr (mul_le_of_le_one_right (a_nonneg c n) (Real.cos_le_one _))
  have he : ∑ n ∈ (Finset.range (⌊Real.exp (2*A)⌋₊+1)).erase 2, f n ≤ 0 :=
    Finset.sum_nonpos fun n _ => hn n
  have hs := Finset.sum_erase_add (Finset.range (⌊Real.exp (2*A)⌋₊+1)) f
    (two_in_closed A hA)
  change ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), f n ≤ _
  rw [← hs]
  dsimp [f] at *
  rw [ha, hc]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative07/Variantf5b2393b53c02158461461b95efad1cb213e9df01107da69cc2a00f0858bd78c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative07/Variantf5b2393b53c02158461461b95efad1cb213e9df01107da69cc2a00f0858bd78c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86adffa8125250bc734d789a3024f190843a2bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
