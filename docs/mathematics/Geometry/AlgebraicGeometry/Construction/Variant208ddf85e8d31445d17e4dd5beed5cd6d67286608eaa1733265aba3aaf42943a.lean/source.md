# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Construction.Variant208ddf85e8d31445d17e4dd5beed5cd6d67286608eaa1733265aba3aaf42943a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dcc7e43bbcc96c7b2c55f95af6c7f4a2297484f` · SHA-256 `208ddf85e8d31445d17e4dd5beed5cd6d67286608eaa1733265aba3aaf42943a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Comparison.Core

/-!
# Construction provenance

Provenance is independent of logical status.  “Canonical” means uniquely
characterized, not definitionally equal; a canonical map may still have only
a conjectural isomorphism property.  A representation-dependent map is
canonical only after its representation has been fixed, unless a separate
independence theorem removes that dependence.
-/

namespace DAF.Comparison

universe u v w

/-- A comparison definitionally agrees with a displayed reference map. -/
structure Definitional (C : Spec A B) where
  reference : A → B
  map_eq : C.map = reference

namespace Definitional

/-- The reflexive definitional witness for a function. -/
def rfl (f : A → B) : Definitional ({ map := f } : Spec A B) where
  reference := f
  map_eq := _root_.rfl

/-- Definitional comparisons compose definitionally. -/
def comp
    {f : Spec A B} {g : Spec B C}
    (hg : Definitional g) (hf : Definitional f) :
    Definitional (g.comp f) where
  reference := fun a ↦ hg.reference (hf.reference a)
  map_eq := by
    funext a
    change g.map (f.map a) = hg.reference (hf.reference a)
    rw [hf.map_eq, hg.map_eq]

end Definitional

/-- A proof-bearing uniqueness characterization of a comparison. -/
structure Canonical (C : Spec A B) where
  Characterizes : (A → B) → Prop
  characterized : Characterizes C.map
  unique : ∀ f, Characterizes f → f = C.map

namespace Canonical

/-- Any map satisfying the characterization equals the canonical map. -/
theorem eq {A : Sort u} {B : Sort v} {C : Spec A B}
    (h : Canonical C) {f : A → B} (hf : h.Characterizes f) :
    f = C.map :=
  h.unique f hf

/--
Compose canonical maps only after supplying a characterization and its
uniqueness proof for the composite.  Canonicality is not inferred from tags.
-/
def comp
    {f : Spec A B} {g : Spec B C}
    (_hg : Canonical g) (_hf : Canonical f)
    (Characterizes : (A → C) → Prop)
    (characterized : Characterizes (g.comp f).map)
    (unique : ∀ h, Characterizes h → h = (g.comp f).map) :
    Canonical (g.comp f) where
  Characterizes := Characterizes
  characterized := characterized
  unique := unique

end Canonical

/-- A comparison whose source type itself depends on a representation. -/
structure Represented
    (Representation : Type u)
    (A : Representation → Sort v)
    (B : Sort w) where
  map : (ρ : Representation) → A ρ → B

/-- A representation-indexed family with constant source and target types. -/
structure Parameterized
    (Representation : Type u)
    (A : Sort v)
    (B : Sort w) where
  map : Representation → A → B

/-- Explicit identification of two representation parameters. -/
structure RepresentationEquiv
    {Representation : Type u}
    (ρ₀ ρ₁ : Representation) where
  eq : ρ₀ = ρ₁

/-- Every representation selects an ordinary, still-indexed comparison. -/
def Parameterized.at
    (C : Parameterized Representation A B)
    (ρ : Representation) : Spec A B :=
  ⟨C.map ρ⟩

/-- Independence is an extensional theorem, not erased representation data. -/
def RepresentationIndependent
    (C : Parameterized Representation A B) : Prop :=
  ∀ ρ₀ ρ₁, C.map ρ₀ = C.map ρ₁

theorem Parameterized.map_eq_of_representationEquiv
    (C : Parameterized Representation A B)
    { ρ₀ ρ₁ : Representation }
    (h : RepresentationEquiv ρ₀ ρ₁) :
    C.map ρ₀ = C.map ρ₁ := by
  cases h.eq
  rfl

theorem RepresentationIndependent.map_eq
    {C : Parameterized Representation A B}
    (h : RepresentationIndependent C)
    (ρ₀ ρ₁ : Representation) :
    C.map ρ₀ = C.map ρ₁ :=
  h ρ₀ ρ₁

end DAF.Comparison
```
