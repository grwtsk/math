# actualShortMangoldtBlock_ge_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d97e7a61-6e74-84b7-478b-6ed0b1a138de",
  "kind": "theorem",
  "lexical_name": "actualShortMangoldtBlock_ge_psi",
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
  "slug": "actualshortmangoldtblock-ge-psi--234327c721bcad0ddc5b9567",
  "source": {
    "blob": "387e89f58db44b4dc83e910e180ff0c35e837b1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:234327c721bcad0ddc5b9567359eae48a2d3d07b8bb1f0db77b131152d8d1c6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d97e7a61-6e74-84b7-478b-6ed0b1a138de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortMangoldtBlock_ge_psi {A : ℝ} (hA : 25600 ≤ A) :
    Chebyshev.psi (A ^ 2) / (2 * A) ≤ actualShortMangoldtBlock A := by
  have hp : 0 < A := by linarith
  have hU1 : 1 ≤ A := by linarith
  rw [← actualShortMangoldt_unweighted_eq_psi hU1, Finset.sum_div]
  unfold actualShortMangoldtBlock
  apply Finset.sum_le_sum
  intro n hn
  have hn0 : 0 < n := by have := (Finset.mem_Icc.mp hn).1; omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hnA : (n : ℝ) ≤ A ^ 2 :=
    (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans
      (Nat.floor_le (sq_nonneg A))
  have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnR
  have hsA : Real.sqrt (n : ℝ) ≤ A := by
    exact (Real.sqrt_le_sqrt hnA).trans_eq (Real.sqrt_sq hp.le)
  have hc := actualCorrelation_short_lower hA hn
  have hw : 1 / (2 * A) ≤ closedPrimeWeight A n := by
    unfold closedPrimeWeight
    rw [exponentialTest_log _ _ hn0]
    apply (le_div_iff₀ hsn).2
    have hh : Real.sqrt (n : ℝ) / (2 * A) ≤ 1 / 2 := by
      apply (div_le_iff₀ (by positivity : 0 < 2 * A)).2
      linarith
    exact hh.trans hc
  simpa only [div_eq_mul_inv] using
    mul_le_mul_of_nonneg_left hw (vonMangoldt_nonneg (n := n))

/-- Genuine actual PNT supplies a real threshold for the closed square-scale psi lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `387e89f58db44b4dc83e910e180ff0c35e837b1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
