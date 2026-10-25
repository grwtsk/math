# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cast.Variant7f4d72473494e1ae89adc925ef936ba8afd96472d8b84c3fa5e733719b442137

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe28ba74b70a318c4062dc9cbf8e72854bb10025` · SHA-256 `53d4c01a96b777da5612af191c1d1f705a291bbdf5d6babd3f2d416f6baa983f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryNote.Variant221c1cbcc7a4e8eff864f831116fe7af047948bfdbd902936090d5d5f58995f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"221c1cbcc7a4e8eff864f831116fe7af047948bfdbd902936090d5d5f58995f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LibraryNote.Variant221c1cbcc7a4e8eff864f831116fe7af047948bfdbd902936090d5d5f58995f8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"221c1cbcc7a4e8eff864f831116fe7af047948bfdbd902936090d5d5f58995f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Classes/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Gabriel Ebner
-/
module

public meta import Batteries.Util.LibraryNote


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryNote.Variant221c1cbcc7a4e8eff864f831116fe7af047948bfdbd902936090d5d5f58995f8

@[expose] public section

library_note «coercion into rings» /--
Coercions such as `Nat.castCoe` that go from a concrete structure such as
`Nat` to an arbitrary ring `R` should be set up as follows:
```lean
instance : CoeTail Nat R where coe := ...
instance : CoeHTCT Nat R where coe := ...
```

It needs to be `CoeTail` instead of `Coe` because otherwise type-class
inference would loop when constructing the transitive coercion `Nat → Nat → Nat → ...`.
Sometimes we also need to declare the `CoeHTCT` instance
if we need to shadow another coercion
(e.g. `Nat.cast` should be used over `Int.ofNat`).
-/
````
