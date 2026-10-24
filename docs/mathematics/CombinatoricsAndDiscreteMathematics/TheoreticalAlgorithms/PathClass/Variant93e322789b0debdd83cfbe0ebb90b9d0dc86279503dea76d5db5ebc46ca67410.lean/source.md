# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PathClass.Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17bbda31f69712f41b876a16268ec5be61d9699b` · SHA-256 `b6a9995886cebcdf2250cbd460ffbdb7e7b76f6e5d0abe3f9534083522288a73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EndpointClass.Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EndpointClass.Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b","mathematical_subject":"Computation.DataStructures","original_sha256":"5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/PathClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.Bit

/-!
# Folder.Spectral.PathClass

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.path_class
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EndpointClass.Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b

namespace Folder
namespace Spectral

open Carrier

inductive EndpointClass
  | zero_zero
  | zero_one
  | one_zero
  | one_one
deriving DecidableEq, Repr

namespace EndpointClass

def ofEndpoints (a b : Bit) : EndpointClass :=
  if a = 0 then
    if b = 0 then zero_zero else zero_one
  else
    if b = 0 then one_zero else one_one

end EndpointClass

def lastBit? : List Bit → Option Bit
  | [] => none
  | [b] => some b
  | _ :: rest => lastBit? rest

def endpointClassOfBits : List Bit → Option EndpointClass
  | [] => none
  | b :: rest => some (EndpointClass.ofEndpoints b ((lastBit? (b :: rest)).getD b))

theorem lastBit?_cons_ne_none (b : Bit) (rest : List Bit) :
    ∃ z, lastBit? (b :: rest) = some z := by
  induction rest generalizing b with
  | nil =>
      exact ⟨b, rfl⟩
  | cons c rest ih =>
      simpa [lastBit?] using ih c

theorem endpointClass_depends_only_on_endpoints
    {xs : List Bit}
    {a b : Bit}
    (hfirst : xs.head? = some a)
    (hlast : lastBit? xs = some b) :
    endpointClassOfBits xs = some (EndpointClass.ofEndpoints a b) := by
  cases xs with
  | nil =>
      simp [lastBit?] at hlast
  | cons x rest =>
      simp at hfirst
      subst x
      simp [endpointClassOfBits, hlast]

end Spectral
end Folder
```
