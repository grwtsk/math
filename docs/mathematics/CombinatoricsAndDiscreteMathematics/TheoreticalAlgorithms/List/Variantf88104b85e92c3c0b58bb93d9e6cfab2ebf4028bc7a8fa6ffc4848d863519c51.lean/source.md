# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantf88104b85e92c3c0b58bb93d9e6cfab2ebf4028bc7a8fa6ffc4848d863519c51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `588094db4796343d3c5d8b1a91c7d2865b302f86` · SHA-256 `c1825245d4a1c7622721eaa1caf6be335c6982d2fb04155227a60735126ec9ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteLengthEq.Variantac277a723737bb10e56ba5525ff714f21d2f960b9a2699b82e92af3b108c93d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac277a723737bb10e56ba5525ff714f21d2f960b9a2699b82e92af3b108c93d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiniteLengthEq.Variantac277a723737bb10e56ba5525ff714f21d2f960b9a2699b82e92af3b108c93d3","mathematical_subject":"Computation.DataStructures","original_sha256":"ac277a723737bb10e56ba5525ff714f21d2f960b9a2699b82e92af3b108c93d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Set/Finite/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
module

public import Mathlib.Data.Fintype.Vector
public import Mathlib.Data.Set.Finite.Lattice

/-!
# Finiteness of sets of lists

## Tags

finite sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteLengthEq.Variantac277a723737bb10e56ba5525ff714f21d2f960b9a2699b82e92af3b108c93d3

public section

assert_not_exists IsOrderedRing MonoidWithZero

namespace List
variable (α : Type*) [Finite α] (n : ℕ)

lemma finite_length_eq : {l : List α | l.length = n}.Finite :=
  inferInstanceAs <| Finite (Vector α n)

lemma finite_length_lt : {l : List α | l.length < n}.Finite := by
  convert! (Finset.range n).finite_toSet.biUnion fun i _ ↦ finite_length_eq α i; ext; simp

lemma finite_length_le : {l : List α | l.length ≤ n}.Finite := by
  simpa [Nat.lt_succ_iff] using finite_length_lt α (n + 1)

end List
```
