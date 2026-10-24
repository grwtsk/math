# correction_lower_of_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c61600b794096c8ff39a3a7c0a391ea21db41bfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69ab7e72-4d29-3450-62af-d310b8d37f00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b696b4e-6095-ca80-bd38-c91807425639",
  "kind": "lemma",
  "lexical_name": "correction_lower_of_mass",
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
  "slug": "correction-lower-of-mass--135708cd807c5ad979055d4f",
  "source": {
    "blob": "c61600b794096c8ff39a3a7c0a391ea21db41bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:135708cd807c5ad979055d4f96ba41013b3c98d39a7e74e7d66338f9928ebd75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b696b4e-6095-ca80-bd38-c91807425639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma correction_lower_of_mass (A : ℝ) (hA : 1 ≤ A)
    (hmass : (∫ ξ, Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) = 2 * Real.pi) :
    archimedeanMultiplier 0 - 6 * Real.sqrt 2 ≤ analyticCorrection explicitSecondDerivative A := by
  have harch := archimedeanValue_lower_of_mass A hA hmass
  have hfirst := first_correction_lower A hA
  have hsecond := second_correction_lower A hA
  have hprime := (abs_le.mp (EstimateCorrelation.actual_prime_two_boundary_abs_le A hA)).1
  unfold analyticCorrection
  linarith

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61600b794096c8ff39a3a7c0a391ea21db41bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
