# square_map_not_real_axis_reflecting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b2cb2a6-cbb9-e0ca-0b43-e81150c3f967",
  "kind": "theorem",
  "lexical_name": "square_map_not_real_axis_reflecting",
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
  "slug": "square-map-not-real-axis-reflecting--4ae18e1edaf035dca39be01e",
  "source": {
    "blob": "d4d02e4985a3a8444750f9a96b3811b19a945536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ae18e1edaf035dca39be01e9178951aadcf086fb321d74a084cf26702504e58",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b2cb2a6-cbb9-e0ca-0b43-e81150c3f967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_map_not_real_axis_reflecting :
    ¬ RealAxisReflection (fun z => hostileSource.eval z) squareMap := by
  intro h
  have hi : (squareMap Complex.I).im = 0 := by simp [squareMap]
  exact hostileSource_nonreal_zero.2 (h Complex.I hostileSource_nonreal_zero.1 hi)

end ContinuousResearch.SourceRecognition


set_option pp.universes true
set_option pp.fullNames true
#print ContinuousResearch.SourceRecognition.symmetric_charpoly_zero_real
#print axioms ContinuousResearch.SourceRecognition.symmetric_charpoly_zero_real
#print ContinuousResearch.SourceRecognition.hermitian_charpoly_zero_real
#print axioms ContinuousResearch.SourceRecognition.hermitian_charpoly_zero_real
#print ContinuousResearch.SourceRecognition.ZeroTransport
#print axioms ContinuousResearch.SourceRecognition.ZeroTransport
#print ContinuousResearch.SourceRecognition.RealAxisReflection
#print axioms ContinuousResearch.SourceRecognition.RealAxisReflection
#print ContinuousResearch.SourceRecognition.Recognition
#print axioms ContinuousResearch.SourceRecognition.Recognition
#print ContinuousResearch.SourceRecognition.recognition_transfers_real_zeros
#print axioms ContinuousResearch.SourceRecognition.recognition_transfers_real_zeros
#print ContinuousResearch.SourceRecognition.exact_comparison_zero_transport
#print axioms ContinuousResearch.SourceRecognition.exact_comparison_zero_transport
#print ContinuousResearch.SourceRecognition.recognition_of_exact_comparison
#print axioms ContinuousResearch.SourceRecognition.recognition_of_exact_comparison
#print ContinuousResearch.SourceRecognition.real_affine_reflection
#print axioms ContinuousResearch.SourceRecognition.real_affine_reflection
#print ContinuousResearch.SourceRecognition.same_point_comparison_real_zeros
#print axioms ContinuousResearch.SourceRecognition.same_point_comparison_real_zeros
#print ContinuousResearch.SourceRecognition.zeroMatrix
#print axioms ContinuousResearch.SourceRecognition.zeroMatrix
#print ContinuousResearch.SourceRecognition.hostileSource
#print axioms ContinuousResearch.SourceRecognition.hostileSource
#print ContinuousResearch.SourceRecognition.zeroMatrix_hermitian
#print axioms ContinuousResearch.SourceRecognition.zeroMatrix_hermitian
#print ContinuousResearch.SourceRecognition.zeroMatrix_charpoly
#print axioms ContinuousResearch.SourceRecognition.zeroMatrix_charpoly
#print ContinuousResearch.SourceRecognition.zeroMatrix_charpoly_zeros_real
#print axioms ContinuousResearch.SourceRecognition.zeroMatrix_charpoly_zeros_real
#print ContinuousResearch.SourceRecognition.hostileSource_nonreal_zero
#print axioms ContinuousResearch.SourceRecognition.hostileSource_nonreal_zero
#print ContinuousResearch.SourceRecognition.finite_boundary_reality_does_not_identify_source
#print axioms ContinuousResearch.SourceRecognition.finite_boundary_reality_does_not_identify_source
#print ContinuousResearch.SourceRecognition.shiftedBoundary
#print axioms ContinuousResearch.SourceRecognition.shiftedBoundary
#print ContinuousResearch.SourceRecognition.squareMap
#print axioms ContinuousResearch.SourceRecognition.squareMap
#print ContinuousResearch.SourceRecognition.negativeUnitMatrix
#print axioms ContinuousResearch.SourceRecognition.negativeUnitMatrix
#print ContinuousResearch.SourceRecognition.negativeUnitMatrix_hermitian
#print axioms ContinuousResearch.SourceRecognition.negativeUnitMatrix_hermitian
#print ContinuousResearch.SourceRecognition.negativeUnitMatrix_charpoly
#print axioms ContinuousResearch.SourceRecognition.negativeUnitMatrix_charpoly
#print ContinuousResearch.SourceRecognition.negativeUnitMatrix_characteristic_function
#print axioms ContinuousResearch.SourceRecognition.negativeUnitMatrix_characteristic_function
#print ContinuousResearch.SourceRecognition.shiftedBoundary_real_zeros
#print axioms ContinuousResearch.SourceRecognition.shiftedBoundary_real_zeros
#print ContinuousResearch.SourceRecognition.square_comparison_exact
#print axioms ContinuousResearch.SourceRecognition.square_comparison_exact
#print ContinuousResearch.SourceRecognition.square_zero_transport
#print axioms ContinuousResearch.SourceRecognition.square_zero_transport
#print ContinuousResearch.SourceRecognition.square_map_not_real_axis_reflecting
#print axioms ContinuousResearch.SourceRecognition.square_map_not_real_axis_reflecting
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d02e4985a3a8444750f9a96b3811b19a945536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
