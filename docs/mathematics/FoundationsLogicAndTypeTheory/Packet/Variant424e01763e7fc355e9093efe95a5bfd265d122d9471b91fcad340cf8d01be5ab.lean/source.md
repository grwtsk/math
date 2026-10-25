# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Packet.Variant424e01763e7fc355e9093efe95a5bfd265d122d9471b91fcad340cf8d01be5ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7e3469d834308e3a9c697557ec363e5c7516a74` · SHA-256 `d88a6881562694f8e459cc2e8f4fb271ff73665589574eb2dfa0aab1bcab6470`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
