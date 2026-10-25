# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MonoHierarchy.Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `598d57ee94a0767c1ac1aafe8c19a241f06d6644` · SHA-256 `003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.StructuralIsomorphism

/-!
# Monohierarchy data and transport

Validity is supplied by a versioned admissibility predicate.  This record stores
only finite projection data, making every structural transport explicit.
-/

namespace Mathematics.Projection

universe u v

/-- Finite data of a rooted projection on one primitive element carrier. -/
structure MonoHierarchy (Element : Type u) where
  root : Element
  parent : Element → Option Element
  siblingBefore : Element → Element → Bool
  crossingResolution : Element → Element → Bool
  contractionRepresentative : Element → Option Element

namespace MonoHierarchy

variable {Element : Type u} {Other : Type v}

@[ext]
theorem ext
    {left right : MonoHierarchy Element}
    (root : left.root = right.root)
    (parent : left.parent = right.parent)
    (siblingBefore : left.siblingBefore = right.siblingBefore)
    (crossingResolution :
      left.crossingResolution = right.crossingResolution)
    (contractionRepresentative :
      left.contractionRepresentative = right.contractionRepresentative) :
    left = right := by
  cases left
  cases right
  simp_all

/-- Relabel every primitive projection datum through one exact equivalence. -/
def transport
    (equivalence : Element ≃ Other)
    (projection : MonoHierarchy Element) :
    MonoHierarchy Other where
  root := equivalence projection.root
  parent := fun element ↦
    (projection.parent (equivalence.symm element)).map equivalence
  siblingBefore := fun left right ↦
    projection.siblingBefore
      (equivalence.symm left) (equivalence.symm right)
  crossingResolution := fun left right ↦
    projection.crossingResolution
      (equivalence.symm left) (equivalence.symm right)
  contractionRepresentative := fun element ↦
    (projection.contractionRepresentative
      (equivalence.symm element)).map equivalence

@[simp]
theorem transport_refl (projection : MonoHierarchy Element) :
    transport (Equiv.refl Element) projection = projection := by
  ext <;> simp [transport]

@[simp]
theorem transport_symm_transport
    (equivalence : Element ≃ Other)
    (projection : MonoHierarchy Element) :
    transport equivalence.symm (transport equivalence projection) =
      projection := by
  ext <;> simp [transport]

theorem transport_injective
    (equivalence : Element ≃ Other) :
    Function.Injective (transport equivalence) := by
  intro left right equality
  have := congrArg (transport equivalence.symm) equality
  simpa using this

@[simp]
theorem transport_trans
    {Third : Type*}
    (first : Element ≃ Other)
    (second : Other ≃ Third)
    (projection : MonoHierarchy Element) :
    transport second (transport first projection) =
      transport (first.trans second) projection := by
  ext <;> simp [transport]

end MonoHierarchy

end Mathematics.Projection
```
