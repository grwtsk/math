# actual_signed_profile_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b53b5c2-ba72-77b0-9073-b538a11fe540",
  "kind": "theorem",
  "lexical_name": "actual_signed_profile_reconstruction",
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
  "slug": "actual-signed-profile-reconstruction--076a03c4826971c443475c56",
  "source": {
    "blob": "8315d94adf5d69d2bacb31c936d4af56fdef9eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 242,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076a03c4826971c443475c56bf00b9a2904751815f2f389f4632266e7fe31160",
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

Occurrence: `result:6b53b5c2-ba72-77b0-9073-b538a11fe540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_profile_reconstruction (A : ℝ) (hA : 1 ≤ A) :
    (⟪finiteProfile (originalSourceL2 A (by linarith)) (longInventory A) false false
        mangoldtCoefficient,
      reflection (finiteProfile (originalSourceL2 A (by linarith)) (longInventory A)
        false false (centeredCoefficient (vaughanCutoff A)))⟫_ℂ).re -
      centeredDeletedDiagonal A - independentMainTerm A =
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A := by
  rw [← arithmeticReadout_eq_reflected_profiles]
  exact arithmeticReadout_eq_joint A hA

/-- The old diagonal can be used only with its exact centering correction still subtracted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8315d94adf5d69d2bacb31c936d4af56fdef9eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
