# logSum_eq_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d68f4562-315b-15fd-11f2-e635c1b0949a",
  "kind": "theorem",
  "lexical_name": "logSum_eq_closed",
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
  "slug": "logsum-eq-closed--bd9bc2002b65f8c6554af57a",
  "source": {
    "blob": "8bcb6bea41edae2844d0f9e548a1211f143e1103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 184,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7808e6d083934a3fd476a082b3baba8577dc7dd82d503bb5c46ed42d980f9c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd9bc2002b65f8c6554af57a07016b25e7da8315f02897654b1603eccf258925",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7808e6d083934a3fd476a082b3baba8577dc7dd82d503bb5c46ed42d980f9c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d68f4562-315b-15fd-11f2-e635c1b0949a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logSum_eq_closed (t : ℝ) (ht : 0 ≤ t) (f : ℝ → ℝ) :
    mangoldtLogSum t f = ∑ n ∈ Finset.Ioc 0 (Nat.floor (Real.exp t)),
      (vonMangoldt n : ℝ) / (n : ℝ) * f (Real.log n) := by
  have hz : mangoldtLogSum 0 f = 0 := by
    simp [mangoldtLogSum, primePowerInventory]
  have hw := mangoldtLogWindow_eq_interval_sum 0 t (by norm_num) ht f
  rw [mangoldtLogWindow, hz, sub_zero, Real.exp_zero] at hw
  norm_num at hw
  rw [hw]
  apply Finset.sum_subset
  · intro n hn
    simp only [Finset.mem_Ioc] at *
    omega
  · intro n hn hnnot
    have hn' := Finset.mem_Ioc.mp hn
    have hn1 : n = 1 := by
      simp only [Finset.mem_Ioc, not_and, not_le] at hnnot
      omega
    subst n
    simp

/-- The one-damping test is the unchanged full closed Chebyshev prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7808e6d083934a3fd476a082b3baba8577dc7dd82d503bb5c46ed42d980f9c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7808e6d083934a3fd476a082b3baba8577dc7dd82d503bb5c46ed42d980f9c75.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bcb6bea41edae2844d0f9e548a1211f143e1103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
