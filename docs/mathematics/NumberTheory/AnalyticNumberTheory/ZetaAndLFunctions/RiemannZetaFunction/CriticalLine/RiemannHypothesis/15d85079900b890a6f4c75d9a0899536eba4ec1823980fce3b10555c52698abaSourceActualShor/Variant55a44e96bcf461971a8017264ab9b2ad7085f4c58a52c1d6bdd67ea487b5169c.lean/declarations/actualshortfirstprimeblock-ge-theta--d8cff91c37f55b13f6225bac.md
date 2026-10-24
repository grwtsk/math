# actualShortFirstPrimeBlock_ge_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd9f9e81-3bf2-6871-fd3c-629b161d54e3",
  "kind": "theorem",
  "lexical_name": "actualShortFirstPrimeBlock_ge_theta",
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
  "slug": "actualshortfirstprimeblock-ge-theta--d8cff91c37f55b13f6225bac",
  "source": {
    "blob": "efc4e1718e9443736cf29e60a6ecd9a87fae0b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant55a44e96bcf461971a8017264ab9b2ad7085f4c58a52c1d6bdd67ea487b5169c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8cff91c37f55b13f6225bac4035d9016ebdd480914ea965b58b4e188b32e487",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant55a44e96bcf461971a8017264ab9b2ad7085f4c58a52c1d6bdd67ea487b5169c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd9f9e81-3bf2-6871-fd3c-629b161d54e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortFirstPrimeBlock_ge_theta {A : ℝ} (hA : 25600 ≤ A) :
    Chebyshev.theta (A ^ 2) / (2 * A) ≤ actualShortFirstPrimeBlock A := by
  have hp : 0 < A := by linarith
  rw [← actualShortFirstPrime_unweighted_eq_theta (by linarith : 1 ≤ A), Finset.sum_div]
  unfold actualShortFirstPrimeBlock
  apply Finset.sum_le_sum
  intro n hn
  have hnI := (Finset.mem_filter.mp hn).1
  have hnN : 2 ≤ n := (Finset.mem_Icc.mp hnI).1
  have hn0 : 0 < n := by omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hnA : (n : ℝ) ≤ A ^ 2 :=
    (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hnI).2).trans
      (Nat.floor_le (sq_nonneg A))
  have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnR
  have hsA : Real.sqrt (n : ℝ) ≤ A :=
    (Real.sqrt_le_sqrt hnA).trans_eq (Real.sqrt_sq hp.le)
  have hc := actualCorrelation_short_lower hA hnI
  have hw : 1 / (2 * A) ≤ closedPrimeWeight A n := by
    unfold closedPrimeWeight
    rw [exponentialTest_log _ _ hn0]
    apply (le_div_iff₀ hsn).2
    have hh : Real.sqrt (n : ℝ) / (2 * A) ≤ 1 / 2 := by
      apply (div_le_iff₀ (by positivity : 0 < 2 * A)).2
      linarith
    simpa only [div_eq_mul_inv, one_mul, mul_comm] using hh.trans hc
  simpa only [div_eq_mul_inv, one_mul] using
    mul_le_mul_of_nonneg_left hw (vonMangoldt_nonneg (n := n))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant55a44e96bcf461971a8017264ab9b2ad7085f4c58a52c1d6bdd67ea487b5169c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant55a44e96bcf461971a8017264ab9b2ad7085f4c58a52c1d6bdd67ea487b5169c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc4e1718e9443736cf29e60a6ecd9a87fae0b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
