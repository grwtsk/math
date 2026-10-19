/-!
# General boundary calculus

This file proves the abstract boundary calculus in two equivalent forms.

1. Dependent type theory:
   a boundary claim indexed by context and boundary kind can be used only after
   it factors through an explicit certificate family.

2. Categorical logic:
   predicates are subobjects; a boundary crossing factors through the certificate
   subobject, and the certificate subobject factors through the claim subobject.

No analytic theorem is assumed or proved here. The theorem is architectural:
finite or lower-layer evidence does not cross an authority boundary except by an
explicit proof-carrying certificate.
-/

universe u v w x y

namespace Authority.BoundaryCalculus

/-- A proof-carrying token for a proposition. -/
structure ProofCertificate (P : Prop) where
  proof : P

/-- Existence of a proof-carrying token. -/
def HasCertificate (P : Prop) : Prop :=
  Nonempty (ProofCertificate P)

/-- A proof-carrying token exposes exactly its certified proposition. -/
theorem certificate_sound {P : Prop} (h : HasCertificate P) : P := by
  cases h with
  | intro c =>
      exact c.proof

/-
Dependent-type-theoretic boundary calculus.
-/

/--
A dependent type theoretic boundary model.

`Context` is the type of lower-layer contexts or finite shadows.

`Boundary` is the type of authority boundaries.

`Claim Γ b` is the type of claims available at boundary `b` over context `Γ`.

`Holds q` is the semantic proposition asserted by claim `q`.

`Owns Γ b q` means the lower layer is being treated as owning claim `q`.

`DirectOwns Γ b q` means it owns the claim without passing through a certificate.

`CertificateFor Γ b q` is the explicit certificate family for the claim.

The two key axioms of a boundary model are:

* `ownsFactors`: ownership factors through the certificate family.
* `noDirectCrossing`: direct ownership is impossible.
-/
structure DTT where
  Context : Type u
  Boundary : Type v
  Claim : Context → Boundary → Type w

  Holds :
    {Γ : Context} →
    {b : Boundary} →
    Claim Γ b → Prop

  FiniteEvidence : Context → Type x

  Owns :
    (Γ : Context) →
    (b : Boundary) →
    Claim Γ b → Prop

  DirectOwns :
    (Γ : Context) →
    (b : Boundary) →
    Claim Γ b → Prop

  CertificateFor :
    (Γ : Context) →
    (b : Boundary) →
    Claim Γ b → Type y

  certificateSound :
    {Γ : Context} →
    {b : Boundary} →
    {q : Claim Γ b} →
    CertificateFor Γ b q →
    Holds q

  ownsFactors :
    {Γ : Context} →
    {b : Boundary} →
    {q : Claim Γ b} →
    Owns Γ b q →
    Nonempty (CertificateFor Γ b q)

  noDirectCrossing :
    {Γ : Context} →
    {b : Boundary} →
    {q : Claim Γ b} →
    ¬ DirectOwns Γ b q

namespace DTT

/-- A claim is certified when the corresponding certificate family is inhabited. -/
def Certified
    (T : DTT)
    {Γ : T.Context}
    {b : T.Boundary}
    (q : T.Claim Γ b) : Prop :=
  Nonempty (T.CertificateFor Γ b q)

/-- In any boundary model, an explicit certificate proves its semantic claim. -/
theorem certificate_sound
    (T : DTT)
    {Γ : T.Context}
    {b : T.Boundary}
    {q : T.Claim Γ b}
    (h : T.Certified q) :
    T.Holds q := by
  cases h with
  | intro c =>
      exact T.certificateSound c

/--
Dependent-type-theoretic boundary calculus.

If a lower layer is treated as owning a boundary claim, then that ownership
must factor through an explicit certificate, and the certificate proves the claim.
-/
theorem boundary_calculus
    (T : DTT)
    {Γ : T.Context}
    {b : T.Boundary}
    {q : T.Claim Γ b}
    (hOwns : T.Owns Γ b q) :
    T.Holds q := by
  apply certificate_sound T
  exact T.ownsFactors hOwns

/-- Direct lower-layer crossing of an authority boundary is impossible. -/
theorem no_direct_crossing
    (T : DTT)
    {Γ : T.Context}
    {b : T.Boundary}
    {q : T.Claim Γ b} :
    ¬ T.DirectOwns Γ b q :=
  T.noDirectCrossing

/--
The total index type of all context-boundary-claim triples in a boundary model.
-/
def Index (T : DTT) :=
  Sigma (fun Γ : T.Context =>
    Sigma (fun b : T.Boundary =>
      T.Claim Γ b))

/-- The semantic predicate on the total claim index. -/
def HoldsPred (T : DTT) : Index T → Prop
  | ⟨_, ⟨_, q⟩⟩ => T.Holds q

/-- The ownership predicate on the total claim index. -/
def OwnsPred (T : DTT) : Index T → Prop
  | ⟨Γ, ⟨b, q⟩⟩ => T.Owns Γ b q

/-- The direct-ownership predicate on the total claim index. -/
def DirectPred (T : DTT) : Index T → Prop
  | ⟨Γ, ⟨b, q⟩⟩ => T.DirectOwns Γ b q

/-- The certified predicate on the total claim index. -/
def CertifiedPred (T : DTT) : Index T → Prop
  | ⟨Γ, ⟨b, q⟩⟩ => Nonempty (T.CertificateFor Γ b q)

/-- Indexed form of certificate soundness. -/
theorem certified_pred_sound
    (T : DTT) :
    ∀ i : Index T, CertifiedPred T i → HoldsPred T i := by
  intro i h
  cases i with
  | mk Γ rest =>
      cases rest with
      | mk b q =>
          exact certificate_sound T h

/-- Indexed form of the dependent-type-theoretic boundary calculus. -/
theorem owns_pred_sound
    (T : DTT) :
    ∀ i : Index T, OwnsPred T i → HoldsPred T i := by
  intro i h
  cases i with
  | mk Γ rest =>
      cases rest with
      | mk b q =>
          exact boundary_calculus T h

/-- Indexed form of the no-direct-crossing theorem. -/
theorem direct_pred_false
    (T : DTT) :
    ∀ i : Index T, ¬ DirectPred T i := by
  intro i
  cases i with
  | mk Γ rest =>
      cases rest with
      | mk b q =>
          exact no_direct_crossing T

end DTT

/-
Categorical-logic version.
-/

namespace CategoricalLogic

/--
A minimal category interface.

Only the data needed for subobject factorization is included.
-/
class Category (Obj : Type u) where
  Hom : Obj → Obj → Type v
  id : {X : Obj} → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z

  id_comp :
    ∀ {X Y : Obj} (f : Hom X Y),
      comp (id (X := X)) f = f

  comp_id :
    ∀ {X Y : Obj} (f : Hom X Y),
      comp f (id (X := Y)) = f

  assoc :
    ∀ {W X Y Z : Obj}
      (f : Hom W X)
      (g : Hom X Y)
      (h : Hom Y Z),
      comp (comp f g) h = comp f (comp g h)

infixr:10 " ⟶ " => Category.Hom
infixr:80 " ≫ " => Category.comp

/-- The category of types and functions. -/
instance typeCategory : Category (Type u) where
  Hom X Y := X → Y
  id := fun x => x
  comp f g := fun x => g (f x)
  id_comp := by
    intro X Y f
    rfl
  comp_id := by
    intro X Y f
    rfl
  assoc := by
    intro V W X Y f g h
    rfl

/-- A subobject of `X`, represented by a carrier and an arrow into `X`. -/
structure Subobject
    {Obj : Type u}
    [Category Obj]
    (X : Obj) where
  carrier : Obj
  arrow : carrier ⟶ X

/-- Inclusion of subobjects: `S ≤ T` means `S` factors through `T`. -/
structure SubobjectLE
    {Obj : Type u}
    [Category Obj]
    {X : Obj}
    (S T : Subobject X) where
  hom : S.carrier ⟶ T.carrier
  comm : hom ≫ T.arrow = S.arrow

/-- A morphism `f : A ⟶ X` factors through a subobject of `X`. -/
structure FactorsThrough
    {Obj : Type u}
    [Category Obj]
    {A X : Obj}
    (f : A ⟶ X)
    (S : Subobject X) where
  lift : A ⟶ S.carrier
  comm : lift ≫ S.arrow = f

/-- Transitivity of subobject inclusion. This constructs the composite
inclusion, so it is a `def`, not a `theorem`. -/
def subobjectLE_trans
    {Obj : Type u}
    [Category Obj]
    {X : Obj}
    {S T U : Subobject X}
    (hST : SubobjectLE S T)
    (hTU : SubobjectLE T U) :
    SubobjectLE S U := by
  refine ⟨hST.hom ≫ hTU.hom, ?_⟩
  calc
    (hST.hom ≫ hTU.hom) ≫ U.arrow
        = hST.hom ≫ (hTU.hom ≫ U.arrow) := by
          rw [Category.assoc]
    _ = hST.hom ≫ T.arrow := by
          rw [hTU.comm]
    _ = S.arrow := hST.comm

/--
Categorical-logic boundary calculus.

If the certificate subobject is included in the claim subobject, then any
boundary-crossing morphism that factors through the certificate subobject also
factors through the claim subobject.

This constructs the factorization, so it is a `def`, not a `theorem`.
-/
def boundary_calculus
    {Obj : Type u}
    [Category Obj]
    {A X : Obj}
    {claim certificate : Subobject X}
    (hle : SubobjectLE certificate claim)
    {f : A ⟶ X}
    (hf : FactorsThrough f certificate) :
    FactorsThrough f claim := by
  refine ⟨hf.lift ≫ hle.hom, ?_⟩
  calc
    (hf.lift ≫ hle.hom) ≫ claim.arrow
        = hf.lift ≫ (hle.hom ≫ claim.arrow) := by
          rw [Category.assoc]
    _ = hf.lift ≫ certificate.arrow := by
          rw [hle.comm]
    _ = f := hf.comm

/-- A predicate as a subobject in the category of types. -/
def predicateSubobject
    {A : Type u}
    (P : A → Prop) :
    Subobject (X := A) where
  carrier := {a : A // P a}
  arrow := fun a => a.val

/-- Logical implication gives subobject inclusion. -/
def predicateSubobjectLE
    {A : Type u}
    {P Q : A → Prop}
    (h : ∀ a, P a → Q a) :
    SubobjectLE
      (predicateSubobject P)
      (predicateSubobject Q) where
  hom := fun a => ⟨a.val, h a.val a.property⟩
  comm := rfl

/--
Categorical logic is equivalent to predicate implication in the type category.

This is the bridge from dependent type theory to categorical logic:
a dependent implication is the same data as inclusion of the corresponding
predicate subobjects.
-/
theorem predicate_subobject_inclusion_equiv
    {A : Type u}
    {P Q : A → Prop} :
    (∀ a, P a → Q a) ↔
      Nonempty
        (SubobjectLE
          (predicateSubobject P)
          (predicateSubobject Q)) := by
  constructor
  · intro h
    exact ⟨predicateSubobjectLE h⟩
  · intro h a hp
    cases h with
    | intro hle =>
        let x : {a : A // P a} := ⟨a, hp⟩
        have hx0 := congrFun hle.comm x
        change (hle.hom x).val = x.val at hx0
        have hq : Q ((hle.hom x).val) := (hle.hom x).property
        have hq_at_x : Q x.val := hx0 ▸ hq
        exact hq_at_x

end CategoricalLogic

/-
Equivalence of the two presentations.
-/

namespace DTT

open CategoricalLogic

/--
Certificate soundness in dependent type theory is equivalent to inclusion of
the certified subobject into the claim subobject.
-/
theorem certificate_sound_equiv_categorical_logic
    (T : DTT) :
    (∀ i : Index T, CertifiedPred T i → HoldsPred T i) ↔
      Nonempty
        (SubobjectLE
          (predicateSubobject (CertifiedPred T))
          (predicateSubobject (HoldsPred T))) := by
  exact CategoricalLogic.predicate_subobject_inclusion_equiv

/--
Ownership soundness in dependent type theory is equivalent to inclusion of
the ownership subobject into the claim subobject.
-/
theorem ownership_sound_equiv_categorical_logic
    (T : DTT) :
    (∀ i : Index T, OwnsPred T i → HoldsPred T i) ↔
      Nonempty
        (SubobjectLE
          (predicateSubobject (OwnsPred T))
          (predicateSubobject (HoldsPred T))) := by
  exact CategoricalLogic.predicate_subobject_inclusion_equiv

/-- Categorical version of `Owns → Certified`. -/
theorem owns_le_cert_categorical
    (T : DTT) :
    Nonempty
      (SubobjectLE
        (predicateSubobject (OwnsPred T))
        (predicateSubobject (CertifiedPred T))) := by
  apply CategoricalLogic.predicate_subobject_inclusion_equiv.mp
  intro i h
  cases i with
  | mk Γ rest =>
      cases rest with
      | mk b q =>
          exact T.ownsFactors h

/-- Categorical version of `Certified → Holds`. -/
theorem cert_le_holds_categorical
    (T : DTT) :
    Nonempty
      (SubobjectLE
        (predicateSubobject (CertifiedPred T))
        (predicateSubobject (HoldsPred T))) := by
  apply CategoricalLogic.predicate_subobject_inclusion_equiv.mp
  exact certified_pred_sound T

/--
The categorical boundary calculus obtained from the dependent-type-theoretic
model.

The ownership subobject factors through the certified subobject, and the
certified subobject factors through the claim subobject. Therefore ownership
factors through the claim subobject.
-/
theorem owns_le_holds_by_categorical_logic
    (T : DTT) :
    Nonempty
      (SubobjectLE
        (predicateSubobject (OwnsPred T))
        (predicateSubobject (HoldsPred T))) := by
  cases owns_le_cert_categorical T with
  | intro hOwnCert =>
      cases cert_le_holds_categorical T with
      | intro hCertHolds =>
          exact ⟨CategoricalLogic.subobjectLE_trans hOwnCert hCertHolds⟩

/--
Final equivalence theorem.

The dependent-type-theoretic boundary theorem and the categorical-logic
subobject theorem are equivalent formulations of the same boundary calculus.
-/
theorem boundary_calculus_equiv_categorical_logic
    (T : DTT) :
    (∀ i : Index T, OwnsPred T i → HoldsPred T i) ↔
      Nonempty
        (SubobjectLE
          (predicateSubobject (OwnsPred T))
          (predicateSubobject (HoldsPred T))) :=
  ownership_sound_equiv_categorical_logic T

/--
Categorical no-direct-crossing form.

The direct-ownership predicate is included in the empty predicate.
-/
theorem no_direct_crossing_as_empty_subobject
    (T : DTT) :
    Nonempty
      (SubobjectLE
        (predicateSubobject (DirectPred T))
        (predicateSubobject (fun _ : Index T => False))) := by
  apply CategoricalLogic.predicate_subobject_inclusion_equiv.mp
  intro i h
  exact (direct_pred_false T i) h

end DTT

end Authority.BoundaryCalculus
