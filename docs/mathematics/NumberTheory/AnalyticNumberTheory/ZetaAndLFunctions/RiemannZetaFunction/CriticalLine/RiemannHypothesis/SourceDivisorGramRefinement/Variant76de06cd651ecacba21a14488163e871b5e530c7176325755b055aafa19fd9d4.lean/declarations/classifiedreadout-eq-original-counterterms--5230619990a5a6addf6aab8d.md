# classifiedReadout_eq_original_counterterms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:890342ed-ea15-8288-6dc3-44eba5ff12a0",
  "kind": "theorem",
  "lexical_name": "classifiedReadout_eq_original_counterterms",
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
  "slug": "classifiedreadout-eq-original-counterterms--5230619990a5a6addf6aab8d",
  "source": {
    "blob": "6858c9995665fcfb7d4de64aeabbb56c04995704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 389,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorGramRefinement/Variant76de06cd651ecacba21a14488163e871b5e530c7176325755b055aafa19fd9d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5230619990a5a6addf6aab8d7d4e473cf9f241cd09476c009a8d2d478648e8c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorGramRefinement/Variant76de06cd651ecacba21a14488163e871b5e530c7176325755b055aafa19fd9d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:890342ed-ea15-8288-6dc3-44eba5ff12a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classifiedReadout_eq_original_counterterms (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    classifiedReadout A hA S =
      (∑ p ∈ patternImage (longInventory A) S,
        ∑ r ∈ patternImage (longInventory A) S,
          reflectedSectorBlock (originalSourceL2 A (by linarith)) (longInventory A) S p r
            (mangoldtCoordinates (longInventory A))
            (centeredCoordinates (vaughanCutoff A) (longInventory A))).re -
        (typeTwoDiagonal A + alpha (vaughanCutoff A) * deletedDiagonalMean A) -
        (globalBaseline A + ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
          realMoebius d * divisorCounterterm A d) := by
  unfold classifiedReadout
  rw [centeredDeletedDiagonal_eq_old_diagonal_add_centering,
    independentMainTerm_eq_baseline_add_divisors]

/-- Classification reconstructs the full signed divisor remainder and its global baseline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorGramRefinement/Variant76de06cd651ecacba21a14488163e871b5e530c7176325755b055aafa19fd9d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorGramRefinement/Variant76de06cd651ecacba21a14488163e871b5e530c7176325755b055aafa19fd9d4.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6858c9995665fcfb7d4de64aeabbb56c04995704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
