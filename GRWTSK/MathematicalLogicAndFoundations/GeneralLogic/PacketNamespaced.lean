-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Packet.Variant6f705cee0a50ec632bbd1d597fbc01b9647d433e4e3c90af7c287a4e07b70000","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f705cee0a50ec632bbd1d597fbc01b9647d433e4e3c90af7c287a4e07b70000","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Packet.Variant6f705cee0a50ec632bbd1d597fbc01b9647d433e4e3c90af7c287a4e07b70000","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6f705cee0a50ec632bbd1d597fbc01b9647d433e4e3c90af7c287a4e07b70000","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Trace/Packet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Rat.Lemmas

/-!
# Finite exact packet coordinates

This record is a rational finite-coordinate packet used by the exact diagonal
kernel.  It is not a claim about a general Hilbert--Schmidt realization.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Packet.Variant6f705cee0a50ec632bbd1d597fbc01b9647d433e4e3c90af7c287a4e07b70000

namespace Mathematics.SemiLocalDefect

structure Packet (Coordinate : Type u) where
  packetId : String
  amplitude : Coordinate → ℚ

end Mathematics.SemiLocalDefect
