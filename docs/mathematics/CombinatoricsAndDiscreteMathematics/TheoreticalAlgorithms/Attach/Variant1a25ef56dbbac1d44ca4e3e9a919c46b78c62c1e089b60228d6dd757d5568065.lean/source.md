# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `800b62bda787e566869e1f127ad8a621f5fa1561` · SHA-256 `5a5cea999e3c11f3a70d16ef454abc4b3351e2e908fbe1f39172bbfefba94044`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Lemmas.Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258","mathematical_subject":"Computation.DataStructures","original_sha256":"4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/List/Init/Attach.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Data.List.Init.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258

namespace List

/-- Partial map. If `f : Π a, p a → β` is a partial function defined on
  `a : α` satisfying `p`, then `pmap f l h` is essentially the same as `map f l`
  but is defined only when all members of `l` satisfy `p`, using the proof
  to apply `f`. -/
@[simp] def pmap {p : α → Prop} (f : ∀ a, p a → β) : ∀ l : List α, (∀ a ∈ l, p a) → List β
  | [], _ => []
  | a :: l, H => f a (forall_mem_cons.1 H).1 :: pmap f l (forall_mem_cons.1 H).2

/--
Unsafe implementation of `attach`, taking advantage of the fact that the representation of
`List {x // x ∈ l}` is the same as the input `List α`.
(Someday, the compiler might do this optimization automatically, but until then...)
-/
@[inline] private unsafe def attachImpl (l : List α) : List {x // x ∈ l} := unsafeCast l

/-- "Attach" the proof that the elements of `l` are in `l` to produce a new list
  with the same elements but in the type `{x // x ∈ l}`. -/
@[implemented_by attachImpl] def attach (l : List α) : List {x // x ∈ l} :=
  pmap Subtype.mk l fun _ => id

/-- Implementation of `pmap` using the zero-copy version of `attach`. -/
@[inline] private def pmapImpl {p : α → Prop} (f : ∀ a, p a → β) (l : List α) (h : ∀ a ∈ l, p a) :
    List β := l.attach.map fun ⟨x, h'⟩ => f x (h _ h')

@[csimp] private theorem pmap_eq_pmapImpl : @pmap = @pmapImpl := by
  funext α β p f L h'
  let rec go : ∀ L' (hL' : ∀ ⦃x⦄, x ∈ L' → x ∈ L),
      pmap f L' (fun _ h => h' _ <| hL' h) =
      map (fun ⟨x, hx⟩ => f x (h' _ hx)) (pmap Subtype.mk L' hL')
  | nil, hL' => rfl
  | cons _ L', hL' => congrArg _ <| go L' fun _ hx => hL' (.tail _ hx)
  exact go L fun _ hx => hx
```
