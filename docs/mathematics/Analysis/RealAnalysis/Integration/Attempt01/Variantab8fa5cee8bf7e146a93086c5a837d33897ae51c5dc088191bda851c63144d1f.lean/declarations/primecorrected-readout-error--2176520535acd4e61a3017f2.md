# primeCorrected_readout_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b4aef59-11a3-c185-4d15-9f2d09805923",
  "kind": "theorem",
  "lexical_name": "primeCorrected_readout_error",
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
  "slug": "primecorrected-readout-error--2176520535acd4e61a3017f2",
  "source": {
    "blob": "cca97b1f15436ade2ceba24f6e0aa334bc5819cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2176520535acd4e61a3017f2240ab8463d2272a148f9b5835eff85565fd76a50",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b4aef59-11a3-c185-4d15-9f2d09805923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCorrected_readout_error {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε)
    (F : ℝ → ℝ) (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u∈Icc 0 (2*A), |F u-pairedTailTest A u|≤ε) :
    |densityReadout A (primeCorrected A F)-criticalRemovedPairedWork A| ≤
      ε*(2*A-1+criticalDecay (2*A)) := by
  rw [← densityReadout_actual hA]
  unfold densityReadout
  rw [primeCorrected_primeLogSum, primeCorrected_density_integral]
  have he : primeLogSum (2*A) (pairedTailTest A) -
      (∫ u in 0..2*A, criticalDensity u*F u) -
      (primeLogSum (2*A) (pairedTailTest A) -
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) =
      -((∫ u in 0..2*A, criticalDensity u*F u) -
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) := by ring
  rw [he, abs_neg]
  exact density_integral_error hA hε F hF herr

#print axioms primeCorrected_at_atom
#print axioms primeCorrected_ae
#print axioms primeCorrected_integrable
#print axioms primeCorrected_primeLogSum
#print axioms primeCorrected_density_integral
#print axioms primeCorrected_readout_error
end RH16Tandem.PrimeAtomDecoder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca97b1f15436ade2ceba24f6e0aa334bc5819cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
