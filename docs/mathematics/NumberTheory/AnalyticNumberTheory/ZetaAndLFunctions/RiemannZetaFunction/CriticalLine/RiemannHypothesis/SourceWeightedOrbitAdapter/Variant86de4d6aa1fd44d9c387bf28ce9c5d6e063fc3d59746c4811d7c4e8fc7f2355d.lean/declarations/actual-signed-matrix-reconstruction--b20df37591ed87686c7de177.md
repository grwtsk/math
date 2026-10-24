# actual_signed_matrix_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eff8cf2f-b2c2-a610-515d-7590843294f9",
  "kind": "theorem",
  "lexical_name": "actual_signed_matrix_reconstruction",
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
  "slug": "actual-signed-matrix-reconstruction--b20df37591ed87686c7de177",
  "source": {
    "blob": "8315d94adf5d69d2bacb31c936d4af56fdef9eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 386,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b20df37591ed87686c7de1778652e018440dc559cdb0e70940df921029236e3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eff8cf2f-b2c2-a610-515d-7590843294f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_matrix_reconstruction (A : ℝ) (hA : 1 ≤ A) :
    (∑ i, ∑ j, star (mangoldtCoordinates (longInventory A) i) *
      centeredCoordinates (vaughanCutoff A) (longInventory A) j *
      reflectedMatrix (originalSourceL2 A (by linarith)) (longInventory A) i j).re -
      centeredDeletedDiagonal A - independentMainTerm A =
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A := by
  rw [← arithmeticReadout_eq_reflected_matrix]
  exact arithmeticReadout_eq_joint A hA

end FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8315d94adf5d69d2bacb31c936d4af56fdef9eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
