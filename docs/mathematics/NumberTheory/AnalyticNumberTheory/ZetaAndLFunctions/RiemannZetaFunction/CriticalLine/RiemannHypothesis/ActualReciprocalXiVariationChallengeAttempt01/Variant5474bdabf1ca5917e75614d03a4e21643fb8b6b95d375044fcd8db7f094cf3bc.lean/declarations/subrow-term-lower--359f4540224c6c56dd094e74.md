# subrow_term_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8cbf100-ca5d-fee6-6cfa-a61ad5a3a63a",
  "kind": "theorem",
  "lexical_name": "subrow_term_lower",
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
  "slug": "subrow-term-lower--359f4540224c6c56dd094e74",
  "source": {
    "blob": "2e2f75cc9d8641e67597b3aaf2ab649c93d9a776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt01/Variant5474bdabf1ca5917e75614d03a4e21643fb8b6b95d375044fcd8db7f094cf3bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:359f4540224c6c56dd094e742fc430146689919214b8127c957a0698cc8475e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt01/Variant5474bdabf1ca5917e75614d03a4e21643fb8b6b95d375044fcd8db7f094cf3bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8cbf100-ca5d-fee6-6cfa-a61ad5a3a63a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem subrow_term_lower {q m : ℕ} (hq : 2 ≤ q)
    (hm : m ∈ Finset.Icc q (2 * q)) :
    Real.log (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ) ≤
      Real.log (m : ℝ) * actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m := by
  have hq0 : 0 < (q : ℝ) := by exact_mod_cast (show 0 < q by omega)
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (show 0 < m by
    have := (Finset.mem_Icc.mp hm).1
    omega)
  have hN0 : 0 < ((8 * q : ℕ) : ℝ) := by positivity
  have hsm := Real.sq_sqrt (Nat.cast_nonneg m)
  have hsN := Real.sq_sqrt (Nat.cast_nonneg (8 * q))
  have hm2 : (m : ℝ) ≤ 2 * (q : ℝ) := by
    exact_mod_cast (Finset.mem_Icc.mp hm).2
  have hr : 2 * Real.sqrt (m : ℝ) ≤ Real.sqrt ((8 * q : ℕ) : ℝ) := by
    push_cast at hsN
    nlinarith [Real.sqrt_nonneg (m : ℝ), Real.sqrt_nonneg ((8 * q : ℕ) : ℝ)]
  have hd : 2 / Real.sqrt ((8 * q : ℕ) : ℝ) ≤ 1 / Real.sqrt (m : ℝ) := by
    apply (div_le_div_iff₀ (Real.sqrt_pos.2 hN0) (Real.sqrt_pos.2 hm0)).2
    simpa only [one_mul] using hr
  have hk : 1 / Real.sqrt ((8 * q : ℕ) : ℝ) ≤
      actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m := by
    unfold actualClosedXiAtomKernel
    linarith
  have hl := Real.log_le_log hq0
    (show (q : ℝ) ≤ (m : ℝ) by exact_mod_cast (Finset.mem_Icc.mp hm).1)
  rw [div_eq_mul_inv, ← one_div]
  exact mul_le_mul hl hk (by positivity)
    (Real.log_nonneg (by exact_mod_cast (show 1 ≤ m by omega)))

/-- A complete closed positive logarithmic subrow forces the actual unit weight to grow. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt01/Variant5474bdabf1ca5917e75614d03a4e21643fb8b6b95d375044fcd8db7f094cf3bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt01/Variant5474bdabf1ca5917e75614d03a4e21643fb8b6b95d375044fcd8db7f094cf3bc.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2f75cc9d8641e67597b3aaf2ab649c93d9a776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
