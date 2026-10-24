# O2_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcd38ce1-d050-e5e2-cfa2-6bea74e56360",
  "kind": "lemma",
  "lexical_name": "O2_estimate",
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
  "slug": "o2-estimate--42692fcf23ceb82b525b18e4",
  "source": {
    "blob": "47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 290,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42692fcf23ceb82b525b18e4bcc2ddcae0d3d01699ff3631a455b6a35f0d228d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcd38ce1-d050-e5e2-cfa2-6bea74e56360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma O2_estimate (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2) (X T : ℝ) :
    |∑ n ∈ primeRange X, ∑ m ∈ primeRange X, acoef n * acoef m * Aplus Φ T (Real.log n) (Real.log m)|
      ≤ (∫ x, Φ x ^ 2) / Real.log 2 * (∑ n ∈ primeRange X, acoef n) ^ 2 := by
  have hW : 0 ≤ ∫ x, Φ x ^ 2 := integral_nonneg fun x => sq_nonneg _
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hper : ∀ n ∈ primeRange X, ∀ m ∈ primeRange X,
      |acoef n * acoef m * Aplus Φ T (Real.log n) (Real.log m)|
        ≤ acoef n * acoef m * ((∫ x, Φ x ^ 2) / Real.log 2) := by
    intro n hn m hm
    rw [abs_mul, abs_mul, abs_of_nonneg (acoef_nonneg n), abs_of_nonneg (acoef_nonneg m)]
    rcases acoef_eq_zero_or_two_le hn with h0 | hn2
    · simp [h0]
    rcases acoef_eq_zero_or_two_le hm with h0 | hm2
    · simp [h0]
    refine mul_le_mul_of_nonneg_left ?_ (mul_nonneg (acoef_nonneg n) (acoef_nonneg m))
    have hyn : Real.log 2 ≤ Real.log n := Real.log_le_log (by norm_num) (by exact_mod_cast hn2)
    have hym : Real.log 2 ≤ Real.log m := Real.log_le_log (by norm_num) (by exact_mod_cast hm2)
    have hpos : 0 < Real.log n + Real.log m := by linarith
    calc |Aplus Φ T (Real.log n) (Real.log m)|
        ≤ 2 / (Real.log n + Real.log m) * ∫ x, Φ x ^ 2 := abs_Aplus_le hΦ hΦ2 hpos
      _ ≤ 2 / (2 * Real.log 2) * ∫ x, Φ x ^ 2 := by gcongr; linarith
      _ = (∫ x, Φ x ^ 2) / Real.log 2 := by field_simp
  calc |∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
          acoef n * acoef m * Aplus Φ T (Real.log n) (Real.log m)|
      ≤ ∑ n ∈ primeRange X, |∑ m ∈ primeRange X,
          acoef n * acoef m * Aplus Φ T (Real.log n) (Real.log m)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
          |acoef n * acoef m * Aplus Φ T (Real.log n) (Real.log m)| :=
        Finset.sum_le_sum fun n _ => Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
          acoef n * acoef m * ((∫ x, Φ x ^ 2) / Real.log 2) :=
        Finset.sum_le_sum fun n hn => Finset.sum_le_sum fun m hm => hper n hn m hm
    _ = (∫ x, Φ x ^ 2) / Real.log 2 * (∑ n ∈ primeRange X, acoef n) ^ 2 := by
        rw [sq, Finset.sum_mul_sum, Finset.mul_sum]
        refine Finset.sum_congr rfl fun n _ => ?_
        rw [Finset.mul_sum]
        refine Finset.sum_congr rfl fun m _ => ?_
        ring

end Assembly

/-! ## Results consumed by PrimeSideB.lean -/

section Results

/-- **[prop:PP], first form** (§5.4, verbatim):
"𝓜[P_X,P_X] = (T/π) Σ_{n≤X} Λ(n)²/n · g(log n) + O(L²X)".
Here 𝓜[P_X,P_X] = `Mform F.Phi p.T (Zeta23.PX p.X) (Zeta23.PX p.X)` (§5.4, [eq:Pdef]).
Inputs: H-cheb [lem:cheb] and H-MV [lem:MV] (any constant), plus the taper facts `LocalHyps`.
Shape: ∃ C, for T ≥ T₀(λ, cϱ, the H-constants). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
