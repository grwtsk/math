# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ObservationRepresentationFixtures.Variant02c2a8b5f2339873e576487624f9e347841f6b1597408c93d05e7633be6d4afd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8aa5ac7e30068b21dcc86256558119f782d3ed09` · SHA-256 `02c2a8b5f2339873e576487624f9e347841f6b1597408c93d05e7633be6d4afd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.ObservationRepresentation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures

/-!
# Empty-state obstruction and executable catalog reconstruction

The negative fixture uses the unchanged total-map factorization contract. The
positive fixture compresses the actual K1--K9 catalog Atom, Tag(Atom), Tag(Tag(Atom))
by its checked nonidentity interpretation. It supplies executable representatives;
the observational class of Atom also contains Tag(Tag(Atom)), so representatives
are not unique as states. All five universe roles are tested independently.

Human research direction and evaluation: grwtsk contributors.
Implementation assistance: Codex AI.
-/

namespace FormalResearch.PositiveAtlas.ObservationRepresentationFixtures

universe u v w a b

/-- With neither states nor observables, sufficiency places no carrier restriction. -/
def emptyFamily : CertificateFamily (ULift.{u} Empty) (ULift.{v} Empty) where
  value := fun _ => ULift.{w} Unit
  observe := fun i => i.down.elim

/-- The empty carrier is sufficient when compression has an empty domain. -/
def emptyRepresentation : SufficientRepresentation.{u, v, w, a} emptyFamily where
  carrier := ULift.{a} Empty
  compress := fun s => s.down.elim
  recover := fun i => i.down.elim
  recover_compress := fun i => i.down.elim

/-- So is a carrier with one unreachable point. -/
def unitRepresentation : SufficientRepresentation.{u, v, w, b} emptyFamily where
  carrier := ULift.{b} Unit
  compress := fun s => s.down.elim
  recover := fun i => i.down.elim
  recover_compress := fun i => i.down.elim

/-- Vacuous sufficient recovery does not produce a total map from Unit to Empty. -/
theorem empty_not_factors_through_unit :
    ¬ emptyRepresentation.{u, v, w, a}.FactorsThrough unitRepresentation.{u, v, w, b} := by
  rintro ⟨factor, _⟩
  exact (factor ⟨()⟩).down.elim

theorem empty_not_minimal :
    ¬ SufficientRepresentation.IsMinimal.{u, v, w, a, b}
      emptyRepresentation.{u, v, w, a} := by
  intro minimal
  exact empty_not_factors_through_unit (minimal unitRepresentation)

/-- The reachable image also fails the unchanged minimality definition in this case. -/
theorem empty_reachable_not_minimal :
    ¬ SufficientRepresentation.IsMinimal.{u, v, w, max v w, b}
      emptyFamily.{u, v, w}.reachableRepresentation := by
  intro minimal
  obtain ⟨factor, _⟩ := minimal unitRepresentation
  obtain ⟨state, _⟩ := (factor ⟨()⟩).2
  exact state.down.elim

/-- The full-vector construction still satisfies total minimality on empty states. -/
theorem empty_vectors_minimal :
    SufficientRepresentation.IsMinimal.{u, v, w, max v w, b}
      emptyFamily.{u, v, w}.vectorRepresentation :=
  emptyFamily.vectorRepresentation_minimal

open SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- One actual catalog observation, namely the checked finite interpretation. -/
def catalogFamily : CertificateFamily
    (ULift.{u} (Fin FullFixtures.declaration.catalog.length)) (ULift.{v} Unit) where
  value := fun _ => ULift.{w} (Option ℕ)
  observe := fun _ s => ⟨evaluateTerm FullFixtures.interpreterTable []
    (catalogTermAt FullFixtures.declaration s.down.val)⟩

/-- The executable bit stores the two interpretation classes of this three-term catalog. -/
def catalogRepresentation : SufficientRepresentation.{u, v, w, a} catalogFamily where
  carrier := ULift.{a} Bool
  compress := fun s => ⟨s.down.val == 1⟩
  recover := fun _ r => ⟨if r.down then some 1 else some 0⟩
  recover_compress := by
    intro i s
    rcases s with ⟨s⟩
    fin_cases s <;> rfl

/-- A total factor reads the observed class, including competitor values outside its image. -/
theorem catalogRepresentation_minimal :
    SufficientRepresentation.IsMinimal.{u, v, w, a, b}
      catalogRepresentation.{u, v, w, a} := by
  intro r
  refine ⟨fun point => ⟨(r.recover ⟨()⟩ point).down == some 1⟩, ?_⟩
  funext s
  apply ULift.ext
  change (s.down.val == 1) = ((r.recover ⟨()⟩ (r.compress s)).down == some 1)
  rw [r.recover_compress]
  rcases s with ⟨s⟩
  fin_cases s <;> rfl

/-- Here both codes are reachable, so factorization also yields an actual finite
carrier lower bound. This uses a separate surjectivity argument. -/
theorem catalog_competitor_card_lower_bound
    (r : SufficientRepresentation.{u, v, w, b} catalogFamily)
    [Fintype r.carrier] : 2 ≤ Fintype.card r.carrier := by
  let _ : Fintype catalogRepresentation.{u, v, w, 0}.carrier :=
    inferInstanceAs (Fintype (ULift.{0} Bool))
  obtain ⟨factor, commute⟩ := catalogRepresentation_minimal.{u, v, w, 0, b} r
  have surjective : Function.Surjective factor := by
    rintro ⟨bit⟩
    cases bit
    · exact ⟨r.compress ⟨⟨0, by decide⟩⟩,
        (congrFun commute ⟨⟨0, by decide⟩⟩).symm⟩
    · exact ⟨r.compress ⟨⟨1, by decide⟩⟩,
        (congrFun commute ⟨⟨1, by decide⟩⟩).symm⟩
  have codes_card : Fintype.card catalogRepresentation.{u, v, w, 0}.carrier = 2 :=
    (Fintype.card_congr (Equiv.ulift :
      catalogRepresentation.{u, v, w, 0}.carrier ≃ Bool)).trans Fintype.card_bool
  have lower := Fintype.card_le_of_surjective factor surjective
  rw [codes_card] at lower
  exact lower

/-- Concrete canonical representatives use Atom for false and Tag(Atom) for true. -/
def catalogQuine : StructuralQuine.{u, v, w, a, b} catalogFamily where
  quotient := catalogRepresentation
  reconstruct := fun r => ⟨if r.down then ⟨1, by decide⟩ else ⟨0, by decide⟩⟩
  «section» := by
    rintro ⟨r⟩
    cases r <;> rfl
  reconstruct_equivalent := by
    intro s i
    rcases s with ⟨s⟩
    fin_cases s <;> rfl
  minimal := catalogRepresentation_minimal

/-- Distinct catalog source terms have the same readout and compression. -/
theorem catalog_representatives_not_unique :
    (⟨0, by decide⟩ : Fin FullFixtures.declaration.catalog.length) ≠ ⟨2, by decide⟩ ∧
    catalogRepresentation.{u, v, w, a}.compress ⟨⟨0, by decide⟩⟩ =
      catalogRepresentation.compress ⟨⟨2, by decide⟩⟩ := by
  constructor
  · decide
  · rfl

/-- Apply executable reconstruction to the existing catalog quotient interpretation. -/
theorem catalog_projection_readout (s : ULift.{u} (Fin FullFixtures.declaration.catalog.length)) :
    evaluateTerm FullFixtures.interpreterTable []
      (catalogTermAt FullFixtures.declaration (catalogQuine.{u, v, w, a, b}.project s).down.val) =
      evaluateTerm FullFixtures.interpreterTable []
        (catalogTermAt FullFixtures.declaration s.down.val) := by
  exact congrArg (ULift.down : ULift.{w} (Option ℕ) → Option ℕ)
    (catalogQuine.{u, v, w, a, b}.project_certificate_equivalent s
      (⟨()⟩ : ULift.{v} Unit))

/-- Full vectors can contain observations never produced by the catalog. -/
theorem catalog_vector_not_realizable :
    ¬ Function.Surjective catalogFamily.{u, v, w}.observationVector := by
  intro realizable
  obtain ⟨s, hs⟩ := realizable (fun _ => ⟨none⟩)
  have missing := congrArg ULift.down (congrFun hs ⟨()⟩)
  rcases s with ⟨s⟩
  fin_cases s <;> cases missing

end FormalResearch.PositiveAtlas.ObservationRepresentationFixtures
```
