# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rpc.Variant90bf8846b35ac3d66a5a22d8de8f89e2d9d2cab6d6aea8008eacd161f90b5c7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da90fd65d70367235477e2cdc23026b785b586e8` · SHA-256 `3b52a3280927f50a5aa1613c1cd94115edc1573d58ac808dd5041b3fccc330a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SessionIdentity.Variant096759278c13b72bf9e3a5dcf12ddcfcd527187df26a43138faf92d07c9975a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"096759278c13b72bf9e3a5dcf12ddcfcd527187df26a43138faf92d07c9975a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SessionIdentity.Variant096759278c13b72bf9e3a5dcf12ddcfcd527187df26a43138faf92d07c9975a3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"096759278c13b72bf9e3a5dcf12ddcfcd527187df26a43138faf92d07c9975a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/indiscrete-terminal-topos/lean/IndiscreteTerminalTopos/Rpc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! Open-file, session-scoped goal-observation provider surface. -/

import IndiscreteTerminalTopos.Audit
import Lean.Server.InfoUtils


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SessionIdentity.Variant096759278c13b72bf9e3a5dcf12ddcfcd527187df26a43138faf92d07c9975a3

namespace IndiscreteTerminalTopos.Rpc

/-- Persistent open-file session identity; it never stores an `RpcRef`. -/
structure SessionIdentity where
  /-- Open document URI. -/
  documentUri : String
  /-- Host-controlled session generation. -/
  generation : Nat
  deriving Repr

/-- Position-indexed goal query. -/
structure GoalsAtParams where
  /-- Associated open-file session. -/
  session : SessionIdentity
  /-- Zero-based line. -/
  line : Nat
  /-- Zero-based UTF-16 character offset. -/
  character : Nat
  deriving Repr

/-- Goal observation backed by elaboration `InfoTree`, not tactic-text scanning. -/
def goalsAtProvider := Lean.Elab.InfoTree.goalsAt?

/-- Opaque server references are not persistent identities. -/
def rpcRefsAreSessionScoped : Bool := true

end IndiscreteTerminalTopos.Rpc
```
