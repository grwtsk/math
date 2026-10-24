-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IdealClosure.Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IdealClosure.Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Ring/Ideal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Group.Quotient
import Mathlib.RingTheory.Ideal.Quotient.Defs

/-!
# Ideals and quotients of topological rings

In this file we define `Ideal.closure` to be the topological closure of an ideal in a topological
ring. We also define a `TopologicalSpace` structure on the quotient of a topological ring by an
ideal and prove that the quotient is a topological ring.
-/


namespace GRWTSK.Algebra.IdealClosure.Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98

open Topology

section Ring

variable {R : Type*} [TopologicalSpace R] [Ring R] [IsTopologicalRing R]

/-- The closure of an ideal in a topological ring as an ideal. -/
protected def Ideal.closure (I : Ideal R) : Ideal R :=
  {
    AddSubmonoid.topologicalClosure
      I.toAddSubmonoid with
    carrier := closure I
    smul_mem' := fun c _ hx => map_mem_closure (mulLeft_continuous _) hx fun _ => I.mul_mem_left c }

@[simp]
theorem Ideal.coe_closure (I : Ideal R) : (I.closure : Set R) = closure I :=
  rfl

-- Porting note: removed `@[simp]` because we make the instance argument explicit since otherwise
-- it causes timeouts as `simp` tries and fails to generated an `IsClosed` instance.
-- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/!4.234852.20heartbeats.20of.20the.20linter
theorem Ideal.closure_eq_of_isClosed (I : Ideal R) (hI : IsClosed (I : Set R)) : I.closure = I :=
  SetLike.ext' hI.closure_eq

end Ring

section CommRing

variable {R : Type*} [TopologicalSpace R] [CommRing R] (N : Ideal R)

open Ideal.Quotient

instance topologicalRingQuotientTopology : TopologicalSpace (R ⧸ N) :=
  instTopologicalSpaceQuotient

-- note for the reader: in the following, `mk` is `Ideal.Quotient.mk`, the canonical map `R → R/I`.
variable [IsTopologicalRing R]

theorem QuotientRing.isOpenMap_coe : IsOpenMap (mk N) :=
  QuotientAddGroup.isOpenMap_coe

theorem QuotientRing.isOpenQuotientMap_mk : IsOpenQuotientMap (mk N) :=
  QuotientAddGroup.isOpenQuotientMap_mk

theorem QuotientRing.isQuotientMap_coe_coe : IsQuotientMap fun p : R × R => (mk N p.1, mk N p.2) :=
  ((isOpenQuotientMap_mk N).prodMap (isOpenQuotientMap_mk N)).isQuotientMap

@[deprecated (since := "2024-10-22")]
alias QuotientRing.quotientMap_coe_coe := QuotientRing.isQuotientMap_coe_coe

instance topologicalRing_quotient : IsTopologicalRing (R ⧸ N) where
  __ := QuotientAddGroup.instIsTopologicalAddGroup _
  continuous_mul := (QuotientRing.isQuotientMap_coe_coe N).continuous_iff.2 <|
    continuous_quot_mk.comp continuous_mul

instance [CompactSpace R] : CompactSpace (R ⧸ N) :=
  Quotient.compactSpace

end CommRing
