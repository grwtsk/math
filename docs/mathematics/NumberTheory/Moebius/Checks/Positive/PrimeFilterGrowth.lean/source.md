# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.PrimeFilterGrowth

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78b90eea78b21f5ed9336fec65a7cf98b4c41547` · SHA-256 `b2a2d10cc23ca09de63b6d828840fa1e26910f3258962b4ee0081dd5a5b52453`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth
import Lean
open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open scoped BigOperators

example (C q : ℝ) : PrimeBlockReverberation C q ↔
    ∀ P B : Finset ℕ, (∀ p ∈ P, p.Prime) → (∀ p ∈ B, p.Prime) → Disjoint P B →
      ∀ T : ℝ, 0 ≤ T → noteEnergy (primeNoteCascade (P ∪ B)) T ≤
        Real.exp (C * harmonicPrimeMass B) * noteEnergy (primeNoteCascade P) T +
          C * harmonicPrimeMass B * (1 + T)^q := Iff.rfl
example (A B q : ℝ) : PrimeReverberation A B q ↔
    ∀ P : Finset ℕ, (∀ p ∈ P, p.Prime) → ∀ p : ℕ, p.Prime → p ∉ P →
      ∀ T : ℝ, 0 ≤ T → max 0 (-noteCorrelation (primeNoteCascade P) (Real.log p) T) ≤
        (A / Real.sqrt p) * noteEnergy (primeNoteCascade P) T + (B / Real.sqrt p) * (1+T)^q := Iff.rfl

example {n : ℕ} (hn : 1 ≤ n) : pickupResponse n =
    fun u ↦ (Real.sqrt n)⁻¹ * causalShift (Real.log n) baseNote u :=
  pickupResponse_eq_causal_note hn
example {u T : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    wholePickup u = primeNoteCascade (pickupPrimes T) u := pickup_eq_prime_note_cascade hu huT
example {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) {p : ℕ}
    (hp : p.Prime) (hpP : p ∉ P) {T : ℝ} (hT : 0 ≤ T) :
    noteEnergy (primeNoteCascade (insert p P)) T = noteEnergy (primeNoteCascade P) T +
      (p : ℝ)⁻¹ * noteEnergy (primeNoteCascade P) (T - Real.log p) -
      2 * (Real.sqrt p)⁻¹ * noteCorrelation (primeNoteCascade P) (Real.log p) T :=
  energy_after_prime_insertion hP hp hpP hT
example {f : ℝ → ℝ} {a T : ℝ} (hT : 0 ≤ T) (hTa : T < a) :
    noteCorrelation f a T = 0 := noteCorrelation_zero_before hT hTa
example (f : ℝ → ℝ) {T : ℝ} (hT : T ≤ 0) : noteEnergy f T = 0 := by
  simp [noteEnergy, max_eq_left hT]
example {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q) (hBR : PrimeBlockReverberation C q) :
    PickupCrossPoly := p04_of_block_reverberation hC hq hBR
example {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q) (hBR : PrimeBlockReverberation C q) :
    _root_.RiemannHypothesis := riemannHypothesis_of_block_reverberation hC hq hBR
example {A B q : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B) (hq : 0 ≤ q)
    (hR : PrimeReverberation A B q) : PickupCrossPoly := p04_of_prime_reverberation hA hB hq hR
example {T : ℝ} (hT : 0 ≤ T) : harmonicPrimeMass (pickupPrimes T) ≤
    Real.log 4 * ((Real.log 2)⁻¹ + |Real.log (Real.log 2)|) + Real.log 4 * Real.log (1+T) :=
  harmonicPrimeMass_log_bound hT
-- Ordered interactions survive the expansion; composite prime powers have zero coefficient.
example : moebiusReal 4 = 0 := by
  have h := ArithmeticFunction.moebius_apply_prime_pow (by norm_num : Nat.Prime 2) (by norm_num : (2:ℕ) ≠ 0)
  norm_num at h
  unfold moebiusReal
  exact_mod_cast h
example : moebiusReal 6 = 1 := by
  have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
    (by norm_num : Nat.Coprime 2 3)
  rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)] at h
  norm_num at h
  unfold moebiusReal
  exact_mod_cast h

elab "#audit_ccc_prime_cascade" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if #[`GRWTSK.NumberTheory.Moebius.PrimeFactorFilters,
          `GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy,
          `GRWTSK.NumberTheory.Prime.ReciprocalMass,
          `GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth].contains owner then
        -- Compiler-generated equations can be repeated in later module data.
        -- Keep each constant at its canonical environment owner.
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty CCC source family"
  for (n, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {n}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {n}"
    | _ => pure ()
    let axioms ← collectAxioms n
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let owner := moduleNames[(env.getModuleIdxFor? n).get!]!
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | _ => "generated"
    let entry := Json.mkObj [
      ("module", toJson owner.toString),
      ("name", toJson n.toString),
      ("kind", toJson kind),
      ("type", toJson type.pretty),
      ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"CASCADE_DECL::{entry.compress}"
  logInfo m!"CASCADE_COUNT::{declarations.length}"

#audit_ccc_prime_cascade
```
