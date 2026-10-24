import DAF.Comparison.Composition
import DAF.Comparison.Construction

/-!
# Finite typed comparison chains

The endpoint indices make ill-typed function composition unrepresentable.
`Chain.composite` deliberately returns only a map: certification across
coefficient regimes is separately gated by `Certified.comp` or
`Certified.compWithCoefficientChange`.  The assumptions and component claims
remain visible as finite conjunctions.

Representation-indexed composition is also explicit below; no representation
parameter is existentially hidden.
-/

namespace DAF.Comparison

universe u v w

/-- A finite, endpoint-indexed chain of certified comparison arrows. -/
inductive Chain : (A B : Type u) → Nat → Type (u + 1)
  | nil (A : Type u) : Chain A A 0
  | cons {A B C : Type u} {n : Nat}
      (head : Certified A B)
      (tail : Chain B C n) : Chain A C (n + 1)

namespace Chain

/-- The underlying composite map.  This operation makes no composite claim. -/
def composite : {A B : Type u} → {n : Nat} → Chain A B n → Spec A B
  | _, _, _, .nil A => Spec.id A
  | _, _, _, .cons head tail => tail.composite.comp head.spec

/-- Conjunction of every retained component hypothesis. -/
def assumptions : {A B : Type u} → {n : Nat} → Chain A B n → Prop
  | _, _, _, .nil _ => True
  | _, _, _, .cons head tail => head.Assumptions ∧ tail.assumptions

/-- Conjunction of every stated component property. -/
def property : {A B : Type u} → {n : Nat} → Chain A B n → Prop
  | _, _, _, .nil _ => True
  | _, _, _, .cons head tail => head.Property ∧ tail.property

/-- Component certificates prove the conjunction of component properties. -/
theorem certified : {A B : Type u} → {n : Nat} →
    (chain : Chain A B n) → chain.assumptions → chain.property
  | _, _, _, .nil _, _ => trivial
  | _, _, _, .cons head tail, h =>
      ⟨head.certified h.1, tail.certified h.2⟩

@[simp]
theorem composite_nil (A : Type u) :
    (Chain.nil A).composite = Spec.id A :=
  rfl

@[simp]
theorem composite_cons
    (head : Certified A B) (tail : Chain B C n) :
    (Chain.cons head tail).composite = tail.composite.comp head.spec :=
  rfl

@[simp]
theorem composite_apply
    (head : Certified A B) (tail : Chain B C n) (a : A) :
    (Chain.cons head tail).composite.map a =
      tail.composite.map (head.spec.map a) :=
  rfl

@[simp]
theorem assumptions_nil (A : Type u) :
    (Chain.nil A).assumptions = True :=
  rfl

@[simp]
theorem assumptions_cons
    (head : Certified A B) (tail : Chain B C n) :
    (Chain.cons head tail).assumptions =
      (head.Assumptions ∧ tail.assumptions) :=
  rfl

@[simp]
theorem property_nil (A : Type u) :
    (Chain.nil A).property = True :=
  rfl

@[simp]
theorem property_cons
    (head : Certified A B) (tail : Chain B C n) :
    (Chain.cons head tail).property =
      (head.Property ∧ tail.property) :=
  rfl

end Chain

/-! ## Coefficient-compatible certified chains -/

/--
A certified chain indexed by its coefficient endpoints.  `cons` requires the
next source context to be definitionally the current target context;
`changeCons` instead retains an explicit coefficient-changing ring map.
-/
inductive CompatibleChain :
    (A B : Type u) →
    CoefficientContext.{u} → CoefficientContext.{u} →
    Nat → Type (u + 1)
  | nil (A : Type u) (R : CoefficientContext.{u}) :
      CompatibleChain A A R R 0
  | cons {A B C : Type u} {T : CoefficientContext.{u}} {n : Nat}
      (head : Certified A B)
      (tail : CompatibleChain B C head.coefficientTarget T n) :
      CompatibleChain A C head.coefficientSource T (n + 1)
  | changeCons
      {A B C : Type u}
      {S T : CoefficientContext.{u}} {n : Nat}
      (head : Certified A B)
      (change : CoefficientChange head.coefficientTarget S)
      (tail : CompatibleChain B C S T n) :
      CompatibleChain A C head.coefficientSource T (n + 1)

namespace CompatibleChain

/-- The property-free underlying composite. -/
def composite :
    {A B : Type u} →
    {R S : CoefficientContext.{u}} → {n : Nat} →
    CompatibleChain A B R S n → Spec A B
  | _, _, _, _, _, .nil A _ => Spec.id A
  | _, _, _, _, _, .cons head tail => tail.composite.comp head.spec
  | _, _, _, _, _, .changeCons head _ tail =>
      tail.composite.comp head.spec

/--
The certified composite.  It is available only because every adjacency was
constructed either by exact context matching or an explicit ring map.
-/
def certifiedComposite :
    {A B : Type u} →
    {R S : CoefficientContext.{u}} → {n : Nat} →
    CompatibleChain A B R S n → Certified A B
  | _, _, R, _, _, .nil A _ =>
      Certified.ofProof (Spec.id A) R R .framework True trivial
  | _, _, _, T, _, .cons head tail =>
      let rest := tail.certifiedComposite
      {
        spec := rest.spec.comp head.spec
        coefficientSource := head.coefficientSource
        coefficientTarget := T
        scope := Scope.comp head.scope rest.scope
        Property := head.Property ∧ rest.Property
        Assumptions := head.Assumptions ∧ rest.Assumptions
        certified := fun h ↦
          ⟨head.certified h.1, rest.certified h.2⟩
      }
  | _, _, _, T, _, .changeCons head _change tail =>
      let rest := tail.certifiedComposite
      {
        spec := rest.spec.comp head.spec
        coefficientSource := head.coefficientSource
        coefficientTarget := T
        scope := Scope.comp head.scope rest.scope
        Property := head.Property ∧ rest.Property
        Assumptions := head.Assumptions ∧ rest.Assumptions
        certified := fun h ↦
          ⟨head.certified h.1, rest.certified h.2⟩
      }

@[simp]
theorem certifiedComposite_spec
    (chain : CompatibleChain A B R S n) :
    chain.certifiedComposite.spec = chain.composite := by
  induction chain with
  | nil => rfl
  | cons head tail ih =>
      change tail.certifiedComposite.spec.comp head.spec =
        tail.composite.comp head.spec
      rw [ih]
  | changeCons head change tail ih =>
      change tail.certifiedComposite.spec.comp head.spec =
        tail.composite.comp head.spec
      rw [ih]

@[simp]
theorem certifiedComposite_coefficientSource
    (chain : CompatibleChain A B R S n) :
    chain.certifiedComposite.coefficientSource = R := by
  cases chain <;> rfl

@[simp]
theorem certifiedComposite_coefficientTarget
    (chain : CompatibleChain A B R S n) :
    chain.certifiedComposite.coefficientTarget = S := by
  induction chain with
  | nil => rfl
  | cons => rfl
  | changeCons => rfl

end CompatibleChain

/-- A typed chain together with an actual proof that its composite is injective. -/
structure InjectiveChain (A B : Type u) (n : Nat) where
  chain : Chain A B n
  proof : IsInjective chain.composite

namespace InjectiveChain

def nil (A : Type u) : InjectiveChain A A 0 where
  chain := Chain.nil A
  proof := Function.injective_id

/-- Extend an injective chain using an actual injectivity proof for the head. -/
def cons
    (head : Certified A B)
    (headInjective : IsInjective head.spec)
    (tail : InjectiveChain B C n) : InjectiveChain A C (n + 1) where
  chain := Chain.cons head tail.chain
  proof := isInjective_comp tail.proof headInjective

theorem composite_injective (chain : InjectiveChain A B n) :
    IsInjective chain.chain.composite :=
  chain.proof

end InjectiveChain

/-- A typed chain with a proved surjective composite. -/
structure SurjectiveChain (A B : Type u) (n : Nat) where
  chain : Chain A B n
  proof : IsSurjective chain.composite

namespace SurjectiveChain

def nil (A : Type u) : SurjectiveChain A A 0 where
  chain := Chain.nil A
  proof := Function.surjective_id

def cons
    (head : Certified A B)
    (headSurjective : IsSurjective head.spec)
    (tail : SurjectiveChain B C n) : SurjectiveChain A C (n + 1) where
  chain := Chain.cons head tail.chain
  proof := isSurjective_comp tail.proof headSurjective

theorem composite_surjective (chain : SurjectiveChain A B n) :
    IsSurjective chain.chain.composite :=
  chain.proof

end SurjectiveChain

/-- A typed chain with a proved bijective composite. -/
structure BijectiveChain (A B : Type u) (n : Nat) where
  chain : Chain A B n
  proof : IsBijective chain.composite

namespace BijectiveChain

def nil (A : Type u) : BijectiveChain A A 0 where
  chain := Chain.nil A
  proof := Function.bijective_id

def cons
    (head : Certified A B)
    (headBijective : IsBijective head.spec)
    (tail : BijectiveChain B C n) : BijectiveChain A C (n + 1) where
  chain := Chain.cons head tail.chain
  proof := isBijective_comp tail.proof headBijective

theorem composite_bijective (chain : BijectiveChain A B n) :
    IsBijective chain.chain.composite :=
  chain.proof

noncomputable def compositeEquiv (chain : BijectiveChain A B n) : A ≃ B :=
  chain.chain.composite.toEquiv chain.composite_bijective

end BijectiveChain

/-! ## Explicit representation environments -/

/-- Every representation parameter selected by a composite construction. -/
structure RepresentationEnvironment (Index : Type u) where
  Representation : Index → Type v
  selected : (i : Index) → Representation i

namespace Parameterized

/-- Pointwise composition retains the same explicit representation index. -/
def comp
    (g : Parameterized Representation B C)
    (f : Parameterized Representation A B) :
    Parameterized Representation A C :=
  ⟨fun ρ a ↦ g.map ρ (f.map ρ a)⟩

@[simp]
theorem comp_apply
    (g : Parameterized Representation B C)
    (f : Parameterized Representation A B)
    (ρ : Representation) (a : A) :
    (g.comp f).map ρ a = g.map ρ (f.map ρ a) :=
  rfl

theorem comp_independent
    {g : Parameterized Representation B C}
    {f : Parameterized Representation A B}
    (hg : RepresentationIndependent g)
    (hf : RepresentationIndependent f) :
    RepresentationIndependent (g.comp f) := by
  intro ρ₀ ρ₁
  funext a
  rw [comp_apply, comp_apply, hf ρ₀ ρ₁, hg ρ₀ ρ₁]

end Parameterized

/-- A typed finite map chain sharing one explicit representation parameter. -/
inductive ParameterizedChain
    (Representation : Type u) :
    (A B : Type v) → Nat → Type (max u v + 1)
  | nil (A : Type v) : ParameterizedChain Representation A A 0
  | cons {A B C : Type v} {n : Nat}
      (head : Parameterized Representation A B)
      (tail : ParameterizedChain Representation B C n) :
      ParameterizedChain Representation A C (n + 1)

namespace ParameterizedChain

/-- The composite remains a family indexed by the public representation. -/
def composite :
    {A B : Type v} → {n : Nat} →
    ParameterizedChain Representation A B n →
      Parameterized Representation A B
  | _, _, _, .nil A => ⟨fun _ a ↦ a⟩
  | _, _, _, .cons head tail => tail.composite.comp head

@[simp]
theorem composite_apply
    (head : Parameterized Representation A B)
    (tail : ParameterizedChain Representation B C n)
    (ρ : Representation) (a : A) :
    (ParameterizedChain.cons head tail).composite.map ρ a =
      tail.composite.map ρ (head.map ρ a) :=
  rfl

end ParameterizedChain

end DAF.Comparison

/-! ## One-step chains for certified workspace upgrades -/

namespace DAF

universe u v w₀ w₁

namespace WorkspaceUpgrade

/-- A project component of an arbitrary upgrade, certified only as a map. -/
def mapPublicCertified
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId)
    (scope : Comparison.Scope := .framework) :
    Comparison.Certified (W₀.Export p) (W₁.Export p) :=
  Comparison.Certified.ofProof
    (U.mapPublicComparisonSpec p)
    Comparison.CoefficientContext.integralLifted
    Comparison.CoefficientContext.integralLifted
    scope True trivial

/-- Every workspace component is a one-arrow typed comparison chain. -/
def mapPublicChain
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId)
    (scope : Comparison.Scope := .framework) :
    Comparison.Chain (W₀.Export p) (W₁.Export p) 1 :=
  .cons (U.mapPublicCertified p scope) (.nil _)

end WorkspaceUpgrade

namespace FactorUpgrade

/-- A factor upgrade gives a one-arrow chain with a proved surjective composite. -/
def mapPublicSurjectiveChain
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : FactorUpgrade W₀ W₁)
    (p : G.ProjectId)
    (scope : Comparison.Scope := .framework) :
    Comparison.SurjectiveChain (W₀.Export p) (W₁.Export p) 1 :=
  Comparison.SurjectiveChain.cons
    (U.toWorkspaceUpgrade.mapPublicCertified p scope)
    (by
      change Function.Surjective (U.mapPublic p)
      exact U.map_surjective p)
    (Comparison.SurjectiveChain.nil _)

end FactorUpgrade

namespace EquivalenceUpgrade

/-- An equivalence upgrade gives a one-arrow chain with a proved bijective composite. -/
def mapPublicBijectiveChain
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : EquivalenceUpgrade W₀ W₁)
    (p : G.ProjectId)
    (scope : Comparison.Scope := .framework) :
    Comparison.BijectiveChain (W₀.Export p) (W₁.Export p) 1 :=
  Comparison.BijectiveChain.cons
    (U.toWorkspaceUpgrade.mapPublicCertified p scope)
    (by
      change Function.Bijective (U.mapPublic p)
      exact U.map_bijective p)
    (Comparison.BijectiveChain.nil _)

end EquivalenceUpgrade

namespace RefinementUpgrade

/-- A refinement upgrade gives a one-arrow chain with a proved bijective composite. -/
def mapPublicBijectiveChain
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : RefinementUpgrade W₀ W₁)
    (p : G.ProjectId)
    (scope : Comparison.Scope := .framework) :
    Comparison.BijectiveChain (W₀.Export p) (W₁.Export p) 1 :=
  Comparison.BijectiveChain.cons
    (U.toWorkspaceUpgrade.mapPublicCertified p scope)
    (by
      change Function.Bijective (U.mapPublic p)
      exact U.map_bijective p)
    (Comparison.BijectiveChain.nil _)

end RefinementUpgrade

end DAF
