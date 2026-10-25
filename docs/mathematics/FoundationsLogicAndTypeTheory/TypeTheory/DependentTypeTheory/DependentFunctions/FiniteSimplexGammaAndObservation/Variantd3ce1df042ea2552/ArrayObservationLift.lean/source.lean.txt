/-
ArrayObservationLift — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715
Organized SHA-256: a19f34aafcef21a20c952b94bdbd966627754403cbdfdfbcfc899ba78dc77e88
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Pure whole array-observation encoder lift and exact equality/Iff consequences through the original toMatrix, not array/proof-field equality or performance evidence. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

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

/--
Lift an executable array-backed encoder into the declarative quantizer layer.
The only observable result is `BitMatrix.ArrayBacked.toMatrix`.
-/
def ofArrayBacked
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n) :
    Quantizer Cfg m n :=
  ⟨fun u => (encodeArrayBacked u).toMatrix⟩

/-- An array-backed quantizer encodes by passing its result through `toMatrix`. -/
@[simp]
theorem ofArrayBacked_encode
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (u : Cfg) :
    (ofArrayBacked encodeArrayBacked).encode u =
      (encodeArrayBacked u).toMatrix :=
  rfl

/--
Array-backed configurations are indistinguishable exactly when their
declarative observations agree; raw arrays and invariant proofs are irrelevant.
-/
theorem ofArrayBacked_indistinguishable_iff
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (u v : Cfg) :
    (ofArrayBacked encodeArrayBacked).Indistinguishable u v ↔
      (encodeArrayBacked u).toMatrix = (encodeArrayBacked v).toMatrix :=
  Iff.rfl

end Quantizer
end BitMatrix
