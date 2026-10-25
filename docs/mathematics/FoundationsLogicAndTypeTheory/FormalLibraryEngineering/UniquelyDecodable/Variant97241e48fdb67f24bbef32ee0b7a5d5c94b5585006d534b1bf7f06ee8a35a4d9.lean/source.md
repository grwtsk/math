# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UniquelyDecodable.Variant97241e48fdb67f24bbef32ee0b7a5d5c94b5585006d534b1bf7f06ee8a35a4d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca15da7772cfa99479cdcc6cf34e47d533816a3e` · SHA-256 `452b10e734d68053122d7e6712ed7b7b3ad56a59557fc133a1a69e57512428a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsUniquelyDecodable.Variant50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsUniquelyDecodable.Variant50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/InformationTheory/Coding/UniquelyDecodable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Elazar Gershuni. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Elazar Gershuni
-/
module

public import Mathlib.Data.Subtype
public import Mathlib.Tactic.Finiteness.Attr
public import Mathlib.Tactic.Push
public import Mathlib.Util.CompileInductive

/-!
# Uniquely Decodable Codes

This file defines uniquely decodable codes and proves basic properties.

## Main definitions

* `IsUniquelyDecodable`: A set of codewords is uniquely decodable if distinct concatenations
  of codewords yield distinct strings.

## Main results

* `IsUniquelyDecodable.epsilon_not_mem`: Uniquely decodable codes cannot contain the empty
  string.
* `IsUniquelyDecodable.flatten_injective`: The flatten function is injective on lists of
  codewords from a uniquely decodable code.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsUniquelyDecodable.Variant50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361

@[expose] public section

namespace InformationTheory

variable {α : Type*}

/-- A set of lists is uniquely decodable if distinct concatenations yield distinct strings. -/
def IsUniquelyDecodable (S : Set (List α)) : Prop :=
  ∀ (L₁ L₂ : List (List α)),
    (∀ w ∈ L₁, w ∈ S) → (∀ w ∈ L₂, w ∈ S) →
    L₁.flatten = L₂.flatten → L₁ = L₂

@[deprecated (since := "2026-08-16")] alias UniquelyDecodable := IsUniquelyDecodable

variable {S : Set (List α)}

/-- If a code is uniquely decodable, it does not contain the empty string.

The empty string can be "decoded" as either zero or two copies of itself,
violating unique decodability. -/
lemma IsUniquelyDecodable.epsilon_not_mem
    (h : IsUniquelyDecodable S) :
    [] ∉ S := by
  simpa using h [[]] [[], []]

@[deprecated (since := "2026-08-16")]
alias UniquelyDecodable.epsilon_not_mem := IsUniquelyDecodable.epsilon_not_mem

lemma IsUniquelyDecodable.flatten_injective (h : IsUniquelyDecodable S) :
    Function.Injective (fun (L : {L : List (List α) // ∀ x ∈ L, x ∈ S}) => L.val.flatten) := by
  intro L₁ L₂ hflat
  apply Subtype.ext
  exact h L₁.val L₂.val L₁.prop L₂.prop hflat

@[deprecated (since := "2026-08-16")]
alias UniquelyDecodable.flatten_injective := IsUniquelyDecodable.flatten_injective

end InformationTheory
```
