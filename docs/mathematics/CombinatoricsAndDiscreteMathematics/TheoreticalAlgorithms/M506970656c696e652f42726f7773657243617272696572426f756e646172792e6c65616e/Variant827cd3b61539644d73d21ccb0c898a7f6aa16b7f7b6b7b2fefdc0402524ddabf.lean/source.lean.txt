import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436172726965722e6c65616e


/- source-tree-label: STL1|L|addr=000011101|role=proof_code_atom|slug=pipeline-browsercarrierboundary|owner=canonical_owner|core=Pipeline/BrowserCarrierBoundary.lean|leaf=M506970656c696e652f42726f7773657243617272696572426f756e646172792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline

/-
`BrowserCarrierBoundary` is the finite browser/runtime boundary used by the
Carrier.  This file records the finite L3 control algebra and prime-address
decision rule.  It does not construct a browser topos, a sheaf category, a
local ring, or theorem authority.
-/

inductive L3State where
  | dead
  | null
  | alive
deriving DecidableEq, Repr

namespace L3State

def value : L3State -> Nat
  | dead => 0
  | null => 1
  | alive => 2

def meet : L3State -> L3State -> L3State
  | dead, _ => dead
  | _, dead => dead
  | null, _ => null
  | _, null => null
  | alive, alive => alive

def join : L3State -> L3State -> L3State
  | alive, _ => alive
  | _, alive => alive
  | null, _ => null
  | _, null => null
  | dead, dead => dead

def heytingImplies : L3State -> L3State -> L3State
  | dead, _ => alive
  | null, dead => dead
  | null, null => alive
  | null, alive => alive
  | alive, b => b

theorem meet_dead_left (s : L3State) : meet dead s = dead := by
  cases s <;> rfl

theorem join_alive_left (s : L3State) : join alive s = alive := by
  cases s <;> rfl

theorem heyting_dead_left (s : L3State) : heytingImplies dead s = alive := by
  cases s <;> rfl

theorem heyting_alive_left (s : L3State) : heytingImplies alive s = s := by
  cases s <;> rfl

end L3State

structure PrimeFeature where
  name : String
  prime : Nat
deriving DecidableEq, Repr

def primeAddress (features : List PrimeFeature) : Nat :=
  features.foldl (fun acc feature => acc * feature.prime) 1

structure ThreeValuedPrimePartition where
  alive : List PrimeFeature
  null : List PrimeFeature
  dead : List PrimeFeature
deriving DecidableEq, Repr

namespace ThreeValuedPrimePartition

def aliveAddress (p : ThreeValuedPrimePartition) : Nat :=
  primeAddress p.alive

def nullAddress (p : ThreeValuedPrimePartition) : Nat :=
  primeAddress p.null

def deadAddress (p : ThreeValuedPrimePartition) : Nat :=
  primeAddress p.dead

end ThreeValuedPrimePartition

structure ThreeValuedPrimeAddress where
  aliveAddress : Nat
  nullAddress : Nat
  deadAddress : Nat
deriving DecidableEq, Repr

def ThreeValuedPrimeAddress.ofPartition
    (p : ThreeValuedPrimePartition) : ThreeValuedPrimeAddress :=
  { aliveAddress := p.aliveAddress
    nullAddress := p.nullAddress
    deadAddress := p.deadAddress }

inductive BrowserRuntimeDecision where
  | allow
  | pending
  | residue
deriving DecidableEq, Repr

def decideBrowserRuntime (address : ThreeValuedPrimeAddress) :
    BrowserRuntimeDecision :=
  if address.deadAddress = 1 then
    if address.nullAddress = 1 then
      BrowserRuntimeDecision.allow
    else
      BrowserRuntimeDecision.pending
  else
    BrowserRuntimeDecision.residue

theorem dead_address_blocks_transition
    (address : ThreeValuedPrimeAddress)
    (hDead : address.deadAddress ≠ 1) :
    decideBrowserRuntime address = BrowserRuntimeDecision.residue := by
  simp [decideBrowserRuntime, hDead]

theorem null_address_holds_transition
    (address : ThreeValuedPrimeAddress)
    (hDead : address.deadAddress = 1)
    (hNull : address.nullAddress ≠ 1) :
    decideBrowserRuntime address = BrowserRuntimeDecision.pending := by
  simp [decideBrowserRuntime, hDead, hNull]

theorem all_alive_allows_transition
    (address : ThreeValuedPrimeAddress)
    (hDead : address.deadAddress = 1)
    (hNull : address.nullAddress = 1) :
    decideBrowserRuntime address = BrowserRuntimeDecision.allow := by
  simp [decideBrowserRuntime, hDead, hNull]

def browserCarrierResidueTerms : List String :=
  [ "prime_address_overflow"
  , "prime_not_in_declared_basis"
  , "prime_factorization_unavailable"
  , "state_partition_not_disjoint"
  , "state_partition_not_total"
  , "dead_prime_path_present"
  , "null_state_timeout"
  , "invalid_l3_value"
  , "local_ring_not_constructed"
  , "mv_logic_not_constructed"
  , "heyting_logic_not_constructed"
  , "browser_topos_not_constructed"
  , "jepa_metric_not_constructed"
  , "jepa_pullback_not_constructed"
  ]

def browserCarrierNonClaims : List String :=
  [ "L3_is_not_automatic_subobject_classifier"
  , "BrowserCarrierBoundary_is_not_proved_Grothendieck_topos"
  , "prime_products_are_finite_addresses_not_hashes"
  , "prime_products_require_declared_finite_bounds"
  , "null_state_is_pending_not_quantum_superposition"
  , "JEPA_compatibility_is_not_theorem_authority"
  , "browser_state_is_not_proof"
  , "carrier_evidence_is_finite_witness_evidence_only"
  ]

theorem browser_carrier_residue_terms_include_timeout :
    "null_state_timeout" ∈ browserCarrierResidueTerms := by
  simp [browserCarrierResidueTerms]

theorem browser_carrier_nonclaims_include_not_topos :
    "BrowserCarrierBoundary_is_not_proved_Grothendieck_topos" ∈
      browserCarrierNonClaims := by
  simp [browserCarrierNonClaims]

end Think.Pipeline
