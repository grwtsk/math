import DAF.Terrain.Generator

/-!
# Concrete global-reference and cache-independence checks

These small finite examples exercise the denotational boundary directly.  The
generator agrees with a fixed three-coordinate reference, while two unrelated
runtime cache observations produce the same region query.
-/

namespace DAF.Integration.GlobalReferenceTests

open DAF.Terrain

/-- A three-coordinate maximal state with its exact absolute enumeration. -/
def sampleGlobal : KnownMaximalState Nat where
  Coord := Fin 3
  coordFintype := inferInstance
  coordDecEq := inferInstance
  cardinality := 3
  absoluteIndex := Equiv.refl (Fin 3)
  reference c := 10 * c.val

/-- A fixed generator which computes the already declared reference. -/
def sampleGenerator : GlobalGenerationCertificate sampleGlobal where
  Seed := Unit
  Parameters := Unit
  seed := ()
  parameters := ()
  evaluate _ _ c := 10 * c.val
  agrees _ := rfl

def c0 : sampleGlobal.Coord := by
  change Fin 3
  exact 0

def c1 : sampleGlobal.Coord := by
  change Fin 3
  exact 1

def c2 : sampleGlobal.Coord := by
  change Fin 3
  exact 2

/-- The two endpoints form one exact absolute query region. -/
def endpointRegion : AbsoluteRegion sampleGlobal :=
  by
    letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
    exact ⟨{c0, c2}⟩

def cacheA : QueryCache sampleGlobal String where
  observedCoordinates := by
    letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
    exact {c0}
  payload := ["left"]
  cacheVersion := "cache-a"

def cacheB : QueryCache sampleGlobal String where
  observedCoordinates := by
    letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
    exact {c1, c2}
  payload := ["middle", "right"]
  cacheVersion := "cache-b"

example :
    sampleGenerator.generatedValue = sampleGlobal.reference :=
  sampleGenerator.generatedValue_eq_reference

example : sampleGenerator.query endpointRegion =
    restrictSignal endpointRegion sampleGlobal.reference :=
  sampleGenerator.query_eq_reference endpointRegion

example :
    denotationalQuery cacheA endpointRegion =
      denotationalQuery cacheB endpointRegion :=
  denotationalQuery_cache_independent cacheA cacheB endpointRegion

example :
    denotationalQuery
        (cacheA.evict c0) endpointRegion =
      denotationalQuery cacheA endpointRegion :=
  denotationalQuery_evict cacheA endpointRegion c0

example :
    denotationalQuery cacheA endpointRegion
      ⟨c0, by
        letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
        simp [endpointRegion]⟩ = 0 :=
  rfl

example :
    denotationalQuery cacheA endpointRegion
      ⟨c2, by
        letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
        simp [endpointRegion]⟩ = 20 :=
  rfl

example (u : endpointRegion.LocalCoord → Int) :
    restrictSignal endpointRegion (extendSignal endpointRegion u) = u :=
  AbsoluteRegion.restrictSignal_extendSignal endpointRegion u

end DAF.Integration.GlobalReferenceTests
