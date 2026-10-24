-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant1cb4223665752d89eabd8e6f518249cc5b7fd112fc17c4950788a1ef151d3e2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cb4223665752d89eabd8e6f518249cc5b7fd112fc17c4950788a1ef151d3e2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Core.Variant1cb4223665752d89eabd8e6f518249cc5b7fd112fc17c4950788a1ef151d3e2a","mathematical_subject":"Foundations.Unclassified","original_sha256":"1cb4223665752d89eabd8e6f518249cc5b7fd112fc17c4950788a1ef151d3e2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/AST.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.AST.Core
import Surface.AST.Slug
import Surface.AST.ModuleGraph
import Surface.AST.DeclarationGraph
import Surface.AST.Trusted
import Surface.AST.TheoremConeStyle
import Surface.AST.StyleAudit

/-!
# Surface AST metadata

What is formalized:
Lean declaration and module metadata used by Surface generators, including proof
status, trusted status, dependencies, fixtures, paper references, and claim
boundaries.

What is certificate-gated:
External extraction from a Lean environment and any claim that a generated record
is authoritative for a theorem. The runner-facing export module is intentionally
not imported here because it depends on the root `Surface` namespace.

What is not claimed:
AST metadata is not a proof object; theorem authority remains with Lean-checked
declarations and explicit audits.

Primary mathematical source:
Internal Surface proof-status and claim-boundary discipline.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant1cb4223665752d89eabd8e6f518249cc5b7fd112fc17c4950788a1ef151d3e2a

