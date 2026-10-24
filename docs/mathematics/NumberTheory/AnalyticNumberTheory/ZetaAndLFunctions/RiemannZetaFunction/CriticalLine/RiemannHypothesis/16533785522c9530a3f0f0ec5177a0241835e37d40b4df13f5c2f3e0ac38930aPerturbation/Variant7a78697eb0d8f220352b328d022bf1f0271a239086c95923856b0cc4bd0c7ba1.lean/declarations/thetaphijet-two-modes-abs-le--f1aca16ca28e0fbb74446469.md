# thetaPhiJet_two_modes_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d99cb49-197b-1cb6-4eff-c3aaa27e73fe",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet_two_modes_abs_le",
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
  "slug": "thetaphijet-two-modes-abs-le--f1aca16ca28e0fbb74446469",
  "source": {
    "blob": "1f216d85e137279d3b32bf2fbea49681785ddfe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/16533785522c9530a3f0f0ec5177a0241835e37d40b4df13f5c2f3e0ac38930aPerturbation/Variant7a78697eb0d8f220352b328d022bf1f0271a239086c95923856b0cc4bd0c7ba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1aca16ca28e0fbb744464698af404e1dd6ddd0895c0ef68b8d3f4e1513b320b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/16533785522c9530a3f0f0ec5177a0241835e37d40b4df13f5c2f3e0ac38930aPerturbation/Variant7a78697eb0d8f220352b328d022bf1f0271a239086c95923856b0cc4bd0c7ba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d99cb49-197b-1cb6-4eff-c3aaa27e73fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet_two_modes_abs_le (k : Fin 5) {A : ℝ} (hA : 3 ≤ A) :
    |thetaPhiJetPolynomial k A +
      4 * Real.exp (-3 * A) * thetaPhiJetPolynomial k (4 * A)| ≤
        4 * 4 ^ k.val * A ^ (k.val + 1) := by
  have hAn : 0 ≤ A := by linarith
  have he := exp_neg_three_le hA
  have hp : (4 : ℝ) ^ (k.val + 2) ≤ 4096 := by fin_cases k <;> norm_num
  have hfactor : 4 * Real.exp (-3 * A) * 4 ^ (k.val + 1) ≤ 1 := by
    calc
      _ = Real.exp (-3 * A) * 4 ^ (k.val + 2) := by simp only [pow_add]; ring
      _ ≤ (1 / 4096 : ℝ) * 4096 := mul_le_mul he hp (by positivity) (by norm_num)
      _ = _ := by norm_num
  have hsecond : |4 * Real.exp (-3 * A) * thetaPhiJetPolynomial k (4 * A)| ≤
      2 * 4 ^ k.val * A ^ (k.val + 1) := by
    rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ (4:ℝ)*Real.exp (-3*A))]
    calc
      _ ≤ (4 * Real.exp (-3*A)) * (2 * 4^k.val * (4*A)^(k.val+1)) :=
        mul_le_mul_of_nonneg_left (thetaPhiJetPolynomial_abs_le k (by linarith)) (by positivity)
      _ = (4 * Real.exp (-3*A) * 4^(k.val+1)) * (2 * 4^k.val * A^(k.val+1)) := by
        rw [mul_pow]
        ring
      _ ≤ 1 * (2 * 4^k.val * A^(k.val+1)) :=
        mul_le_mul_of_nonneg_right hfactor (by positivity)
      _ = _ := one_mul _
  have h := (abs_add_le _ _).trans (add_le_add (thetaPhiJetPolynomial_abs_le k hA) hsecond)
  nlinarith only [h]

/-- The complete Gaussian determinant perturbation is less than `300000`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/16533785522c9530a3f0f0ec5177a0241835e37d40b4df13f5c2f3e0ac38930aPerturbation/Variant7a78697eb0d8f220352b328d022bf1f0271a239086c95923856b0cc4bd0c7ba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/16533785522c9530a3f0f0ec5177a0241835e37d40b4df13f5c2f3e0ac38930aPerturbation/Variant7a78697eb0d8f220352b328d022bf1f0271a239086c95923856b0cc4bd0c7ba1.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f216d85e137279d3b32bf2fbea49681785ddfe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
