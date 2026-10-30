import Mathlib
import GRWTSK.InformationAndCommunicationTheoryCircuits.CommunicationInformation.PrefixLengthVariableCommaFreeCodes.RecursiveWaveformEnergy

/-!
# Addressed prime-length modular windows and real-linear transitions

Copyright (c) 2026 grwtsk contributors. MIT.

Prime length is an indexing constraint, not an arithmetic zero theorem.
A real-linear transition is a declared map, not necessarily invertible.
The finite cyclic difference below is a discrete differential; no
unproved Hodge theorem, zeta-zero identification, or limiting convergence
is asserted.

Status: SOURCE_CANDIDATE. Compilation, fresh kernel replay,
transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.PrimeModularWindow

/-- A finite waveform window with a prime number of real samples.
The address and provenance label do not affect its underlying vector space. -/
structure Window where
  length : ℕ
  prime : Nat.Prime length
  address : ℕ
  provenance : String
  samples : Fin length → ℝ

/-- Real vectors indexed by a fixed prime window. -/
abbrev Window.Vector (w : Window) := Fin w.length → ℝ

/-- Real-linear morphisms between any two addressed prime windows. -/
structure Morphism (source target : Window) where
  linear : source.Vector →ₗ[ℝ] target.Vector

/-- Composition retains exact source and target types. -/
def Morphism.comp {a b c : Window}
    (g : Morphism b c) (f : Morphism a b) : Morphism a c :=
  ⟨g.linear.comp f.linear⟩

/-- Identity transport at an address. -/
def Morphism.id (w : Window) : Morphism w w :=
  ⟨LinearMap.id⟩

theorem Morphism.comp_id {a b : Window} (f : Morphism a b) :
    (f.comp (Morphism.id a)).linear = f.linear := by
  ext v i
  rfl

theorem Morphism.id_comp {a b : Window} (f : Morphism a b) :
    ((Morphism.id b).comp f).linear = f.linear := by
  ext v i
  rfl

/-- A transition always carries the zero vector to zero.
This does NOT say that it has a trivial kernel. -/
theorem Morphism.map_zero {a b : Window} (f : Morphism a b) :
    f.linear 0 = 0 := f.linear.map_zero

/-- Cyclic discrete derivative on a prime index set.
Its kernel contains constant vectors; no spectral limit is inferred. -/
def cyclicDifference (w : Window) (v : w.Vector) : w.Vector :=
  fun i => v ⟨(i.val + 1) % w.length, Nat.mod_lt _ w.prime.pos⟩ - v i

/-- A constant vector is closed under the cyclic differential. -/
theorem cyclicDifference_constant (w : Window) (c : ℝ) :
    cyclicDifference w (fun _ => c) = 0 := by
  funext i
  simp [cyclicDifference]

/-- Address data can be revised without changing the measured vector. -/
def Window.readdress (w : Window) (newAddress : ℕ) (label : String) : Window :=
  { w with address := newAddress, provenance := label }

theorem Window.readdress_samples (w : Window) (n : ℕ) (label : String) :
    (w.readdress n label).samples = w.samples := rfl

end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.PrimeModularWindow
