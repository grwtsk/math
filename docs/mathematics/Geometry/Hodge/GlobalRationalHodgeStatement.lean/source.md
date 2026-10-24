# Complete source: GRWTSK.Geometry.Hodge.GlobalRationalHodgeStatement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d536ee14a0ac5fab97d6696b6d9212faeadb5907` · SHA-256 `df2fca457538aad1e071887a145c2da3b8d96712eaea334429737ecf103a2da8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Category.ModuleCat.Basic
import GRWTSK.Geometry.Hodge.RationalCycleCellular

namespace GRWTSK.Geometry.Hodge.GlobalRationalHodgeStatement

open CategoryTheory

universe u v w

/-- One exact variety/codimension/realization case of a global rational-Hodge theorem. -/
structure Index where
  varietyIdentity : String
  codimension : ℕ
  realization : String
  deriving DecidableEq, Repr

-- The independent universes of the bundled cycle and Hodge modules occur in the structure's
-- result sort. Keeping them separate preserves families whose two modules have different sizes.
set_option linter.checkUnivs false in
/-- A family of rational cycle-class maps indexed by exact geometric cases. -/
structure Family (I : Type u) where
  cycle : I → ModuleCat.{v} ℚ
  hodgeClass : I → ModuleCat.{w} ℚ
  cycleClass : ∀ i, cycle i →ₗ[ℚ] hodgeClass i
  varietyIdentity : I → String
  codimension : I → ℕ
  realization : I → String

namespace Family

variable {I : Type u}

/-- The global rational-Hodge statement is simultaneous surjectivity of every exact
cycle-class map in the indexed family. -/
def GlobalStatement (F : Family I) : Prop :=
  ∀ i, Function.Surjective (F.cycleClass i)

/-- The local rational-Hodge interface selected by one exact index. -/
def localData (F : Family I) (i : I) :
    RationalHodgeData (F.cycle i) (F.hodgeClass i) where
  cycleClass := F.cycleClass i

/-- Global surjectivity specializes to the exact local cycle-class map. -/
theorem local_surjective
    (F : Family I) (hF : F.GlobalStatement) (i : I) :
    (F.localData i).IsSurjective := by
  exact hF i

/-- Every exact indexed Hodge class receives a cycle witness under the global statement. -/
theorem cycleWitness
    (F : Family I) (hF : F.GlobalStatement) (i : I)
    (h : F.hodgeClass i) :
    Nonempty ((F.localData i).CycleWitness h) :=
  RationalHodgeData.cycleWitness_of_surjective (F.localData i) (hF i) h

end Family

/-- A source-bound proof of the simultaneous global rational-Hodge statement. -/
structure SourceBoundTheorem {I : Type u} (F : Family I) where
  source : SourceIdentity
  proves : F.GlobalStatement

namespace SourceBoundTheorem

variable {I : Type u} {F : Family I}

/-- Specialize a source-bound global proof to the existing local theorem interface. -/
def localTheorem (G : SourceBoundTheorem F) (i : I) :
    SourceBoundRationalHodgeTheorem (F.localData i) where
  source := G.source
  variety := F.varietyIdentity i
  codimension := F.codimension i
  realization := F.realization i
  surjective := G.proves i

/-- A source-bound global proof supplies a cycle witness in every indexed case. -/
theorem cycleWitness
    (G : SourceBoundTheorem F) (i : I) (h : F.hodgeClass i) :
    Nonempty ((F.localData i).CycleWitness h) :=
  Family.cycleWitness F G.proves i h

end SourceBoundTheorem

namespace Fixtures

/-- One-case identity family used to test the global-to-local specialization. -/
def identityFamily : Family Unit where
  cycle _ := ModuleCat.of ℚ ℚ
  hodgeClass _ := ModuleCat.of ℚ ℚ
  cycleClass _ := LinearMap.id
  varietyIdentity _ := "one-case rational fixture"
  codimension _ := 0
  realization _ := "identity Betti fixture"

/-- The one-case identity family satisfies the global statement. -/
theorem identityFamily_global : identityFamily.GlobalStatement := by
  intro i h
  exact ⟨h, rfl⟩

/-- Source-bound global proof object for the identity family. -/
def identityGlobalTheorem : SourceBoundTheorem identityFamily where
  source :=
    { repository := "grwtsk/math"
      revision := "global-rational-hodge-fixture"
      path := "GRWTSK/Geometry/Hodge/GlobalRationalHodgeStatement.lean"
      declaration := "identityFamily_global" }
  proves := identityFamily_global

/-- Global specialization recovers the exact local identity theorem. -/
theorem identity_local_surjective :
    (identityFamily.localData ()).IsSurjective :=
  (identityGlobalTheorem.localTheorem ()).surjective

end Fixtures

end GRWTSK.Geometry.Hodge.GlobalRationalHodgeStatement
```
