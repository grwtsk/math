# coefficientPrefix_norm_sq_le_maxPotential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50769296831728cfc96440003a343b9c46196a22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dbb6f28-c236-358d-0a4c-90297718f810",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5afbc44-89dd-cee8-9b4c-2580ea98b10f",
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
  "slug": "coefficientprefix-norm-sq-le-maxpotential--5f334d1f4b9e4706361986d4",
  "source": {
    "blob": "50769296831728cfc96440003a343b9c46196a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f334d1f4b9e4706361986d4676885b6cb2af90a037c5f015070183080442650",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5afbc44-89dd-cee8-9b4c-2580ea98b10f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–250.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50769296831728cfc96440003a343b9c46196a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
