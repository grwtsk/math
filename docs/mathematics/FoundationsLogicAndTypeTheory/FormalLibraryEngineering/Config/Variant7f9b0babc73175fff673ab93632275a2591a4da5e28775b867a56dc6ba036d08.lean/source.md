# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant7f9b0babc73175fff673ab93632275a2591a4da5e28775b867a56dc6ba036d08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74ef1dcd6753dcbc3aea58a1474094be072317f7` · SHA-256 `7f9b0babc73175fff673ab93632275a2591a4da5e28775b867a56dc6ba036d08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
