-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HomCast.Variant4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.HomCast.Variant4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/Quiver/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Antoine Labelle, Rémi Bottinelli. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Labelle, Rémi Bottinelli
-/
import Mathlib.Combinatorics.Quiver.Basic
import Mathlib.Combinatorics.Quiver.Path

/-!

# Rewriting arrows and paths along vertex equalities

This files defines `Hom.cast` and `Path.cast` (and associated lemmas) in order to allow
rewriting arrows and paths along equalities of their endpoints.

-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HomCast.Variant4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c

universe v v₁ v₂ u u₁ u₂

variable {U : Type*} [Quiver.{u + 1} U]


namespace Quiver

/-!
### Rewriting arrows along equalities of vertices
-/


/-- Change the endpoints of an arrow using equalities. -/
def Hom.cast {u v u' v' : U} (hu : u = u') (hv : v = v') (e : u ⟶ v) : u' ⟶ v' :=
  Eq.ndrec (motive := (· ⟶ v')) (Eq.ndrec e hv) hu

theorem Hom.cast_eq_cast {u v u' v' : U} (hu : u = u') (hv : v = v') (e : u ⟶ v) :
    e.cast hu hv = _root_.cast (by {rw [hu, hv]}) e := by
  subst_vars
  rfl

@[simp]
theorem Hom.cast_rfl_rfl {u v : U} (e : u ⟶ v) : e.cast rfl rfl = e :=
  rfl

@[simp]
theorem Hom.cast_cast {u v u' v' u'' v'' : U} (e : u ⟶ v) (hu : u = u') (hv : v = v')
    (hu' : u' = u'') (hv' : v' = v'') :
    (e.cast hu hv).cast hu' hv' = e.cast (hu.trans hu') (hv.trans hv') := by
  subst_vars
  rfl

theorem Hom.cast_heq {u v u' v' : U} (hu : u = u') (hv : v = v') (e : u ⟶ v) :
    HEq (e.cast hu hv) e := by
  subst_vars
  rfl

theorem Hom.cast_eq_iff_heq {u v u' v' : U} (hu : u = u') (hv : v = v') (e : u ⟶ v) (e' : u' ⟶ v') :
    e.cast hu hv = e' ↔ HEq e e' := by
  rw [Hom.cast_eq_cast]
  exact _root_.cast_eq_iff_heq

theorem Hom.eq_cast_iff_heq {u v u' v' : U} (hu : u = u') (hv : v = v') (e : u ⟶ v) (e' : u' ⟶ v') :
    e' = e.cast hu hv ↔ HEq e' e := by
  rw [eq_comm, Hom.cast_eq_iff_heq]
  exact ⟨HEq.symm, HEq.symm⟩

/-!
### Rewriting paths along equalities of vertices
-/


open Path

/-- Change the endpoints of a path using equalities. -/
def Path.cast {u v u' v' : U} (hu : u = u') (hv : v = v') (p : Path u v) : Path u' v' :=
  Eq.ndrec (motive := (Path · v')) (Eq.ndrec p hv) hu

theorem Path.cast_eq_cast {u v u' v' : U} (hu : u = u') (hv : v = v') (p : Path u v) :
    p.cast hu hv = _root_.cast (by rw [hu, hv]) p := by
  subst_vars
  rfl

@[simp]
theorem Path.cast_rfl_rfl {u v : U} (p : Path u v) : p.cast rfl rfl = p :=
  rfl

@[simp]
theorem Path.cast_cast {u v u' v' u'' v'' : U} (p : Path u v) (hu : u = u') (hv : v = v')
    (hu' : u' = u'') (hv' : v' = v'') :
    (p.cast hu hv).cast hu' hv' = p.cast (hu.trans hu') (hv.trans hv') := by
  subst_vars
  rfl

@[simp]
theorem Path.cast_nil {u u' : U} (hu : u = u') : (Path.nil : Path u u).cast hu hu = Path.nil := by
  subst_vars
  rfl

theorem Path.cast_heq {u v u' v' : U} (hu : u = u') (hv : v = v') (p : Path u v) :
    HEq (p.cast hu hv) p := by
  rw [Path.cast_eq_cast]
  exact _root_.cast_heq _ _

theorem Path.cast_eq_iff_heq {u v u' v' : U} (hu : u = u') (hv : v = v') (p : Path u v)
    (p' : Path u' v') : p.cast hu hv = p' ↔ HEq p p' := by
  rw [Path.cast_eq_cast]
  exact _root_.cast_eq_iff_heq

theorem Path.eq_cast_iff_heq {u v u' v' : U} (hu : u = u') (hv : v = v') (p : Path u v)
    (p' : Path u' v') : p' = p.cast hu hv ↔ HEq p' p :=
  ⟨fun h => ((p.cast_eq_iff_heq hu hv p').1 h.symm).symm, fun h =>
    ((p.cast_eq_iff_heq hu hv p').2 h.symm).symm⟩

theorem Path.cast_cons {u v w u' w' : U} (p : Path u v) (e : v ⟶ w) (hu : u = u') (hw : w = w') :
    (p.cons e).cast hu hw = (p.cast hu rfl).cons (e.cast rfl hw) := by
  subst_vars
  rfl

theorem cast_eq_of_cons_eq_cons {u v v' w : U} {p : Path u v} {p' : Path u v'} {e : v ⟶ w}
    {e' : v' ⟶ w} (h : p.cons e = p'.cons e') : p.cast rfl (obj_eq_of_cons_eq_cons h) = p' := by
  rw [Path.cast_eq_iff_heq]
  exact heq_of_cons_eq_cons h

theorem hom_cast_eq_of_cons_eq_cons {u v v' w : U} {p : Path u v} {p' : Path u v'} {e : v ⟶ w}
    {e' : v' ⟶ w} (h : p.cons e = p'.cons e') : e.cast (obj_eq_of_cons_eq_cons h) rfl = e' := by
  rw [Hom.cast_eq_iff_heq]
  exact hom_heq_of_cons_eq_cons h

theorem eq_nil_of_length_zero {u v : U} (p : Path u v) (hzero : p.length = 0) :
    p.cast (eq_of_length_zero p hzero) rfl = Path.nil := by
  cases p
  · rfl
  · simp only [Nat.succ_ne_zero, length_cons] at hzero

end Quiver
