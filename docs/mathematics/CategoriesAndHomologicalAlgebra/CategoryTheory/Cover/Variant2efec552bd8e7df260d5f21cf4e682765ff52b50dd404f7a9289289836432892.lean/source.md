# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cover.Variant2efec552bd8e7df260d5f21cf4e682765ff52b50dd404f7a9289289836432892

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00151b554a0dcb820b6d46f008880402a2a047ec` · SHA-256 `2efec552bd8e7df260d5f21cf4e682765ff52b50dd404f7a9289289836432892`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Site.Cover

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: site.cover
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Site

open CategoryTheory

universe u v

structure Cover
    (C : Type u)
    [Category.{v} C]
    (U : C) where
  k : Nat
  object : Fin k → C
  arrow : (i : Fin k) → object i ⟶ U

namespace Cover

variable {C : Type u}
variable [Category.{v} C]

abbrev Index {U : C} (S : Cover C U) : Type :=
  Fin S.k

def length {U : C} (S : Cover C U) : Nat :=
  S.k

def localObject {U : C} (S : Cover C U) (i : S.Index) : C :=
  S.object i

def localArrow {U : C} (S : Cover C U) (i : S.Index) :
    S.localObject i ⟶ U :=
  S.arrow i

def empty (U : C) : Cover C U where
  k := 0
  object := fun i => nomatch i
  arrow := fun i => nomatch i

def identityCover (U : C) : Cover C U where
  k := 1
  object := fun _ => U
  arrow := fun _ => 𝟙 U

def postcompose {U V : C} (S : Cover C U) (f : U ⟶ V) :
    Cover C V where
  k := S.k
  object := S.object
  arrow := fun i => S.arrow i ≫ f

@[simp]
theorem length_identityCover (U : C) :
    length (identityCover (C := C) U) = 1 :=
  rfl

@[simp]
theorem localArrow_identityCover (U : C)
    (i : (identityCover (C := C) U).Index) :
    localArrow (identityCover (C := C) U) i = 𝟙 U :=
  rfl

end Cover
end Site
end Folder
```
