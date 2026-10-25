/-
ComparisonPredicatesAndComposition — individual source review
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

/-!
# Properties of comparison maps

Properties are predicates on a `Spec`; they are not fields of the map itself.
An equivalence is constructed only from a proof of bijectivity.
-/

namespace DAF.Comparison

universe u v w

def IsInjective (C : Spec A B) : Prop :=
  Function.Injective C.map

def IsSurjective (C : Spec A B) : Prop :=
  Function.Surjective C.map

def IsBijective (C : Spec A B) : Prop :=
  Function.Bijective C.map

def IsLeftInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  Function.LeftInverse inverse.map forward.map

def IsRightInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  Function.RightInverse inverse.map forward.map

def IsInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  IsLeftInverseOf inverse forward ∧ IsRightInverseOf inverse forward

theorem isInjective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsInjective g) (hf : IsInjective f) :
    IsInjective (g.comp f) :=
  hg.comp hf

theorem isSurjective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsSurjective g) (hf : IsSurjective f) :
    IsSurjective (g.comp f) :=
  hg.comp hf

theorem isBijective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsBijective g) (hf : IsBijective f) :
    IsBijective (g.comp f) :=
  ⟨isInjective_comp hg.1 hf.1, isSurjective_comp hg.2 hf.2⟩

end DAF.Comparison
