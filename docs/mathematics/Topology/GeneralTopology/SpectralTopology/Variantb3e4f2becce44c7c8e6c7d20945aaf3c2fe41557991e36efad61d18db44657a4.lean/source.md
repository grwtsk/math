# Complete source: GRWTSK.Topology.GeneralTopology.SpectralTopology.Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed5763a0a62cbacd2df637e5b7efee9471d5bd04` · SHA-256 `b3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.FiniteFunctionAlgebra

/-!
# Discrete finite spectral realization

For the full finite function algebra `X → k`, every subset of `X` is the zero
locus of one coordinate function.  The resulting represented Zariski topology
on the point carrier is therefore discrete.
-/

namespace Cord

section Spectral

variable {X k : Type*} [Fintype X] [DecidableEq X] [Field k]

/-- A coordinate function whose zero locus is exactly `Y`. -/
noncomputable def zeroIndicator (Y : Set X) : X → k :=
  by
    classical
    exact fun x => if x ∈ Y then 0 else 1

omit [Fintype X] [DecidableEq X] in
@[simp] theorem zeroIndicator_eq_zero_iff (Y : Set X) (x : X) :
    zeroIndicator (k := k) Y x = 0 ↔ x ∈ Y := by
  classical
  by_cases hx : x ∈ Y <;> simp [zeroIndicator, hx]

omit [Fintype X] [DecidableEq X] in
/-- Every subset of a finite rhetorical carrier is an algebraic zero set. -/
theorem every_set_is_zero_locus (Y : Set X) :
    {x | zeroIndicator (k := k) Y x = 0} = Y := by
  ext x
  exact zeroIndicator_eq_zero_iff (k := k) Y x

/-- The discrete topology used by the finite spectral realization. -/
@[reducible] def finiteSpectralTopology : TopologicalSpace X where
  IsOpen _ := True
  isOpen_univ := trivial
  isOpen_inter := by
    intro _ _ _ _
    trivial
  isOpen_sUnion := by
    intro _ _
    trivial

omit [Fintype X] [DecidableEq X] in
/-- Every subset is open in the finite spectral realization. -/
theorem finiteSpectralTopology_isOpen (S : Set X) :
    @IsOpen X (finiteSpectralTopology (X := X)) S := by
  trivial

omit [Fintype X] [DecidableEq X] in
/-- Every subset is closed in the finite spectral realization. -/
theorem finiteSpectralTopology_isClosed (S : Set X) :
    @IsClosed X (finiteSpectralTopology (X := X)) S := by
  apply @IsClosed.mk X (finiteSpectralTopology (X := X)) S
  trivial

omit [Fintype X] [DecidableEq X] in
/-- Every singleton is clopen. -/
theorem singleton_clopen (x : X) :
    @IsClopen X (finiteSpectralTopology (X := X)) ({x} : Set X) := by
  exact ⟨finiteSpectralTopology_isClosed ({x} : Set X),
    finiteSpectralTopology_isOpen ({x} : Set X)⟩

omit [Fintype X] in
/-- A determining sample for the full function algebra contains every point. -/
theorem full_function_determining_sample_eq_univ
    (sample : Set X)
    (hdet : DeterminingSample
      (Set.univ : Set (X → k)) sample) :
    sample = Set.univ := by
  apply Set.eq_univ_of_forall
  intro x
  by_contra hx
  let f : X → k := FunctionIdeal.pointMass x 1
  have hEq : f = 0 := by
    apply hdet (by simp) (by simp)
    intro y hy
    have hyx : y ≠ x := by
      intro h
      subst y
      exact hx hy
    simp [f, hyx]
  have hAtX := congrFun hEq x
  simp [f] at hAtX

end Spectral

end Cord
```
