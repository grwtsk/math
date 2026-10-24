# exact_matched_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf45dea7-b882-0bd2-3964-a7aea627d884",
  "kind": "theorem",
  "lexical_name": "exact_matched_mass",
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
  "slug": "exact-matched-mass--9690d047b6a09351d2be4b5b",
  "source": {
    "blob": "784969da19bd0858ed4a46d4c18371e1724f722d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9690d047b6a09351d2be4b5b12467b033e36004ee97f3eec2ee22d7d2eec71fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf45dea7-b882-0bd2-3964-a7aea627d884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_matched_mass {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ)
    (hcolumns : ∀ j, (∑ i, P i j) = 1) :
    cancelledMass P a = ∑ i, min (positiveChannel P a i) (negativeChannel P a i) := by
  have hparts : (∑ i, (positiveChannel P a i + negativeChannel P a i)) = variation a := by
    unfold positiveChannel negativeChannel variation
    simp_rw [← Finset.sum_add_distrib, ← mul_add, ← absolute_parts]
    rw [Finset.sum_comm]
    simp_rw [← Finset.sum_mul, hcolumns, one_mul]
  have hmass : variation (aggregate P a) = variation a -
      2 * ∑ i, min (positiveChannel P a i) (negativeChannel P a i) := by
    unfold variation
    simp_rw [exact_channel_signed_balance P a,
      scalar_match]
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hparts]
    rfl
  unfold cancelledMass
  rw [hmass]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784969da19bd0858ed4a46d4c18371e1724f722d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
