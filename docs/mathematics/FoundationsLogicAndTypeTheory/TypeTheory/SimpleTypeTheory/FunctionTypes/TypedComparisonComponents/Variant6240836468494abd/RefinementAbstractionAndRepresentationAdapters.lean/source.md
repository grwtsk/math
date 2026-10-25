# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.TypedComparisonComponents.Variant6240836468494abd.RefinementAbstractionAndRepresentationAdapters

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e4694aa281921c823a89f8fdd736676897144e8` · SHA-256 `974f915e6cc382a87d0ab190b65854d1ca36bd11dcf7e793966a9766b19acb52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
RefinementAbstractionAndRepresentationAdapters - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890
Organized SHA-256: b11d55d172d1e03a0c9c1ea539e67f377116c895bcaaa8d2849ffd0ed1edf6c2
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Only complete typed System/Hom/Factor/Iso state and causal-map adapters and complete refinement/representation-map adapters are materialized. Causal transport retains each surjective input-map premise and representation injectivity uses the original left-inverse law. Claim/ConditionalCertificate/Certified ownership/coefficient/status composition and all Workspace upgrade packages remain whole archived commands, including their exact conditional/rfl/semantics proofs. No state map becomes a chain equivalence or determinant transport. Exact per-component contents are its complete command map. Whole-file documentation below is copied unchanged and can describe other archived/components.
-/

import DAF.Comparison.Properties
import DAF.Comparison.LogicalStatus
import DAF.Comparison.Scope
import DAF.Causal
import DAF.Refinement
import DAF.Upgrade

/-!
# Certified comparison composition and DAF adapters

Comparison maps compose as functions.  Their claims, proof assumptions,
coefficient compatibility, and ownership scope remain separate.  Direct
certified composition requires equality of adjacent coefficient contexts;
otherwise an explicit `CoefficientChange` must be supplied.

The adapters below reuse the existing DAF theorems.  A state equivalence is
not thereby a chain equivalence, and none of these state-level adapters enables
determinant transport.
-/

namespace DAF.Comparison

universe u v w x c

namespace Claim

end Claim

namespace ConditionalCertificate

end ConditionalCertificate

namespace Certified

end Certified

end DAF.Comparison

namespace DAF

universe uI uX uR uO

namespace System

variable {L M N : System}

namespace Hom

end Hom

namespace Factor

end Factor

namespace Iso

end Iso

end System

namespace Refinement

variable {Spec Impl : System}

/-- The existing implementation abstraction map as a comparison. -/
def toComparisonSpec (R : Refinement Spec Impl) :
    Comparison.Spec Impl.State Spec.State :=
  ⟨R.abstract⟩

@[simp]
theorem toComparisonSpec_apply (R : Refinement Spec Impl) (x : Impl.State) :
    R.toComparisonSpec.map x = R.abstract x :=
  rfl

end Refinement

namespace RepresentationRefinement

variable {Spec Impl : System}

def abstractionComparisonSpec (R : RepresentationRefinement Spec Impl) :
    Comparison.Spec Impl.State Spec.State :=
  R.toRefinement.toComparisonSpec

def representationComparisonSpec (R : RepresentationRefinement Spec Impl) :
    Comparison.Spec Spec.State Impl.State :=
  ⟨R.represent⟩

theorem representationComparison_injective
    (R : RepresentationRefinement Spec Impl) :
    Comparison.IsInjective R.representationComparisonSpec :=
  R.represent_injective

theorem abstraction_leftInverse_representation
    (R : RepresentationRefinement Spec Impl) :
    Comparison.IsLeftInverseOf
      R.abstractionComparisonSpec R.representationComparisonSpec :=
  R.abstract_represent

end RepresentationRefinement

universe u v w₀ w₁ w₂

namespace WorkspaceUpgrade

end WorkspaceUpgrade

namespace FactorUpgrade

end FactorUpgrade

namespace EquivalenceUpgrade

end EquivalenceUpgrade

namespace RefinementUpgrade

end RefinementUpgrade

end DAF
```
