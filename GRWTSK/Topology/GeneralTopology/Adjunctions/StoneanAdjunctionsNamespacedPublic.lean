-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StoneCechObj.Variant14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StoneCechObj.Variant14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/Stonean/Adjunctions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Topology.Category.Stonean.Basic
public import Mathlib.Topology.Category.TopCat.Adjunctions
public import Mathlib.Topology.Compactification.StoneCech

/-!
# Adjunctions involving the category of Stonean spaces

This file constructs the left adjoint `typeToStonean` to the forgetful functor from Stonean spaces
to sets, using the Stone-Cech compactification. This allows to conclude that the monomorphisms in
`Stonean` are precisely the injective maps (see `Stonean.mono_iff_injective`).
-/


namespace GRWTSK.Topology.GeneralTopology.StoneCechObj.Variant14e4cc36f616f74530b3b48d343a20624720692369e55cc17d0cc68aa8f8f53d

@[expose] public section

universe u

open CategoryTheory Adjunction

namespace Stonean

/-- The object part of the compactification functor from types to Stonean spaces. -/
def stoneCechObj (X : Type u) : Stonean :=
  letI : TopologicalSpace X := ⊥
  haveI : DiscreteTopology X := ⟨rfl⟩
  haveI : ExtremallyDisconnected (StoneCech X) :=
    CompactT2.Projective.extremallyDisconnected StoneCech.projective
  of (StoneCech X)

/-- The equivalence of homsets to establish the adjunction between the Stone-Cech compactification
functor and the forgetful functor. -/
noncomputable def stoneCechEquivalence (X : Type u) (Y : Stonean.{u}) :
    (stoneCechObj X ⟶ Y) ≃ (X ⟶ Y) := by
  letI : TopologicalSpace X := ⊥
  haveI : DiscreteTopology X := ⟨rfl⟩
  refine fullyFaithfulToCompHaus.homEquiv.trans ?_
  exact (_root_.stoneCechEquivalence ↧X (toCompHaus.obj Y)).trans
    (TopCat.adj₁.homEquiv _ _)

end Stonean

/-- The Stone-Cech compactification functor from types to Stonean spaces. -/
noncomputable def typeToStonean : Type u ⥤ Stonean.{u} :=
  leftAdjointOfEquiv (G := forget _) Stonean.stoneCechEquivalence fun _ _ _ _ _ => rfl

namespace Stonean

/-- The Stone-Cech compactification functor is left adjoint to the forgetful functor. -/
noncomputable def stoneCechAdjunction : typeToStonean ⊣ (forget Stonean) :=
  adjunctionOfEquivLeft (G := forget _) stoneCechEquivalence fun _ _ _ _ _ => rfl

/-- The forgetful functor from Stonean spaces, being a right adjoint, preserves limits. -/
noncomputable instance forget.preservesLimits : Limits.PreservesLimits (forget Stonean) :=
  rightAdjoint_preservesLimits stoneCechAdjunction

end Stonean
