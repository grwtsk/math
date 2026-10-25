# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant9f4d04e63c3741417f33813ec1b518d8ce6b88d97a2df38b8765dd18d4a3c0ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b6701bb409c2c8fae68a0be0a6e653fe61d6a2a` · SHA-256 `9f4d04e63c3741417f33813ec1b518d8ce6b88d97a2df38b8765dd18d4a3c0ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.AuthorityBoundary
import Think.SourceTree.Legacy.ModularWave.BridgeSound

namespace Think.ModularWave

def finiteBridgeClaimRecord : Think.Codex.Authority.ClaimRecord :=
  { status := Think.Codex.Foundation.StatusConstant.finite_witness_only,
    checkedProofImported := false,
    externalHypothesesDischarged := false }

def externalUndischargedClaimRecord : Think.Codex.Authority.ClaimRecord :=
  { status := Think.Codex.Foundation.StatusConstant.externally_theorem_supported,
    checkedProofImported := false,
    externalHypothesesDischarged := false }

theorem modular_wave_bridge_sound_has_no_repo_theorem_authority
    (input : ModularWaveBridgeInput)
    (_hSound : ModularWaveBitstreamBridgeSound input) :
    Not (Think.Codex.Authority.Authority finiteBridgeClaimRecord) := by
  exact Think.Codex.Authority.finite_witness_only_has_no_authority false false

theorem finite_bridge_claim_record_is_finite_witness_only :
    finiteBridgeClaimRecord.status =
      Think.Codex.Foundation.StatusConstant.finite_witness_only /\
    finiteBridgeClaimRecord.checkedProofImported = false /\
    finiteBridgeClaimRecord.externalHypothesesDischarged = false := by
  exact And.intro rfl (And.intro rfl rfl)

theorem wiles_external_boundary_requires_discharge_before_authority
    (input : ModularWaveBridgeInput)
    (_hSound : ModularWaveBitstreamBridgeSound input) :
    Not (Think.Codex.Authority.Authority externalUndischargedClaimRecord) := by
  exact Think.Codex.Authority.external_without_discharge_has_no_authority false

theorem modular_wave_sound_keeps_wiles_artifact_external
    (input : ModularWaveBridgeInput)
    (hSound : ModularWaveBitstreamBridgeSound input) :
    input.wilesArtifact.IsExternalScopedArtifact := by
  exact wiles_artifact_remains_external input hSound

theorem modular_wave_sound_keeps_compact_shadow_non_ordering
    (input : ModularWaveBridgeInput)
    (hSound : ModularWaveBitstreamBridgeSound input) :
    input.compact.orderErased = true /\
    input.compact.preservesExecutionOrder = false := by
  exact compact_shell_erases_order input hSound

end Think.ModularWave
```
