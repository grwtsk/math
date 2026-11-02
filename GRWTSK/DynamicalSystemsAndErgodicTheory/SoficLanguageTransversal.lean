/- Copyright (c) 2026 grwtsk contributors. MIT.

A source-exact mathematical transversal from the whole finite-factor
language of an exact sofic presentation to actual labeled graph paths.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, and transitive
axiom audit: NOT_RUN. No universal sofic presentation is asserted.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLanguageTransversal

open GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

universe v

/-- A target records two graph endpoints and the entire labeled word. -/
abbrev PathTarget
    {Alphabet : Type v} {language : List Alphabet → Prop}
    (P : ExactLanguagePresentation.{0, v} Alphabet language) :=
  P.State × P.State × List Alphabet

/-- Target admissibility is the actual labeled path relation, not a
similarity score or one arbitrary infinite trace accepted by the graph. -/
def AdmissiblePath
    {Alphabet : Type v} {language : List Alphabet → Prop}
    (P : ExactLanguagePresentation.{0, v} Alphabet language)
    (p : PathTarget P) : Prop :=
  WordPath P.graph p.1 p.2.2 p.2.1

/-- An exact finite-factor-language presentation covers EVERY admitted
source word with a valid labeled graph path. The bridge retains actual
endpoints, the complete word and the graph's path evidence. -/
def wholeLanguageTransversal
    {Alphabet : Type v} {language : List Alphabet → Prop}
    (P : ExactLanguagePresentation.{0, v} Alphabet language) :
    Transversal.{v, v, v} (List Alphabet) (PathTarget P)
      language (AdmissiblePath P)
      (fun word p => word = p.2.2) where
  Bridge := { p : PathTarget P // language p.2.2 ∧ AdmissiblePath P p }
  source := fun z => z.val.2.2
  target := fun z => z.val
  valid := fun _ => True
  source_valid := by
    intro z _
    exact z.property.1
  target_valid := by
    intro z _
    exact z.property.2
  covers_source := by
    intro word hword
    obtain ⟨start, finish, hpath⟩ := (P.exactLanguage word).mp hword
    exact ⟨⟨(start, finish, word), ⟨hword, hpath⟩⟩, True.intro, rfl⟩
  certified := by
    intro z _
    rfl

/-- The converse direction ALSO uses exact language equality: every
admissible target graph path spells a word in the source language. -/
theorem wholeLanguageTransversal_target_coverage
    {Alphabet : Type v} {language : List Alphabet → Prop}
    (P : ExactLanguagePresentation.{0, v} Alphabet language) :
    ∀ p : PathTarget P, AdmissiblePath P p →
      ∃ z : (wholeLanguageTransversal P).Bridge,
        (wholeLanguageTransversal P).valid z ∧
        (wholeLanguageTransversal P).target z = p := by
  intro p hp
  have hword : language p.2.2 :=
    (P.exactLanguage p.2.2).mpr ⟨p.1, p.2.1, hp⟩
  exact ⟨⟨p, ⟨hword, hp⟩⟩, True.intro, rfl⟩

/-- Transport a property of ALL actual graph paths back to the
complete factor language, using the existing canonical transversal's
source-return theorem and an explicit predicate bridge. -/
theorem word_property_of_all_paths
    {Alphabet : Type v} {language : List Alphabet → Prop}
    (P : ExactLanguagePresentation.{0, v} Alphabet language)
    (WordProperty : List Alphabet → Prop)
    (PathProperty : PathTarget P → Prop)
    (hReturn : ∀ word p, word = p.2.2 →
      PathProperty p → WordProperty word)
    (hPaths : ∀ p, AdmissiblePath P p → PathProperty p) :
    ∀ word, language word → WordProperty word :=
  Transversal.source_property_of_target
    (wholeLanguageTransversal P) WordProperty PathProperty hReturn hPaths

/-- Transport a source-word property to every graph path only after
proving target coverage. This is invalid for a merely source-covered
non-surjective observation, as the canonical Boolean fixture shows. -/
theorem path_property_of_all_words
    {Alphabet : Type v} {language : List Alphabet → Prop}
    (P : ExactLanguagePresentation.{0, v} Alphabet language)
    (WordProperty : List Alphabet → Prop)
    (PathProperty : PathTarget P → Prop)
    (hForward : ∀ word p, word = p.2.2 →
      WordProperty word → PathProperty p)
    (hWords : ∀ word, language word → WordProperty word) :
    ∀ p, AdmissiblePath P p → PathProperty p :=
  Transversal.target_property_of_source_with_target_coverage
    (wholeLanguageTransversal P) WordProperty PathProperty
    (wholeLanguageTransversal_target_coverage P) hForward hWords

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLanguageTransversal
