# remaining_lower_of_actual_finite_row_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52a989a0-c8e8-7a3d-002c-222ce4ce58ed",
  "kind": "theorem",
  "lexical_name": "remaining_lower_of_actual_finite_row_five",
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
  "slug": "remaining-lower-of-actual-finite-row-five--57d07e7e4b4b7485312a2704",
  "source": {
    "blob": "d7a1fcaba4efe95753f4dede23992e8c3c380499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d07e7e4b4b7485312a2704002f4ad261c281992ce37186ea4276aed7894991",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52a989a0-c8e8-7a3d-002c-222ce4ce58ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remaining_lower_of_actual_finite_row_five (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hrow : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualFiniteSecondReadout t| ≤ M * (t - Real.log 2)) :
    -((522 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  apply remainingAtomWork_lower_of_five_cesaro M A hM hA
  intro t ht
  rw [actualCesaroPrimitive_eq_finite_readout t ht]
  exact hrow t ht

/-- The unchanged original all-real obligation consumes this same finite-row hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7a1fcaba4efe95753f4dede23992e8c3c380499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
