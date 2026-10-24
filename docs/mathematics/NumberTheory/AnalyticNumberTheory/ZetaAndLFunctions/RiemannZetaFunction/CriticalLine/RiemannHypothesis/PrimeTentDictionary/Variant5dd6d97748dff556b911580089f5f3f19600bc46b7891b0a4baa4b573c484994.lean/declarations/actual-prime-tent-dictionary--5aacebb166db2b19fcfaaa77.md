# actual_prime_tent_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49f4dde3-5a36-37c6-7993-c55120ed29b2",
  "kind": "theorem",
  "lexical_name": "actual_prime_tent_dictionary",
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
  "slug": "actual-prime-tent-dictionary--5aacebb166db2b19fcfaaa77",
  "source": {
    "blob": "c45ac3ca85b0481212952c834f2a1a12d246b8c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeTentDictionary/Variant5dd6d97748dff556b911580089f5f3f19600bc46b7891b0a4baa4b573c484994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aacebb166db2b19fcfaaa77e630bf4e67c28e1aadb57e74311f17c71b27a325",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeTentDictionary/Variant5dd6d97748dff556b911580089f5f3f19600bc46b7891b0a4baa4b573c484994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49f4dde3-5a36-37c6-7993-c55120ed29b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_tent_dictionary {u : ℕ} (hu : 1 ≤ u) (r : ℕ → ℝ) (M K : ℕ) :
    numerator r (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (u + j)) M K =
      (∑ j ∈ Finset.range (M + K), tent r M K (j + 1)) -
        ∑ j ∈ Finset.range (M + K),
          (if (u + j + 1).Prime then Real.log (u + j + 1 : ℕ) else 0) *
            tent r M K (j + 1) := by
  rw [numerator_eq_tent_discrepancy]
  have hstep (j : ℕ) : cumulativeDiscrepancy ordinaryPrimeCoefficient (u + (j + 1)) -
      cumulativeDiscrepancy ordinaryPrimeCoefficient (u + j) =
      (if (u + j + 1).Prime then Real.log (u + j + 1 : ℕ) else 0) - 1 := by
    rw [show u + (j + 1) = u + j + 1 by omega,
      actual_storage_step (by omega : 1 ≤ u + j),
      ordinaryPrimeCoefficient_at_source_index (by omega : 2 ≤ u + j + 1)]
  simp_rw [hstep]
  rw [← Finset.sum_neg_distrib, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- The native width in this module, with the following exact parameterization.

def nativeWidth (u j : ℕ) : ℝ := cellClock (u + j) (u + j + 1 : ℕ)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeTentDictionary/Variant5dd6d97748dff556b911580089f5f3f19600bc46b7891b0a4baa4b573c484994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeTentDictionary/Variant5dd6d97748dff556b911580089f5f3f19600bc46b7891b0a4baa4b573c484994.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45ac3ca85b0481212952c834f2a1a12d246b8c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
