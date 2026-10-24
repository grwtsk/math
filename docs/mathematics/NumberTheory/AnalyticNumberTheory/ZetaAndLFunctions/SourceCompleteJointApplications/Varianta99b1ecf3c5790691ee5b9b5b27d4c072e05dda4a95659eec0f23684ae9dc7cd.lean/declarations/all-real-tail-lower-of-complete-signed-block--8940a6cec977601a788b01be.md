# all_real_tail_lower_of_complete_signed_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96d46c36-6543-8c4a-5ae1-07bf738afdee",
  "kind": "theorem",
  "lexical_name": "all_real_tail_lower_of_complete_signed_block",
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
  "slug": "all-real-tail-lower-of-complete-signed-block--8940a6cec977601a788b01be",
  "source": {
    "blob": "fc59f959f8997e2fcf32a64e3c1584c63f22a111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianta99b1ecf3c5790691ee5b9b5b27d4c072e05dda4a95659eec0f23684ae9dc7cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8940a6cec977601a788b01be8bf68493b5fb4869e9bee79386a0f997e50263a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianta99b1ecf3c5790691ee5b9b5b27d4c072e05dda4a95659eec0f23684ae9dc7cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96d46c36-6543-8c4a-5ae1-07bf738afdee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_tail_lower_of_complete_signed_block (DX R : ℝ)
    (hx : ∀ X : ℝ, R ≤ X → completeSignedSamplingBlock X ≤ DX) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (tailAtomBudget (principalCompleteTailBudget DX R) - 3 / 8 +
            criticalBaselineCorrection (calibratedRadius R))) ≤
              sourceQuadraticValue explicitSecondDerivative A := by
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have hi : calibratedRadius (calibratedRadius R) = calibratedRadius R :=
    max_eq_right hR91
  have h := all_real_lower_of_complete_tail (principalCompleteTailBudget DX R)
    (calibratedRadius R) (complete_tail_lower_of_actual_signed_block DX R hx)
  simpa only [hi] using h

/-- The optional tail leading return uses only the common sharp valid domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianta99b1ecf3c5790691ee5b9b5b27d4c072e05dda4a95659eec0f23684ae9dc7cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianta99b1ecf3c5790691ee5b9b5b27d4c072e05dda4a95659eec0f23684ae9dc7cd.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc59f959f8997e2fcf32a64e3c1584c63f22a111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
