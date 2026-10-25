# deltaRicciAssemblyAssumptions_imply_uniformTypeIIMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:458ab7a2-baf2-0698-8222-41cb8200b79e",
  "kind": "theorem",
  "lexical_name": "deltaRicciAssemblyAssumptions_imply_uniformTypeIIMaximal",
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
  "slug": "deltaricciassemblyassumptions-imply-uniformtypeiimaximal--974b82eda61055627e565b4f",
  "source": {
    "blob": "3ae6f9136955cd5add69a226b84bde01ac743263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 307,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:974b82eda61055627e565b4f116da114e1ed490b1a9ed2dde9db712c83e6501a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:458ab7a2-baf2-0698-8222-41cb8200b79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deltaRicciAssemblyAssumptions_imply_uniformTypeIIMaximal
    (assumptions : ConductorThreeDeltaRicciAssemblyAssumptions) :
    UniformConductorThreeTypeIIMaximal assumptions.route := by
  intro epsilon hepsilon
  obtain ⟨B, hB, hcost⟩ :=
    assumptions.decisive_totalCost_bound epsilon hepsilon
  refine ⟨assumptions.readoutConstant * B,
    mul_nonneg assumptions.readoutConstant_nonneg hB, ?_⟩
  intro N hN x hx
  have hroot :=
    DeltaRicciSurgeryTree.rootPotential_le_totalCost
      (assumptions.surgeryTree N)
  have hcostN := hcost N hN
  have hpotential :
      (assumptions.initialState N).correlation.maxPotential ≤
        B ^ 2 * (typeIIAmplitudeScale N epsilon) ^ 2 :=
    hroot.trans hcostN
  have hreadout := coefficientPrefix_norm_sq_le_maxPotential
    (assumptions.initialState N) assumptions.readoutConstant
      (assumptions.initial_readout_norm_le N) x hx
      (assumptions.initial_residual_zero N x hx)
  rw [assumptions.initial_pairing_exact N x hx] at hreadout
  have hsquared :
      ‖assumptions.route.typeIISignedPairing N x‖ ^ 2 ≤
        (assumptions.readoutConstant * B *
          typeIIAmplitudeScale N epsilon) ^ 2 := by
    calc
      ‖assumptions.route.typeIISignedPairing N x‖ ^ 2 ≤
          assumptions.readoutConstant ^ 2 *
            (assumptions.initialState N).correlation.maxPotential := hreadout
      _ ≤ assumptions.readoutConstant ^ 2 *
          (B ^ 2 * (typeIIAmplitudeScale N epsilon) ^ 2) :=
        mul_le_mul_of_nonneg_left hpotential (sq_nonneg _)
      _ = (assumptions.readoutConstant * B *
          typeIIAmplitudeScale N epsilon) ^ 2 := by ring
  have hnorm : 0 ≤ ‖assumptions.route.typeIISignedPairing N x‖ := norm_nonneg _
  have hrate : 0 ≤ typeIIAmplitudeScale N epsilon :=
    Real.rpow_nonneg (Nat.cast_nonneg N) _
  have htarget : 0 ≤ assumptions.readoutConstant * B *
      typeIIAmplitudeScale N epsilon :=
    mul_nonneg (mul_nonneg assumptions.readoutConstant_nonneg hB) hrate
  have hfinal :
      ‖assumptions.route.typeIISignedPairing N x‖ ≤
        assumptions.readoutConstant * B * typeIIAmplitudeScale N epsilon :=
    (sq_le_sq₀ hnorm htarget).mp hsquared
  simpa [typeIIAmplitudeScale, mul_assoc] using hfinal

end

end Surface.Core.ConductorThreeDeltaRicciTypeII
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ae6f9136955cd5add69a226b84bde01ac743263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
