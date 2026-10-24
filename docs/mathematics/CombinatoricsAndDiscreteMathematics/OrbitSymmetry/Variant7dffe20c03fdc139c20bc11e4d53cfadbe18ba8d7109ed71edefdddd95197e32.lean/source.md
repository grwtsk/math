# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrbitSymmetry.Variant7dffe20c03fdc139c20bc11e4d53cfadbe18ba8d7109ed71edefdddd95197e32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6fb311ca6429a226a760dfb32ed3022c6f7ccf0` · SHA-256 `b72e84db009580e8ec24ebc60e51bc9a6a079fae71cf1ab9ef58150a9f280472`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AutomorphismInvariantLabel.Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AutomorphismInvariantLabel.Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/OrbitSymmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.Equivariance

/-!
# Orbit, stabilizer, and Reynolds symmetry

The orbit quotient remembers invariant observables.  The crossed product
remembers those observables together with the transformations joining their
representatives.  This module makes that separation explicit and records the
finite Reynolds and orbit--stabilizer laws as certificate fields.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AutomorphismInvariantLabel.Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864

namespace Mathematics.ConnesBitfield

open scoped BigOperators

abbrev BitfieldObservable
    (system : RandomBitfieldSystem) :=
  Bitfield system.bits → ℂ

def bitfieldObservableAction
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (automorphism : model.Automorphism)
    (observable : BitfieldObservable system) :
    BitfieldObservable system :=
  fun state =>
    observable
      (model.action.act automorphism⁻¹ state)

def AutomorphismInvariantObservable
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system) : Prop :=
  ∀ automorphism state,
    observable
        (model.action.act automorphism state) =
      observable state

noncomputable def reynoldsProjection
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system) :
    BitfieldObservable system := by
  classical
  exact fun state =>
    (Fintype.card model.Automorphism : ℂ)⁻¹ *
      ∑ automorphism,
        bitfieldObservableAction
          model automorphism observable state

noncomputable def nontrivialSymmetryComponent
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system) :
    BitfieldObservable system :=
  fun state =>
    observable state -
      reynoldsProjection model observable state

def OrbitEquivalent
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (left right : Bitfield system.bits) : Prop :=
  ∃ automorphism,
    model.action.act automorphism left = right

def bitfieldOrbitSetoid
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) :
    Setoid (Bitfield system.bits) where
  r := OrbitEquivalent model
  iseqv := by
    constructor
    · intro state
      exact ⟨1, model.action.identity state⟩
    · intro left right related
      rcases related with
        ⟨automorphism, transformed⟩
      refine ⟨automorphism⁻¹, ?_⟩
      rw [← transformed,
        ← model.action.compatible,
        inv_mul,
        model.action.identity]
    · intro first second third
        firstRelated secondRelated
      rcases firstRelated with
        ⟨firstAutomorphism, firstTransformed⟩
      rcases secondRelated with
        ⟨secondAutomorphism, secondTransformed⟩
      refine
        ⟨secondAutomorphism * firstAutomorphism, ?_⟩
      rw [model.action.compatible,
        firstTransformed,
        secondTransformed]

abbrev BitfieldOrbitQuotient
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) :=
  Quotient (bitfieldOrbitSetoid model)

noncomputable def automorphismOrbit
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (state : Bitfield system.bits) :
    Finset (Bitfield system.bits) := by
  classical
  exact
    Finset.univ.image
      (fun automorphism =>
        model.action.act automorphism state)

noncomputable def automorphismStabilizer
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (state : Bitfield system.bits) :
    Finset model.Automorphism := by
  classical
  exact
    Finset.univ.filter
      (fun automorphism =>
        model.action.act automorphism state = state)

/--
A semantic or arithmetic label that is constant on automorphism orbits.
This is the exact form of the claim that an automorphism changes a
presentation without changing its registered role.
-/
structure AutomorphismInvariantLabel
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (Label : Type*) where
  label : Bitfield system.bits → Label
  invariant :
    ∀ automorphism state,
      label (model.action.act automorphism state) =
        label state

noncomputable def descendInvariantObservable
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system)
    (invariant :
      AutomorphismInvariantObservable
        model observable) :
    BitfieldOrbitQuotient model → ℂ :=
  Quotient.lift observable (by
    intro left right related
    rcases related with
      ⟨automorphism, transformed⟩
    rw [← transformed]
    exact (invariant automorphism left).symm)

@[simp] theorem descendInvariantObservable_mk
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system)
    (invariant :
      AutomorphismInvariantObservable
        model observable)
    (state : Bitfield system.bits) :
    descendInvariantObservable
        model observable invariant
        (Quotient.mk
          (bitfieldOrbitSetoid model) state) =
      observable state :=
  rfl

/--
The finite symmetry laws needed to identify quotient observables, separate
nontrivial modes, and retain local stabilizer data.
-/
structure OrbitReynoldsCertificate
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) where
  reynoldsInvariant :
    ∀ observable,
      AutomorphismInvariantObservable
        model
        (reynoldsProjection model observable)
  reynoldsIdempotent :
    ∀ observable,
      reynoldsProjection model
          (reynoldsProjection model observable) =
        reynoldsProjection model observable
  reynoldsFixesInvariant :
    ∀ observable,
      AutomorphismInvariantObservable
          model observable →
      reynoldsProjection model observable =
        observable
  complementProjectsToZero :
    ∀ observable,
      reynoldsProjection model
          (nontrivialSymmetryComponent
            model observable) =
        0
  expectationInvariant :
    ∀ automorphism observable,
      system.law.expectation
          (bitfieldObservableAction
            model automorphism observable) =
        system.law.expectation observable
  reynoldsPreservesExpectation :
    ∀ observable,
      system.law.expectation
          (reynoldsProjection model observable) =
        system.law.expectation observable
  quotientObservableCharacterization :
    ∀ observable,
      AutomorphismInvariantObservable
          model observable ↔
        ∀ left right,
          OrbitEquivalent model left right →
          observable left = observable right
  orbitStabilizer :
    ∀ state,
      (automorphismOrbit model state).card *
          (automorphismStabilizer model state).card =
        Fintype.card model.Automorphism

end Mathematics.ConnesBitfield
```
