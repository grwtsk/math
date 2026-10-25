# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.SourceComponents.Variantc0d071bb32068dd2.FactorGrammarConversions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c7c7fe016d931561daf1ae2eac20575405d9f0d` · SHA-256 `9fe1942b87c56d83a5048ee7541977c3168de59b55d4821bfd30f000c0f23f49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FactorGrammarConversions — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514
Organized SHA-256: bddfb823c889290c2306eb403cbab8dfff99cc13ccf9f329892261c33b9d09a4
PMD: 510.0.070.020.050 inductive types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole two inductive grammars and both exact conversion inverse proofs, with original namespaces. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.NumberTheory.PrimePower

/-!
# Folder.CellularArithmetic.Grammar

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.arithmetic_factor_term
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

inductive ArithmeticFactorTerm where
  | one : ArithmeticFactorTerm
  | dilate :
      ArithmeticFactorTerm →
      NumberTheory.PrimePower →
      ArithmeticFactorTerm

inductive CellularFactorTerm where
  | pivot : CellularFactorTerm
  | dilate :
      CellularFactorTerm →
      NumberTheory.PrimePower →
      CellularFactorTerm

def arithmeticToCellular :
    ArithmeticFactorTerm → CellularFactorTerm
  | .one => .pivot
  | .dilate t p => .dilate (arithmeticToCellular t) p

def cellularToArithmetic :
    CellularFactorTerm → ArithmeticFactorTerm
  | .pivot => .one
  | .dilate t p => .dilate (cellularToArithmetic t) p

theorem cellularToArithmetic_arithmeticToCellular
    (t : ArithmeticFactorTerm) :
    cellularToArithmetic (arithmeticToCellular t) = t := by
  induction t with
  | one => rfl
  | dilate t p ih =>
      simp [arithmeticToCellular, cellularToArithmetic, ih]

theorem arithmeticToCellular_cellularToArithmetic
    (t : CellularFactorTerm) :
    arithmeticToCellular (cellularToArithmetic t) = t := by
  induction t with
  | pivot => rfl
  | dilate t p ih =>
      simp [arithmeticToCellular, cellularToArithmetic, ih]

end CellularArithmetic
end Folder
```
