-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prod.Variantded4a7577b8c6e4b78883e7b325303ed3c02604bf5586012826feed25b19ad52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ded4a7577b8c6e4b78883e7b325303ed3c02604bf5586012826feed25b19ad52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Prod.Variantded4a7577b8c6e4b78883e7b325303ed3c02604bf5586012826feed25b19ad52","mathematical_subject":"Computation.DataStructures","original_sha256":"ded4a7577b8c6e4b78883e7b325303ed3c02604bf5586012826feed25b19ad52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Fintype/Vector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Basic.Finite.Prod
public import Mathlib.Data.Fintype.Pi
public import Mathlib.Data.Sym.Basic

/-!
# `Vector α n` and `Sym α n` are fintypes when `α` is.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prod.Variantded4a7577b8c6e4b78883e7b325303ed3c02604bf5586012826feed25b19ad52

public section

open List (Vector)

variable {α : Type*}

namespace List.Vector

instance [Finite α] {n : ℕ} : Finite (List.Vector α n) :=
  Finite.of_equiv _ (Equiv.vectorEquivFin _ _).symm

instance [Fintype α] {n : ℕ} : Fintype (List.Vector α n) :=
  fast_instance% Fintype.ofEquiv _ (Equiv.vectorEquivFin _ _).symm

end List.Vector

namespace Sym.Sym'

instance [Finite α] {n : ℕ} : Finite (Sym.Sym' α n) :=
  inferInstanceAs <| Finite (Quotient _)

instance instFintype [DecidableEq α] [Fintype α] {n : ℕ} : Fintype (Sym.Sym' α n) :=
  inferInstanceAs <| Fintype (Quotient _)

end Sym.Sym'

namespace Sym

instance [Finite α] {n : ℕ} : Finite (Sym α n) :=
  Finite.of_equiv _ Sym.symEquivSym'.symm

instance instFintype [DecidableEq α] [Fintype α] {n : ℕ} : Fintype (Sym α n) :=
  fast_instance% Fintype.ofEquiv _ Sym.symEquivSym'.symm

end Sym
