# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.FiniteSimplexGammaAndObservation.Variantd3ce1df042ea2552.FiniteOneBitImageBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `950a48c1378fc20fed86398a505aba6c338ed79c` · SHA-256 `9c8df6bd9591ccb71d1ff4c232e18638938a3141197baeb6dc1e0e06961ce85b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FiniteOneBitImageBounds — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715
Organized SHA-256: a19f34aafcef21a20c952b94bdbd966627754403cbdfdfbcfc899ba78dc77e88
PMD: 510.7.010.010 counting principles (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete finite enumeration/domain/global2^(m*n) bounds including zero dimensions, under exactly the original Fintype premises. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Core.Basic
import Quantization.Resolution
import Batteries.Data.Nat.Lemmas
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.FiniteSimplexGammaAndObservation.Variantd3ce1df042ea2552.OneBitImageQuotient

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

namespace Quantizer

variable {Cfg : Type u} {m n : Nat}

/-- Enumerate the distinct outputs realized by a finite configuration type. -/
def effectiveStates
    (Q : Quantizer Cfg m n)
    [Fintype Cfg] :
    Finset (BitMatrix m n) :=
  Finset.univ.image Q.encode

/-- Membership in the finite enumeration is equivalent to being encoded. -/
theorem mem_effectiveStates_iff
    (Q : Quantizer Cfg m n)
    [Fintype Cfg]
    (A : BitMatrix m n) :
    A ∈ Q.effectiveStates ↔
      ∃ u : Cfg, Q.encode u = A := by
  simp [effectiveStates]

/-- A finite encoder image has no more states than its configuration domain. -/
theorem card_effectiveStates_le_domain
    (Q : Quantizer Cfg m n)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤ Fintype.card Cfg := by
  simpa [effectiveStates] using
    (Finset.card_image_le (s := Finset.univ) (f := Q.encode))

/--
An `m × n` one-bit matrix has exactly `2 ^ (m * n)` possible values.

This also covers zero rows or zero columns: there is exactly one function from
an empty index type, matching `2 ^ 0 = 1`.
-/
theorem card_bitMatrix
    (m n : Nat) :
    Fintype.card (BitMatrix m n) = 2 ^ (m * n) := by
  change Fintype.card (Fin m → Fin n → Bool) = 2 ^ (m * n)
  rw [Fintype.card_fun, Fintype.card_fun]
  simp only [Fintype.card_bool, Fintype.card_fin]
  rw [← Nat.pow_mul, Nat.mul_comm]

/--
Every finite quantizer realizes at most `2 ^ (m * n)` effective states, the
global information bound for an `m × n` binary observation.
-/
theorem card_effectiveStates_le_bits
    (Q : Quantizer Cfg m n)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤ 2 ^ (m * n) := by
  calc
    Q.effectiveStates.card ≤ Fintype.card (BitMatrix m n) :=
      Finset.card_le_univ Q.effectiveStates
    _ = 2 ^ (m * n) := card_bitMatrix m n

end Quantizer
end BitMatrix
```
