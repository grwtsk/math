# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Variante98e108cf20166ae2ea61f16ca8816e2a3ff2698eb85c34b72824318776f50d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7fb1902daf3b3580c355f4422e6fba457a97c5f` · SHA-256 `24ee8761e93260848dbd66ac100ec64e3b9499affd4a931a79f6885982f76b44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompressedString.Variant765ae11b45831b06736e094952b348e2f0240bec6d1a8962ea65427d2bb7ad39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"765ae11b45831b06736e094952b348e2f0240bec6d1a8962ea65427d2bb7ad39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CompressedString.Variant765ae11b45831b06736e094952b348e2f0240bec6d1a8962ea65427d2bb7ad39","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"765ae11b45831b06736e094952b348e2f0240bec6d1a8962ea65427d2bb7ad39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompressedString.Variant765ae11b45831b06736e094952b348e2f0240bec6d1a8962ea65427d2bb7ad39

set_option autoImplicit false

namespace Think.Compression.Syntax

mutual
  def denote {α : Type} : RawCompressedString α → List α
    | .nil => []
    | .atom x => [x]
    | .concat left right => denote left ++ denote right
    | .macroPlaceholder _ parts => denoteParts parts

  def denoteParts {α : Type} : List (RawCompressedString α) → List α
    | [] => []
    | part :: rest => denote part ++ denoteParts rest
end

theorem denote_concat {α : Type}
    (left right : RawCompressedString α) :
    denote (.concat left right) = denote left ++ denote right := rfl

structure CompressedString (α : Type) where
  raw : RawCompressedString α
  wf : WellFormed raw
deriving Repr

def decode {α : Type} (s : CompressedString α) : List α :=
  denote s.raw

def concat {α : Type}
    (left right : CompressedString α)
    (hboundary : BoundaryCompatible left.raw right.raw := trivial) :
    CompressedString α :=
  { raw := .concat left.raw right.raw
    wf := WellFormed.concat left.wf right.wf hboundary }

theorem decode_concat {α : Type}
    (left right : CompressedString α)
    (hboundary : BoundaryCompatible left.raw right.raw) :
    decode (concat left right hboundary) = decode left ++ decode right := rfl

def encodeRaw {α : Type} : List α → RawCompressedString α
  | [] => .nil
  | x :: xs => .concat (.atom x) (encodeRaw xs)

theorem boundary_atom_tail {α : Type}
    (x : α) (xs : List α) :
    BoundaryCompatible (.atom x) (encodeRaw xs) := by
  trivial

theorem encodeRaw_wf {α : Type} :
    ∀ xs : List α, WellFormed (encodeRaw xs)
  | [] => WellFormed.nil
  | x :: xs =>
      WellFormed.concat
        (WellFormed.atom x)
        (encodeRaw_wf xs)
        (boundary_atom_tail x xs)

theorem encodeRaw_denote {α : Type} :
    ∀ xs : List α, denote (encodeRaw xs) = xs
  | [] => rfl
  | x :: xs => by
      change [x] ++ denote (encodeRaw xs) = x :: xs
      rw [encodeRaw_denote xs]
      rfl

theorem denote_encodeRaw {α : Type}
    (xs : List α) :
    denote (encodeRaw xs) = xs :=
  encodeRaw_denote xs

end Think.Compression.Syntax
```
