import Surface.Legacy.BinaryLogicMatrix.Tree.Irreducible

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

inductive OrderedPrimeCore where
  | irreducible : PrimeLabel → OrderedPrimeCore
  | composite : OrderedPrimeCore → OrderedPrimeCore → OrderedPrimeCore

namespace OrderedPrimeCore

def code (P : PairingCodec) : OrderedPrimeCore → Nat
  | irreducible p =>
      P.pair 0 p.value
  | composite l r =>
      P.pair 1 (P.pair (code P l) (code P r))

theorem code_injective
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B := by
  induction A generalizing B with
  | irreducible p =>
      cases B with
      | irreducible q =>
          have hpq := P.injective 0 p.value 0 q.value h
          exact congrArg OrderedPrimeCore.irreducible (PrimeLabel.ext hpq.2)
      | composite l r =>
          have htag := (P.injective 0 p.value 1 (P.pair (l.code P) (r.code P)) h).1
          cases htag
  | composite l r ihl ihr =>
      cases B with
      | irreducible q =>
          have htag := (P.injective 1 (P.pair (l.code P) (r.code P)) 0 q.value h).1
          cases htag
      | composite l' r' =>
          have houter :=
            P.injective
              1 (P.pair (l.code P) (r.code P))
              1 (P.pair (l'.code P) (r'.code P))
              h
          have hinner :=
            P.injective (l.code P) (r.code P) (l'.code P) (r'.code P) houter.2
          have hl : l = l' := ihl hinner.1
          have hr : r = r' := ihr hinner.2
          cases hl
          cases hr
          rfl

end OrderedPrimeCore

structure OrderedPrimeNormalForm where
  core : OrderedPrimeCore
  rootTopologyPrime : PrimeLabel
  claimBoundary : List String

def topologyPrime
    (P : PairingCodec)
    (E : PrimeEnumerator)
    (T : OrderedPrimeCore) : PrimeLabel :=
  E.nthPrime (T.code P)

theorem orderedPrimeCore_code_injective
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B :=
  OrderedPrimeCore.code_injective P h

theorem orderedPrimeCore_preserves_bracketing
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B :=
  orderedPrimeCore_code_injective P h

theorem topologyPrime_injective
    (P : PairingCodec)
    (E : PrimeEnumerator)
    {A B : OrderedPrimeCore}
    (h :
      (topologyPrime P E A).value =
      (topologyPrime P E B).value) :
    A = B := by
  apply orderedPrimeCore_code_injective P
  exact E.injective (A.code P) (B.code P) h

theorem same_topologyPrime_same_factorization
    (P : PairingCodec)
    (E : PrimeEnumerator)
    {A B : OrderedPrimeCore}
    (h :
      (topologyPrime P E A).value =
      (topologyPrime P E B).value) :
    A = B :=
  topologyPrime_injective P E h

structure NormalizationRules where
  pairing : PairingCodec
  primeEnumerator : PrimeEnumerator
  registry : IrreducibleFactorRegistry
  normalizeAtom : BinaryLogicAtom → IrreducibleFactor
  normalizeAtomInRegistry :
    ∀ a, normalizeAtom a ∈ registry.factors
  claimBoundary : List String

def normalizeCore
    (R : NormalizationRules) :
    BinaryLogicTree → OrderedPrimeCore
  | BinaryLogicTree.leaf a =>
      OrderedPrimeCore.irreducible (R.normalizeAtom a).prime
  | BinaryLogicTree.node l r =>
      OrderedPrimeCore.composite
        (normalizeCore R l)
        (normalizeCore R r)

def normalize
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    OrderedPrimeNormalForm where
  core := normalizeCore R T
  rootTopologyPrime := topologyPrime R.pairing R.primeEnumerator (normalizeCore R T)
  claimBoundary := [
    "Normalized by oriented prime Polish normal form.",
    "Left/right order and bracketing are preserved.",
    "Topology prime is assigned from injective ordered bracket code."
  ]

theorem orderedPrimeNormalForm_unique_factorization
    (R : NormalizationRules)
    {T U : BinaryLogicTree} :
    (normalize R T).core = (normalize R U).core ↔
    (normalizeCore R T).code R.pairing = (normalizeCore R U).code R.pairing := by
  constructor
  · intro h
    simpa [normalize] using congrArg (fun c => c.code R.pairing) h
  · intro h
    exact orderedPrimeCore_code_injective R.pairing h

theorem same_normalized_code_same_factorization
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B :=
  orderedPrimeCore_code_injective P h

theorem normalized_factorization_deterministic
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    {A B : OrderedPrimeNormalForm}
    (hA : normalize R T = A)
    (hB : normalize R T = B) :
    A.core = B.core := by
  cases hA
  cases hB
  rfl

theorem normalized_topology_distinct
    (R : NormalizationRules)
    {T U : BinaryLogicTree}
    (h :
      (normalize R T).core.code R.pairing ≠
      (normalize R U).core.code R.pairing) :
    (normalize R T).core ≠
      (normalize R U).core := by
  intro hcore
  apply h
  simp [hcore]

theorem topologyPrime_distinguishes_composites
    (P : PairingCodec)
    (E : PrimeEnumerator)
    {A B : OrderedPrimeCore}
    (h :
      (topologyPrime P E A).value =
      (topologyPrime P E B).value) :
    A = B :=
  topologyPrime_injective P E h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
