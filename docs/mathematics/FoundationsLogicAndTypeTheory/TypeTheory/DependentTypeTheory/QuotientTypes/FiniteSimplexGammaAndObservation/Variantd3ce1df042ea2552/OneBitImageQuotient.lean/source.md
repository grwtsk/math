# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.FiniteSimplexGammaAndObservation.Variantd3ce1df042ea2552.OneBitImageQuotient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1b6454aa689ebefa93115d24c4e879aa5a8ff04` · SHA-256 `12a8144fd6469d414e46edfae718ad5c80d51aaa8f9bbefe7932c97a622c7ac2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OneBitImageQuotient — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715
Organized SHA-256: a19f34aafcef21a20c952b94bdbd966627754403cbdfdfbcfc899ba78dc77e88
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole arbitrary encoder, equality setoid, realized-image subtype and quotient-to-image equivalence; image is not the full matrix space. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Core.Basic
import Quantization.Resolution
import Batteries.Data.Nat.Lemmas
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

/-!
# Finite quantization semantics

A `BitMatrix.Quantizer Cfg m n` observes a configuration by encoding it as an
`m × n` matrix of bits. Equality of observations induces an equivalence
relation: it is reflexive, symmetric, and transitive because matrix equality
has those properties.

The effective state space is the image of the encoder, not generally the whole
matrix space. Quotienting configurations by indistinguishability therefore
produces exactly the effective states, even when some binary matrices are never
realized. For finite configuration types, the realized image has at most as
many elements as the domain and at most `2 ^ (m * n)` elements globally: there
are `m * n` independently Boolean matrix entries.

An array-backed encoder can be lifted with `Quantizer.ofArrayBacked`. Its semantics are
deliberately observational: implementation values are compared only after
conversion through `BitMatrix.ArrayBacked.toMatrix`, never by raw structure or proof-field
equality.
-/

universe u

namespace BitMatrix

/--
A finite-resolution observation of configurations as `m × n` binary matrices.

The configuration type need not itself be finite; finiteness is required only
for explicit enumeration of the realized outputs.
-/
structure Quantizer
    (Cfg : Type u)
    (m n : Nat) where
  /-- Encode a configuration as its observable binary matrix. -/
  encode : Cfg → BitMatrix m n

namespace Quantizer

variable {Cfg : Type u} {m n : Nat}

/-- Configurations are indistinguishable exactly when their encodings agree. -/
def Indistinguishable
    (Q : Quantizer Cfg m n)
    (u v : Cfg) :
    Prop :=
  Q.encode u = Q.encode v

/-- Every configuration is indistinguishable from itself. -/
@[simp]
theorem indistinguishable_refl
    (Q : Quantizer Cfg m n)
    (u : Cfg) :
    Q.Indistinguishable u u :=
  rfl

/-- Indistinguishability is symmetric because equality of encodings is symmetric. -/
theorem indistinguishable_symm
    (Q : Quantizer Cfg m n)
    {u v : Cfg}
    (h : Q.Indistinguishable u v) :
    Q.Indistinguishable v u :=
  h.symm

/-- Indistinguishability is transitive because equality of encodings is transitive. -/
theorem indistinguishable_trans
    (Q : Quantizer Cfg m n)
    {u v w : Cfg}
    (huv : Q.Indistinguishable u v)
    (hvw : Q.Indistinguishable v w) :
    Q.Indistinguishable u w :=
  huv.trans hvw

/--
The encoder kernel as a setoid. Its equivalence laws are inherited from
equality in the declarative matrix space.
-/
def setoid
    (Q : Quantizer Cfg m n) :
    Setoid Cfg where
  r := Q.Indistinguishable
  iseqv := {
    refl := fun u => Q.indistinguishable_refl u
    symm := fun h => Q.indistinguishable_symm h
    trans := fun h₁ h₂ => Q.indistinguishable_trans h₁ h₂
  }

/--
The effective states are precisely the matrices realized by some
configuration. This image can be a proper subset of all `m × n` matrices.
-/
def EffectiveState
    (Q : Quantizer Cfg m n) :=
  {A : BitMatrix m n // ∃ u : Cfg, Q.encode u = A}

/-- Regard one encoded configuration as a realized effective state. -/
def toEffective
    (Q : Quantizer Cfg m n)
    (u : Cfg) :
    Q.EffectiveState :=
  ⟨Q.encode u, u, rfl⟩

/--
Factor the encoder through indistinguishability classes. Well-definedness is
exactly the assertion that indistinguishable representatives encode equally.
-/
def quotientToEffective
    (Q : Quantizer Cfg m n) :
    Quotient Q.setoid → Q.EffectiveState :=
  Quotient.lift Q.toEffective (by
    intro u v huv
    apply Subtype.ext
    exact huv)

/-- The quotient map sends a representative to its encoded effective state. -/
@[simp]
theorem quotientToEffective_mk
    (Q : Quantizer Cfg m n)
    (u : Cfg) :
    Q.quotientToEffective (Quotient.mk Q.setoid u) =
      Q.toEffective u :=
  rfl

/--
Distinct quotient classes have distinct effective states: equal image values
make their representatives indistinguishable.
-/
theorem quotientToEffective_injective
    (Q : Quantizer Cfg m n) :
    Function.Injective Q.quotientToEffective := by
  intro x y h
  induction x using Quotient.inductionOn with
  | _ u =>
    induction y using Quotient.inductionOn with
    | _ v =>
      apply Quotient.sound
      change Q.encode u = Q.encode v
      exact congrArg Subtype.val h

/-- Every effective state has a representative configuration in the quotient. -/
theorem quotientToEffective_surjective
    (Q : Quantizer Cfg m n) :
    Function.Surjective Q.quotientToEffective := by
  rintro ⟨A, u, hu⟩
  refine ⟨Quotient.mk Q.setoid u, ?_⟩
  apply Subtype.ext
  exact hu

/--
Indistinguishability classes are equivalent to the encoder image. They are not
claimed to be equivalent to the entire matrix space, since the encoder need
not realize every binary matrix.
-/
noncomputable def quotientEquivEffective
    (Q : Quantizer Cfg m n) :
    Quotient Q.setoid ≃ Q.EffectiveState :=
  Equiv.ofBijective Q.quotientToEffective
    ⟨Q.quotientToEffective_injective,
     Q.quotientToEffective_surjective⟩

end Quantizer
end BitMatrix
```
