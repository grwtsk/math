import DAF.Terrain.AbsoluteRegion

/-!
# Deterministic generation and cache-independent queries

A generation certificate can only witness agreement with an already fixed
global reference.  Runtime cache data is observational: it is accepted by the
query interface but absent from the returned denotation.  Thus eviction,
query order, and repeated evaluation cannot redefine the mathematical state.
-/

universe u v w

namespace DAF.Terrain

/-- A fixed seed and parameter choice whose evaluator agrees with the reference. -/
structure GlobalGenerationCertificate
    {State : Type u} (G : KnownMaximalState State) where
  Seed : Type v
  Parameters : Type w
  seed : Seed
  parameters : Parameters
  evaluate : Seed → Parameters → G.Coord → State
  agrees : ∀ c, evaluate seed parameters c = G.reference c

namespace GlobalGenerationCertificate

variable {State : Type u} {G : KnownMaximalState State}

/-- The generated global value, with the certificate's fixed seed and parameters. -/
def generatedValue (C : GlobalGenerationCertificate G) : G.Coord → State :=
  C.evaluate C.seed C.parameters

@[simp]
theorem generatedValue_eq_reference (C : GlobalGenerationCertificate G) :
    C.generatedValue = G.reference := by
  funext c
  exact C.agrees c

/-- A local generated query retains the exact absolute-coordinate subtype. -/
def query (C : GlobalGenerationCertificate G) (R : AbsoluteRegion G) :
    R.LocalCoord → State :=
  restrictSignal R C.generatedValue

@[simp]
theorem query_eq_reference (C : GlobalGenerationCertificate G)
    (R : AbsoluteRegion G) :
    C.query R = restrictSignal R G.reference := by
  rw [query, generatedValue_eq_reference]

end GlobalGenerationCertificate

/-- Runtime memoization data.  It has no theorem authority and no semantic field. -/
structure QueryCache {State : Type u} (G : KnownMaximalState State)
    (CachedValue : Type v) where
  observedCoordinates : Finset G.Coord
  payload : List CachedValue
  cacheVersion : String

namespace QueryCache

/-- Evict one observed coordinate without changing the fixed global ruleset. -/
def evict {State : Type u} {G : KnownMaximalState State}
    {CachedValue : Type v} (cache : QueryCache G CachedValue) (c : G.Coord) :
    QueryCache G CachedValue := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact { cache with observedCoordinates := cache.observedCoordinates.erase c }

end QueryCache

/-- A denotational query ignores cache contents and reads the fixed reference. -/
def denotationalQuery {State : Type u} {G : KnownMaximalState State}
    {CachedValue : Type v} (_cache : QueryCache G CachedValue)
    (R : AbsoluteRegion G) : R.LocalCoord → State :=
  restrictSignal R G.reference

@[simp]
theorem denotationalQuery_eq_restriction
    {State : Type u} {G : KnownMaximalState State}
    {CachedValue : Type v}
    (cache : QueryCache G CachedValue) (R : AbsoluteRegion G) :
    denotationalQuery cache R = restrictSignal R G.reference :=
  rfl

theorem denotationalQuery_cache_independent
    {State : Type u} {G : KnownMaximalState State}
    {CachedValue : Type v}
    (cache₁ cache₂ : QueryCache G CachedValue) (R : AbsoluteRegion G) :
    denotationalQuery cache₁ R = denotationalQuery cache₂ R :=
  rfl

theorem denotationalQuery_repeated
    {State : Type u} {G : KnownMaximalState State}
    {CachedValue : Type v}
    (cache : QueryCache G CachedValue) (R : AbsoluteRegion G) :
    denotationalQuery cache R = denotationalQuery cache R :=
  rfl

theorem denotationalQuery_evict
    {State : Type u} {G : KnownMaximalState State}
    {CachedValue : Type v}
    (cache : QueryCache G CachedValue) (R : AbsoluteRegion G) (c : G.Coord) :
    denotationalQuery (cache.evict c) R = denotationalQuery cache R :=
  rfl

/-- Two query results commute as data: scheduling only swaps their product order. -/
theorem denotationalQuery_order_independent
    {State : Type u} {G : KnownMaximalState State}
    {CachedValue : Type v}
    (cache : QueryCache G CachedValue)
    (R S : AbsoluteRegion G) :
    (denotationalQuery cache R, denotationalQuery cache S) =
      Prod.swap (denotationalQuery cache S, denotationalQuery cache R) :=
  rfl

end DAF.Terrain
