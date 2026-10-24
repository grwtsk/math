# integer_prefix_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3032b0b2-4ea1-069e-9291-443172c73025",
  "kind": "theorem",
  "lexical_name": "integer_prefix_integral",
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
  "slug": "integer-prefix-integral--0c7f914c9ef0a2e2351c760b",
  "source": {
    "blob": "57b5e31fa42b0d59177c632a79f12a91ab326665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variantcfcd9ef4cef99b802b17f81538826feada19d233edbb8add1b904eda118a37c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c7f914c9ef0a2e2351c760b578bcd483c6bb17a5429c59f571725f0ca1166bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variantcfcd9ef4cef99b802b17f81538826feada19d233edbb8add1b904eda118a37c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3032b0b2-4ea1-069e-9291-443172c73025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integer_prefix_integral (A : ℝ) (M : ℕ)
    (hM : vaughanCutoff A + 1 ≤ M) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.log (M : ℝ),
      actualLogColumnPrefix A s * Real.exp (-s / 2)) =
      2 * (closedCenteredHalfInventory (vaughanCutoff A) (M - 1) -
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) (M - 1),
          centeredBeta (vaughanCutoff A) n) / Real.sqrt (M : ℝ)) := by
  let U := vaughanCutoff A
  have hM0 : 0 < M := by omega
  have hn : U ≤ M - 1 := by dsimp [U]; omega
  have heq : Finset.Ico (U + 1) M = Finset.Ioc U (M - 1) := by
    ext k
    simp only [Finset.mem_Ico, Finset.mem_Ioc]
    omega
  have ht := actual_finite_log_prefix_transport A M hM
    (fun s : ℝ => Real.exp (-s / 2)) (by fun_prop)
  rw [← ht]
  have hc (k : ℕ) (hk : k ∈ Finset.Ico (U + 1) M) :
      (∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), Real.exp (-s / 2)) =
        2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ)) := by
    have hk0 : 0 < (k : ℝ) := by
      have := (Finset.mem_Ico.mp hk).1
      exact_mod_cast (show 0 < k by omega)
    rw [exp_neg_half_integral _ _ (Real.log_le_log hk0 (by linarith)),
      exp_neg_log_half _ hk0, exp_neg_log_half _ (by positivity)]
    simp
  calc
    _ = ∑ k ∈ Finset.Ico (U + 1) M,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
          (2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [hc k hk]
    _ = _ := by
      simp_rw [show ∀ k : ℕ, (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
        (2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) =
          2 * ((∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
            (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) by intro k; ring]
      rw [← Finset.mul_sum, heq, prefix_telescope U (M - 1) hn]
      simp only [Nat.sub_add_cancel hM0, mul_one_div]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variantcfcd9ef4cef99b802b17f81538826feada19d233edbb8add1b904eda118a37c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variantcfcd9ef4cef99b802b17f81538826feada19d233edbb8add1b904eda118a37c4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57b5e31fa42b0d59177c632a79f12a91ab326665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
