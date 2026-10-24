# density_decoder_tail_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52e83d4b-c8b1-61fa-152d-e333c4356964",
  "kind": "theorem",
  "lexical_name": "density_decoder_tail_transfer",
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
  "slug": "density-decoder-tail-transfer--d93b4a57fb4ca1605fa63483",
  "source": {
    "blob": "ddc22a4d1343a3ab483075f81ce1096cdecc8b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 294,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variantfad591a3b6566885053d0f5bd17726dac0601c357bcd07e2218bae3e6465153f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93b4a57fb4ca1605fa634831cd84e65c6638e95148fed50a30a03152d854b4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variantfad591a3b6566885053d0f5bd17726dac0601c357bcd07e2218bae3e6465153f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e83d4b-c8b1-61fa-152d-e333c4356964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_decoder_tail_transfer {C η : ℝ} (hC : 0 ≤ C)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) (hη : 0 < η)
    (hbudget : ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -B ≤
        densityReadout A (decodedTest A (mesh A (densityResolutionCount C η A))
          (densityResolutionCount C η A))) :
    CriticalRemovedPairedTailLowerBound := by
  obtain ⟨B,hB,R,hR,hreadout⟩ := hbudget
  refine ⟨B+η,by linarith,R,hR,?_⟩
  intro A hRA
  exact lower_transfer hη.le hB
    (density_resolving_error C hC hM hη (hR.trans hRA)) (hreadout A hRA)

#print axioms densityReadout
#print axioms density_continuous
#print axioms density_interval_mass
#print axioms cell_density_integrable
#print axioms density_decoded_integrable
#print axioms cell_density_integral
#print axioms density_decoded_integral
#print axioms density_decoded_ledger
#print axioms density_mesh_ledger
#print axioms densityReadout_actual
#print axioms densityReadout_full_drift
#print axioms density_integral_error
#print axioms densityReadout_error
#print axioms densityReadout_sharp_uniform_error
#print axioms densityReadout_uniform_error
#print axioms densityResolutionCount
#print axioms densityResolutionCount_pos
#print axioms density_resolution_budget
#print axioms densityResolutionCount_monotone
#print axioms density_resolving_error
#print axioms density_resolving_error_unconditional
#print axioms density_decoder_tail_transfer

end ContinuousResearch.DensityDecoder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variantfad591a3b6566885053d0f5bd17726dac0601c357bcd07e2218bae3e6465153f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variantfad591a3b6566885053d0f5bd17726dac0601c357bcd07e2218bae3e6465153f.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddc22a4d1343a3ab483075f81ce1096cdecc8b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
