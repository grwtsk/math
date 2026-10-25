# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant2d20cb05ec011b25d056ce92cf9024e78d5858db7ee3db1022a370d7fe01ac60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d93030e083e03321f23fcc370dc3796f3868e63` · SHA-256 `1d10c7c0e43fcda50291685a69fae8ccd29f2c8556c3793531fb96b679d76685`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologyMode.Variant7f9b0babc73175fff673ab93632275a2591a4da5e28775b867a56dc6ba036d08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f9b0babc73175fff673ab93632275a2591a4da5e28775b867a56dc6ba036d08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TopologyMode.Variant7f9b0babc73175fff673ab93632275a2591a4da5e28775b867a56dc6ba036d08","mathematical_subject":"Foundations.Unclassified","original_sha256":"7f9b0babc73175fff673ab93632275a2591a4da5e28775b867a56dc6ba036d08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Gateway/formalization/GatewayProof/Config.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologyMode.Variant7f9b0babc73175fff673ab93632275a2591a4da5e28775b867a56dc6ba036d08

namespace GatewayProof
namespace Config

inductive TopologyMode
| local
| dev
| prod
deriving Repr, DecidableEq

inductive UpstreamMode
| direct
| reverseLink
deriving Repr, DecidableEq

inductive ConfigRefusal
| invalidTopologyMode
| invalidUpstreamMode
| envAliasConflict
| prodDirectMissingDaemonBaseUrl
| reverseLinkTokenMissing
| reverseLinkBindCollision
| mcpIngressRequiresReverseLinkMode
| tlsRequiresReverseLinkMode
deriving Repr, DecidableEq

structure RuntimeConfigModel where
  topology : TopologyMode
  upstream : UpstreamMode
  gatewayEnabled : Bool
  daemonBaseUrlConfigured : Bool
  reverseLinkTokenConfigured : Bool
  gatewayBind : String
  reverseLinkBind : String
  mcpIngressEnabled : Bool
  controlPublicHostConfigured : Bool
  tlsEnabled : Bool
  tlsCertConfigured : Bool
  tlsKeyConfigured : Bool
deriving Repr, DecidableEq

def prodDirectMissingDaemonBaseUrl (c : RuntimeConfigModel) : Prop :=
  c.topology = TopologyMode.prod ∧
  c.upstream = UpstreamMode.direct ∧
  c.daemonBaseUrlConfigured = false

def reverseLinkTokenMissing (c : RuntimeConfigModel) : Prop :=
  c.upstream = UpstreamMode.reverseLink ∧
  c.reverseLinkTokenConfigured = false

def reverseLinkBindCollision (c : RuntimeConfigModel) : Prop :=
  c.upstream = UpstreamMode.reverseLink ∧
  c.gatewayBind = c.reverseLinkBind

def mcpIngressModeInvalid (c : RuntimeConfigModel) : Prop :=
  c.mcpIngressEnabled = true ∧ c.upstream ≠ UpstreamMode.reverseLink

def tlsModeInvalid (c : RuntimeConfigModel) : Prop :=
  c.tlsEnabled = true ∧ c.upstream ≠ UpstreamMode.reverseLink

def validated (c : RuntimeConfigModel) : Prop :=
  ¬ prodDirectMissingDaemonBaseUrl c ∧
  ¬ reverseLinkTokenMissing c ∧
  ¬ reverseLinkBindCollision c ∧
  ¬ mcpIngressModeInvalid c ∧
  ¬ tlsModeInvalid c

theorem prod_direct_without_daemon_not_valid
    (c : RuntimeConfigModel)
    (h : prodDirectMissingDaemonBaseUrl c) :
    ¬ validated c := by
  intro hv
  exact hv.1 h

theorem reverse_link_without_token_not_valid
    (c : RuntimeConfigModel)
    (h : reverseLinkTokenMissing c) :
    ¬ validated c := by
  intro hv
  exact hv.2.1 h

theorem mcp_ingress_requires_reverse_link
    (c : RuntimeConfigModel)
    (h : mcpIngressModeInvalid c) :
    ¬ validated c := by
  intro hv
  exact hv.2.2.2.1 h

end Config
end GatewayProof
```
