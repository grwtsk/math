# squareShiftDebt_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b16b8466-b68a-4fa1-31b6-2ae9ece4d11a",
  "kind": "theorem",
  "lexical_name": "squareShiftDebt_terminal",
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
  "slug": "squareshiftdebt-terminal--65930347bb2af7e6c2d01a20",
  "source": {
    "blob": "4cd99ce7b5e146e61777a66c166cf42e50757a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 148,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPortControls/Variant0f302c2c147993abd1468dcfa31fe50e927c7a729cdfcd655e1f564337acd5f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65930347bb2af7e6c2d01a2039bf0927c75c66f47dddf5bb233cd5993aac90d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPortControls/Variant0f302c2c147993abd1468dcfa31fe50e927c7a729cdfcd655e1f564337acd5f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b16b8466-b68a-4fa1-31b6-2ae9ece4d11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareShiftDebt_terminal (A : ℝ) (hA : 1 ≤ A) :
    squareShiftDebt A (2 * A) =
      4 * Real.exp A * (3 * endpointSlope A - 1 - endpointValue A) ^ 2 := by
  have hu := sourceCorrelation_upper_endpoint A (by linarith : 0 < A)
  have hw : Real.exp A ≠ 0 := (Real.exp_pos A).ne'
  unfold squareShiftDebt sourceCorrector sourceForcing affineTrend
  rw [hu]
  have ha : 2 * A / 2 = A := by ring
  rw [ha]
  field_simp
  ring

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
/-- Genuine endpoint sample bounds make the minimal square-completion debt
at least exponential. This is an obstruction to *uniformly paying that
offset*, not a counterexample to a signed arithmetic cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPortControls/Variant0f302c2c147993abd1468dcfa31fe50e927c7a729cdfcd655e1f564337acd5f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPortControls/Variant0f302c2c147993abd1468dcfa31fe50e927c7a729cdfcd655e1f564337acd5f8.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd99ce7b5e146e61777a66c166cf42e50757a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
