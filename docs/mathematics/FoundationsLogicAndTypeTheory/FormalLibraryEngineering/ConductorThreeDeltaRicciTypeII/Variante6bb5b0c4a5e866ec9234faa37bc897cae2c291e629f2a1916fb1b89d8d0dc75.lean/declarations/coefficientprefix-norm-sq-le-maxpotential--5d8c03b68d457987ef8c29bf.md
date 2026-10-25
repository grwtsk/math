# coefficientPrefix_norm_sq_le_maxPotential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df4a4204-4785-ed3a-7c0f-7ff633d5d3cc",
  "kind": "theorem",
  "lexical_name": "coefficientPrefix_norm_sq_le_maxPotential",
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
  "slug": "coefficientprefix-norm-sq-le-maxpotential--5d8c03b68d457987ef8c29bf",
  "source": {
    "blob": "3ae6f9136955cd5add69a226b84bde01ac743263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d8c03b68d457987ef8c29bf9577f91a85ca6a57b9d92ae6b3eb3109946c3272",
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

Occurrence: `result:df4a4204-4785-ed3a-7c0f-7ff633d5d3cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientPrefix_norm_sq_le_maxPotential
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base)
    (readoutConstant : ℝ)
    (hreadout : ‖state.readout‖ ≤ readoutConstant)
    (x : ℕ) (hx : x ≤ 2 * N) (hresidual : state.residual x = 0) :
    ‖coefficientPrefix state.correlation.activeAtoms x‖ ^ 2 ≤
      readoutConstant ^ 2 * state.correlation.maxPotential := by
  let packetState := coefficientPacketState state.correlation.realization
    state.correlation.activeAtoms x
  have happly : ‖state.readout packetState‖ ≤
      readoutConstant * ‖packetState‖ :=
    ContinuousLinearMap.le_of_opNorm_le state.readout hreadout packetState
  have hreadout_nonneg : 0 ≤ ‖state.readout packetState‖ := norm_nonneg _
  have hpacket_nonneg : 0 ≤ ‖packetState‖ := norm_nonneg _
  have hsquare : ‖state.readout packetState‖ ^ 2 ≤
      readoutConstant ^ 2 * ‖packetState‖ ^ 2 := by
    nlinarith
  have henergy : ‖packetState‖ ^ 2 ≤ state.correlation.maxPotential := by
    calc
      ‖packetState‖ ^ 2 =
          correlationEnergyAt state.correlation.realization
            state.correlation.activeAtoms x := by
        rfl
      _ ≤ state.correlation.potentialAt x := by
        unfold CorrelationData.potentialAt
        exact le_add_of_nonneg_right
          (state.correlation.residualBudget_nonneg x)
      _ ≤ state.correlation.maxPotential :=
        state.correlation.potentialAt_le_maxPotential hx
  have hresidual' : state.correlation.residual x = 0 := by
    simpa [TypeIISurgeryState.residual] using hresidual
  rw [state.exactReadoutDecomposition x hx, hresidual', add_zero]
  exact hsquare.trans
    (mul_le_mul_of_nonneg_left henergy (sq_nonneg readoutConstant))

/-- The half-plus-epsilon amplitude scale. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ae6f9136955cd5add69a226b84bde01ac743263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
