/-
FiniteBitPlaneSpace — exact individually reviewed source
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

/- Complete finite bit-plane type, both instances and cardinality proof, with original one-bit cardinal theorem and zero-width behavior. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Core.Basic
import Quantization.Resolution
import Batteries.Data.Nat.Lemmas
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.FiniteSimplexGammaAndObservation.Variantd3ce1df042ea2552.FiniteOneBitImageBounds

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

open Surface.Quantization

/-!
## Positive multibit observations

A multibit matrix is a finite family of Boolean bit planes.  The plane index
is the resolution dimension; it is not a row or column index and it does not
represent a compiler word.  Plane `p` has significance `2 ^ p.val`.
-/

/-- A row/column Boolean matrix at each of `bits` explicit bit planes. -/
def QuantizedMatrix
    (bits rows columns : Nat) :=
  Fin bits → BitMatrix rows columns

instance instFintypeQuantizedMatrix
    (bits rows columns : Nat) :
    Fintype (QuantizedMatrix bits rows columns) := by
  unfold QuantizedMatrix BitMatrix Matrix
  infer_instance

instance instDecidableEqQuantizedMatrix
    (bits rows columns : Nat) :
    DecidableEq (QuantizedMatrix bits rows columns) := by
  unfold QuantizedMatrix BitMatrix Matrix
  infer_instance

/-- The complete bit-plane space has one independent bit per plane and cell. -/
theorem card_quantizedMatrix
    (bits rows columns : Nat) :
    Fintype.card (QuantizedMatrix bits rows columns) =
      2 ^ (bits * rows * columns) := by
  calc
    Fintype.card (QuantizedMatrix bits rows columns) =
        Fintype.card (BitMatrix rows columns) ^ bits := by
      change Fintype.card (Fin bits → BitMatrix rows columns) = _
      rw [Fintype.card_fun]
      simp
    _ = (2 ^ (rows * columns)) ^ bits := by
      exact congrArg (fun cardinality : Nat => cardinality ^ bits)
        (Quantizer.card_bitMatrix rows columns)
    _ = 2 ^ ((rows * columns) * bits) := by
      exact (Nat.pow_mul 2 (rows * columns) bits).symm
    _ = 2 ^ (bits * rows * columns) := by
      congr 1
      ac_rfl

end BitMatrix
