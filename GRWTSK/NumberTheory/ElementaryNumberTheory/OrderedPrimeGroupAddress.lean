/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.AddressCanonicalPrimeEnumeration
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeFiberFiniteTestTransport
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.ZMod.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Ordered prime-group addresses

A prime does two jobs in this construction:

* it selects the typed local cyclic group `ZMod p`;
* its order `p` is the radix of that address coordinate.

A finite ordered prime word therefore determines an iterated product of local
prime groups. The order is identity-bearing for serialization: the first prime
is the least-significant radix, the second prime is the next radix, and so on.

The main result is an explicit mixed-radix equivalence

`AtomicAddress word ≃ Fin (cardinality word)`.

Thus an ordered prime factorization whose radix product is `n` gives exactly
`n` reversible addresses. Reordering preserves cardinality but changes the
serialization convention. Repeated prime axes are retained separately; they
must not be silently replaced by one prime-power cyclic group. A concrete
`2,2` versus `4` obstruction records that equal cardinality does not imply
additive-group equivalence.

SOURCE_PROOF_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN /
TRANSITIVE AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.OrderedPrimeGroupAddress

abbrev PrimeIndex :=
  GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberFiniteTestTransport.PrimeIndex

/-- The canonical prime-dependent fiber used by this address system. -/
abbrev CanonicalPrimeFiber (p : PrimeIndex) := ZMod p.1

/-- One prime-tagged local group element. -/
abbrev PrimeAtom := Sigma CanonicalPrimeFiber

instance primeIndexNeZero (p : PrimeIndex) : NeZero p.1 :=
  ⟨p.2.ne_zero⟩

/-- The local cyclic group selected by a prime index. -/
abbrev AxisGroup (p : PrimeIndex) := ZMod p.1

/--
The exact atomic address type of an ordered prime word.

The trailing `ZMod 1` is the one-element terminal group. It keeps the complete
address type in the additive-group hierarchy, including the empty word.
-/
def AtomicAddress : List PrimeIndex → Type
  | [] => ZMod 1
  | p :: tail => AxisGroup p × AtomicAddress tail

instance atomicAddressFintype :
    (word : List PrimeIndex) → Fintype (AtomicAddress word)
  | [] => inferInstance
  | _ :: tail => by
      letI := atomicAddressFintype tail
      infer_instance

instance atomicAddressAddCommGroup :
    (word : List PrimeIndex) → AddCommGroup (AtomicAddress word)
  | [] => inferInstance
  | _ :: tail => by
      letI := atomicAddressAddCommGroup tail
      infer_instance

/-- The number of atomic prime coordinates. -/
def atomicLength (word : List PrimeIndex) : ℕ :=
  word.length

/-- The product of the ordered local group orders. -/
def cardinality : List PrimeIndex → ℕ
  | [] => 1
  | p :: tail => p.1 * cardinality tail

@[simp]
theorem cardinality_nil : cardinality [] = 1 :=
  rfl

@[simp]
theorem cardinality_cons (p : PrimeIndex) (tail : List PrimeIndex) :
    cardinality (p :: tail) = p.1 * cardinality tail :=
  rfl

/-- The address type has exactly the product of its prime radices many points. -/
@[simp]
theorem card_atomicAddress :
    ∀ word : List PrimeIndex,
      Fintype.card (AtomicAddress word) = cardinality word
  | [] => by
      simp [AtomicAddress, cardinality]
  | p :: tail => by
      letI := atomicAddressFintype tail
      simp [AtomicAddress, cardinality, card_atomicAddress tail]

/--
Least-significant-coordinate-first mixed-radix encoding.

For `p :: tail`, the first coordinate contributes its representative in
`[0,p)`, while the remaining address is shifted by the factor `p`.
-/
def encode : (word : List PrimeIndex) → AtomicAddress word → ℕ
  | [], _ => 0
  | p :: tail, address =>
      address.1.val + p.1 * encode tail address.2

/-- Decode a natural number by repeated prime-radix quotient and remainder. -/
def decode : (word : List PrimeIndex) → ℕ → AtomicAddress word
  | [], _ => 0
  | p :: tail, code =>
      ((code : ZMod p.1), decode tail (code / p.1))

/-- Every encoded address lies below the product of its ordered radices. -/
theorem encode_lt_cardinality :
    ∀ (word : List PrimeIndex) (address : AtomicAddress word),
      encode word address < cardinality word
  | [], _ => by
      simp [encode, cardinality]
  | p :: tail, ⟨head, rest⟩ => by
      have hhead : head.val < p.1 :=
        ZMod.val_lt head
      have hrest : encode tail rest < cardinality tail :=
        encode_lt_cardinality tail rest
      calc
        encode (p :: tail) (head, rest)
            = head.val + p.1 * encode tail rest := rfl
        _ < p.1 + p.1 * encode tail rest :=
          Nat.add_lt_add_right hhead _
        _ = p.1 * (encode tail rest + 1) := by
          simp [Nat.mul_succ, Nat.add_comm]
        _ ≤ p.1 * cardinality tail :=
          Nat.mul_le_mul_left p.1 (Nat.succ_le_iff.mpr hrest)
        _ = cardinality (p :: tail) := rfl

/-- Decoding the mixed-radix code of an address recovers that address exactly. -/
@[simp]
theorem decode_encode :
    ∀ (word : List PrimeIndex) (address : AtomicAddress word),
      decode word (encode word address) = address
  | [], address => by
      exact Subsingleton.elim _ _
  | p :: tail, ⟨head, rest⟩ => by
      apply Prod.ext
      · change
          ((head.val + p.1 * encode tail rest : ℕ) : ZMod p.1) = head
        simp [ZMod.natCast_zmod_val, ZMod.natCast_self]
      · change
          decode tail
              ((head.val + p.1 * encode tail rest) / p.1) =
            rest
        rw [Nat.add_mul_div_left head.val (encode tail rest) p.2.pos]
        rw [Nat.div_eq_of_lt (ZMod.val_lt head), zero_add]
        exact decode_encode tail rest

/-- Encoding a bounded decoded code recovers that code exactly. -/
@[simp]
theorem encode_decode_of_lt :
    ∀ (word : List PrimeIndex) (code : ℕ),
      code < cardinality word →
        encode word (decode word code) = code
  | [], code, hcode => by
      have hzero : code = 0 := by
        simp [cardinality] at hcode
        omega
      subst code
      rfl
  | p :: tail, code, hcode => by
      have htail : code / p.1 < cardinality tail := by
        rw [Nat.div_lt_iff_lt_mul p.2.pos]
        simpa [cardinality, Nat.mul_comm] using hcode
      simp only [decode, encode]
      rw [encode_decode_of_lt tail (code / p.1) htail]
      simpa [ZMod.val_natCast] using Nat.mod_add_div code p.1

/-- The explicit ordered mixed-radix bijection. -/
def exactEquiv (word : List PrimeIndex) :
    AtomicAddress word ≃ Fin (cardinality word) where
  toFun address :=
    ⟨encode word address, encode_lt_cardinality word address⟩
  invFun code :=
    decode word code.1
  left_inv :=
    decode_encode word
  right_inv code :=
    Fin.ext (encode_decode_of_lt word code.1 code.2)

/--
The existing GRWTSK mixed-radix interface is inhabited by the explicit ordered
prime-group encoder, rather than by cardinality alone.
-/
def mixedRadixEquivalence (word : List PrimeIndex) :
    BitMatrix.Carrier.MixedRadixEquivalence
      (AtomicAddress word) (cardinality word) (encode word) where
  equivalence :=
    exactEquiv word
  agreesWithFormula :=
    fun _ => rfl

/-- Expand an address into the ordered list of fully typed prime atoms. -/
def atoms : (word : List PrimeIndex) → AtomicAddress word → List PrimeAtom
  | [], _ => []
  | p :: tail, address =>
      ⟨p, address.1⟩ :: atoms tail address.2

@[simp]
theorem atoms_length :
    ∀ (word : List PrimeIndex) (address : AtomicAddress word),
      (atoms word address).length = word.length
  | [], _ => rfl
  | _ :: tail, address => by
      simp [atoms, atoms_length tail address.2]

/-- Forgetting only the group elements recovers the exact ordered prime word. -/
@[simp]
theorem atom_primes :
    ∀ (word : List PrimeIndex) (address : AtomicAddress word),
      (atoms word address).map (fun atom => atom.1) = word
  | [], _ => rfl
  | _ :: tail, address => by
      simp [atoms, atom_primes tail address.2]

/-- A source-bound ordered prime factorization certificate. -/
structure OrderedFactorization (n : ℕ) where
  word : List PrimeIndex
  cardinality_eq : cardinality word = n

namespace OrderedFactorization

/-- An ordered prime factorization of `n` has exactly `n` atomic addresses. -/
@[simp]
theorem card_address {n : ℕ} (factorization : OrderedFactorization n) :
    Fintype.card (AtomicAddress factorization.word) = n :=
  (card_atomicAddress factorization.word).trans factorization.cardinality_eq

/-- The exact reversible address map attached to the ordered factorization. -/
def addressEquiv {n : ℕ} (factorization : OrderedFactorization n) :
    AtomicAddress factorization.word ≃ Fin n :=
  (exactEquiv factorization.word).trans
    (finCongr factorization.cardinality_eq)

@[simp]
theorem addressEquiv_symm_apply_apply {n : ℕ}
    (factorization : OrderedFactorization n)
    (address : AtomicAddress factorization.word) :
    factorization.addressEquiv.symm
      (factorization.addressEquiv address) = address := by
  simp

@[simp]
theorem addressEquiv_apply_symm_apply {n : ℕ}
    (factorization : OrderedFactorization n)
    (code : Fin n) :
    factorization.addressEquiv
      (factorization.addressEquiv.symm code) = code := by
  simp

end OrderedFactorization

/-- Reordering does not change the number of addresses. -/
theorem cardinality_eq_of_perm {left right : List PrimeIndex}
    (h : left.Perm right) :
    cardinality left = cardinality right := by
  induction h with
  | nil =>
      rfl
  | cons p h ih =>
      simpa [cardinality, ih]
  | swap p q tail =>
      simp [cardinality, Nat.mul_left_comm, Nat.mul_comm]
  | trans h₁ h₂ ih₁ ih₂ =>
      exact ih₁.trans ih₂

/-- A repeated prime gives one atomic axis for each occurrence. -/
@[simp]
theorem cardinality_replicate (p : PrimeIndex) :
    ∀ exponent : ℕ,
      cardinality (List.replicate exponent p) = p.1 ^ exponent
  | 0 => by
      simp [cardinality]
  | exponent + 1 => by
      simp [cardinality, cardinality_replicate p exponent, pow_succ, Nat.mul_comm]

/-- The compressed prime-power cyclic group with the same underlying count. -/
abbrev CompressedPrimePowerGroup (p : PrimeIndex) (exponent : ℕ) :=
  ZMod (p.1 ^ exponent)

@[simp]
theorem card_repeatedAtomicAddress (p : PrimeIndex) (exponent : ℕ) :
    Fintype.card (AtomicAddress (List.replicate exponent p)) =
      p.1 ^ exponent := by
  rw [card_atomicAddress, cardinality_replicate]

@[simp]
theorem card_compressedPrimePowerGroup (p : PrimeIndex) (exponent : ℕ) :
    Fintype.card (CompressedPrimePowerGroup p exponent) =
      p.1 ^ exponent := by
  simpa [CompressedPrimePowerGroup] using ZMod.card (p.1 ^ exponent)

/-- The prime `2`, used by the repeated-prime hostile control. -/
def primeTwo : PrimeIndex :=
  ⟨2, by norm_num⟩

/--
Equal cardinality does not identify the atomic and compressed group conventions.

The atomic `2,2` address has exponent two: every element added to itself is
zero. The compressed `ZMod 4` address contains `1`, whose double is nonzero.
-/
theorem repeatedTwo_not_addEquiv_compressed :
    ¬ Nonempty
      (AtomicAddress [primeTwo, primeTwo] ≃+
        CompressedPrimePowerGroup primeTwo 2) := by
  rintro ⟨equivalence⟩
  have hdouble
      (address : AtomicAddress [primeTwo, primeTwo]) :
      address + address = 0 := by
    rcases address with ⟨first, ⟨second, terminal⟩⟩
    apply Prod.ext
    · calc
        first + first = (2 : ZMod 2) * first := by ring
        _ = 0 := by norm_num
    · apply Prod.ext
      · calc
          second + second = (2 : ZMod 2) * second := by ring
          _ = 0 := by norm_num
      · exact Subsingleton.elim _ _
  have transported :=
    congrArg equivalence
      (hdouble
        (equivalence.symm
          (1 : CompressedPrimePowerGroup primeTwo 2)))
  have hbad :
      (1 : ZMod 4) + 1 = 0 := by
    simpa [CompressedPrimePowerGroup, primeTwo] using transported
  norm_num at hbad

end GRWTSK.NumberTheory.ElementaryNumberTheory.OrderedPrimeGroupAddress
