/-
SPDX-License-Identifier: Apache-2.0
Original source: OpenAI OAI repository, commit
adc7f1241b42e322a6451854ab7e4b4c146bf78a.
https://github.com/openai/math
See LICENSE in this directory for the original Apache 2.0 license.
Modification: imports relocated to FormalResearch.TypeTheory.PureTypeSystem.
Original OAI.PureTypeSystem declaration names are preserved.
Auxiliary interfaces_of_exclusion, finite_normalization_of_exclusion and
relational_exclusion generalize [Fintype S] to [Finite S] with local proof
instances. The required weak_implies_strong type is preserved exactly.
Original auxiliary types remain in the unchanged original replay evidence.
Human adaptation direction and evaluation: grwtsk contributors.
Import relocation and compatibility replay: Codex.
-/

import FormalResearch.TypeTheory.PureTypeSystem.Restriction
import FormalResearch.TypeTheory.PureTypeSystem.Components
import FormalResearch.TypeTheory.PureTypeSystem.Signed
import FormalResearch.TypeTheory.PureTypeSystem.OneChild
import FormalResearch.TypeTheory.PureTypeSystem.ObservationCandidates
import FormalResearch.TypeTheory.PureTypeSystem.Diagonal

namespace OAI

namespace PureTypeSystem

section
universe u

open Classical in
/-- Relational exclusion for finite profile components. This internal
proposition is proved from weak normalization, not assumed in the main theorem. -/
def RelationalExclusion {S : Type u} (P : Specification S) : Prop :=
  ∀ C, IsComponent (PrimaryEdge P) C →
    (∃ I ∈ C, SignedPath (PrimaryEdge P) I I true) →
    (∃ I J K, ProfileTriple P I J K ∧ I ∈ C ∧ J ∈ C ∧ K ∈ C) →
    ¬ ForbiddenConfiguration P C

open Classical in
/-- All three actual candidate models are selected using the exact source case
split. The exclusion interface is isolated, not hidden in a candidate law. -/
theorem interfaces_of_exclusion {S : Type u} [Finite S] {P : Specification S}
    (Ω : ContextTower P) (hw : SystemWeaklyNormalizing P) (he : RelationalExclusion P)
    (C : Set (Set S)) (hC : IsComponent (PrimaryEdge P) C) :
    Nonempty (ComponentInterface.{u, u} Ω hw C) := by
  let _ := Fintype.ofFinite S
  by_cases ho : ∃ I ∈ C, SignedPath (PrimaryEdge P) I I true
  · by_cases ht : ∃ I J K, ProfileTriple P I J K ∧ I ∈ C ∧ J ∈ C ∧ K ∈ C
    · exact ⟨ObservationValues.componentInterface Ω C (he C hC ho ht) hC⟩
    · exact ⟨OneChildInterpretation.componentInterface Ω C hw hC
        (fun h hi hj hk => ht ⟨_,_,_,h,hi,hj,hk⟩)⟩
  · exact ⟨SignedInterpretation.componentInterface Ω hC hw
      (fun I hi hp => ho ⟨I,hi,hp⟩)⟩

open Classical in
theorem finite_normalization_of_exclusion {S : Type u} [Finite S] {P : Specification S}
    (hw : SystemWeaklyNormalizing P) (he : RelationalExclusion P) :
    SystemStronglyNormalizing P := by
  let _ := Fintype.ofFinite S
  apply stronglyNormalizing_of_application
  intro Γ f a D E hf ha hsf hsa
  obtain ⟨s,t,hat⟩ := hf.has_axiom
  let Ω := ContextTowerConstruction.tower P hat
  exact application_sn_of_ground Ω hw
    (all_ground_eq_top Ω hw (interfaces_of_exclusion Ω hw he)) hf ha hsf hsa

open Classical in
/-- Finite restriction retains open contexts, annotations and every source rule.
This closes the main theorem once the typed relational exclusion is proved for
finite specifications. No finite-only conclusion is substituted for the main. -/
theorem normalization_of_finite_exclusion
    (exclude : ∀ (S : Type u) [Fintype S] (P : Specification S),
      SystemWeaklyNormalizing P → RelationalExclusion P)
    {S : Type u} {P : Specification S} (hw : SystemWeaklyNormalizing P) :
    SystemStronglyNormalizing P := by
  by_contra hn
  obtain ⟨Γ,f,a,D,E,hf,ha,hsf,hsa,hbad⟩ := exists_bad_application hn
  have htype := HasType.application hf ha
  obtain ⟨F,Γ',M',T',ht,hn',hw'⟩ := htype.finite_counterexample hbad hw
  have hsn := finite_normalization_of_exclusion hw' (exclude _ _ hw')
  exact hn' (hsn Γ' ht.valid M' ⟨T',.inl ht⟩)

end

universe u
open Labelled
/-- Relational exclusion via the concrete illative encoding
in the actual finite ambient context, not supplied as an axiom. -/
theorem relational_exclusion {S : Type u} [Finite S] {P : Specification S}
    (hw : SystemWeaklyNormalizing P) : RelationalExclusion P := by
  let _ := Fintype.ofFinite S
  intro C hC ho ht hf
  obtain ⟨Γ,γ,hΓ,⟨L⟩⟩ := LogicSetup.exists_setup C hC ho ht
  obtain ⟨K,⟨R⟩⟩ := ChannelSetup.exists_setup_return (L := L) hC ho hf
  let KY := L.quantifiers K.logicalVertex K.directLogical
  let KP := L.quantifiers K.predVertex K.directPred
  obtain ⟨b,hb,mb⟩ := R.specialized_formed.relational_bottom KY KP
  exact no_proof_at_target hw hΓ
    ⟨.terminal (L.witnesses.allData L.base L.triple.codomain),L.witnesses.normal L.base
      L.triple.codomain⟩ hb mb

/-- System-wide weak normalization implies strong normalization for every PTS,
including arbitrary sort types, nonfunctional rules and annotated terms. -/
theorem weak_implies_strong {S : Type u} (P : Specification S)
    (h : SystemWeaklyNormalizing P) : SystemStronglyNormalizing P :=
  normalization_of_finite_exclusion (fun _ _ _ hw => relational_exclusion hw) h
end PureTypeSystem

end OAI
