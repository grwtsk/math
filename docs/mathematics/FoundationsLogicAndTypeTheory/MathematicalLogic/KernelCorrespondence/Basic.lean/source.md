# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.KernelCorrespondence.Basic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fee493288b15d59435acfb733f422b360fd235b` · SHA-256 `833a2d1f9db4d538b513d0d6ef9d4b865b7c8d10da9dc8bd635a4ea68bb7cced`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Init

/-!
FINITE1-PROOF-PIPELINE/v1. Local adapter to Lean's rational arithmetic and logic.
The abstract theorem below has explicit hypotheses. Generated per-object proofs
must discharge ALL of them; this file alone does not prove a matrix claim.
No operational authority, full-spectrum theorem, or Rust refinement is implied.
-/
-- This assembly theorem is purely logical. Rational arithmetic and tactic
-- imports belong to the generated instance modules, not this shared dependency.
namespace Finite1Pipeline

/-- Both kernel maps and their inverse laws. The third law is deliberately
stronger: restriction after lift is identity on the entire retained space. -/
def KernelCorrespondence {V W : Type} (T : V → V) (S : W → W)
    (L : W → V) (R : V → W) (zV : V) (zW : W) : Prop :=
  (∀ x, S x = zW → T (L x) = zV) ∧
  (∀ v, T v = zV → S (R v) = zW) ∧
  (∀ x, R (L x) = x) ∧
  (∀ v, T v = zV → L (R v) = v)

/-- Assemble the kernel bijection from checked transport, embedding, and
reconstruction laws. No finite sample is used as a universal premise. -/
theorem assemble {V W : Type} (T : V → V) (S : W → W)
    (L : W → V) (R : V → W) (E : W → V) (zV : V) (zW : W)
    (transport : ∀ x, T (L x) = E (S x))
    (embedded_zero : ∀ x, E x = zV ↔ x = zW)
    (restrict_lift : ∀ x, R (L x) = x)
    (restore : ∀ v, T v = zV → L (R v) = v) :
    KernelCorrespondence T S L R zV zW := by
  refine ⟨?_, ?_, restrict_lift, restore⟩
  · intro x hx
    calc
      T (L x) = E (S x) := transport x
      _ = E zW := congrArg E hx
      _ = zV := (embedded_zero zW).mpr rfl
  · intro v hv
    apply (embedded_zero (S (R v))).mp
    calc
      E (S (R v)) = T (L (R v)) := (transport (R v)).symm
      _ = T v := congrArg T (restore v hv)
      _ = zV := hv

end Finite1Pipeline

#print axioms Finite1Pipeline.assemble
```
