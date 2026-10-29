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
