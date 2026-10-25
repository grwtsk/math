# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.FunctionPredicatesAndConditionalEquivalences.Varianta4b8b3fa057b7df9.EquivalenceFromSuppliedBijectivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a45098e0f2dc6ecced24d1d4f650e64ab00e1dc` · SHA-256 `9479058d07d9b40a9a3b46f5e0fe6e5e406fea0e29af63c343776b8e94462c2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
EquivalenceFromSuppliedBijectivity — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8
Organized SHA-256: 2fc3319e0069e43eda690118b76cb4ec073f14587f335a8e72d2859ca20f19e1
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete predicates on comparison functions and their exact composition proofs; separately the equivalence constructed only from supplied bijectivity and its application proof. Every premise and literal historical Spec provider remains. No comparison is presumed injective, surjective or invertible without its actual proof. -/

import DAF.Comparison.Core
import Mathlib.Logic.Equiv.Defs

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.FunctionPredicatesAndConditionalEquivalences.Varianta4b8b3fa057b7df9.ComparisonPredicatesAndComposition

/-!
# Properties of comparison maps

Properties are predicates on a `Spec`; they are not fields of the map itself.
An equivalence is constructed only from a proof of bijectivity.
-/

namespace DAF.Comparison

universe u v w

namespace Spec

/-- Promote a comparison to an equivalence only from a proof certificate. -/
noncomputable def toEquiv (C : Spec A B) (h : IsBijective C) : A ≃ B :=
  Equiv.ofBijective C.map h

@[simp]
theorem toEquiv_apply (C : Spec A B) (h : IsBijective C) (a : A) :
    C.toEquiv h a = C.map a :=
  rfl

end Spec

end DAF.Comparison
```
