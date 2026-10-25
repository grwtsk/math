# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.TypedComparisonComponents.Variant6240836468494abd.SystemStateAndCausalComparisonAdapters

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d124dc861e03ce87397e9a4dee7876d5212d28e0` · SHA-256 `f679bec79d2437daea6c11499aba6184ff63c4b3bd9c5cfea573ed69e8312ca5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SystemStateAndCausalComparisonAdapters - exact source component
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

/-- The state map of a system homomorphism as a property-free comparison. -/
def toComparisonSpec (F : M.Hom N) :
    Comparison.Spec M.State N.State :=
  ⟨F.mapState⟩

@[simp]
theorem toComparisonSpec_apply (F : M.Hom N) (x : M.State) :
    F.toComparisonSpec.map x = F.mapState x :=
  rfl

/-- System composition agrees definitionally with comparison composition. -/
theorem toComparisonSpec_comp (g : M.Hom N) (f : L.Hom M) :
    (g.comp f).toComparisonSpec =
      g.toComparisonSpec.comp f.toComparisonSpec :=
  rfl

/-- Existing causal transport, exposed as a comparison without reproof. -/
def causalStateComparisonSpec
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput) :
    Comparison.Spec M.CausalState N.CausalState :=
  ⟨F.causalStateMap hInput⟩

end Hom

namespace Factor

def toComparisonSpec (F : M.Factor N) :
    Comparison.Spec M.State N.State :=
  F.toHom.toComparisonSpec

theorem toComparison_surjective (F : M.Factor N) :
    Comparison.IsSurjective F.toComparisonSpec :=
  F.state_surjective

def causalStateComparisonSpec
    (F : M.Factor N)
    (hInput : Function.Surjective F.toHom.mapInput) :
    Comparison.Spec M.CausalState N.CausalState :=
  F.toHom.causalStateComparisonSpec hInput

theorem causalStateComparison_surjective
    (F : M.Factor N)
    (hInput : Function.Surjective F.toHom.mapInput) :
    Comparison.IsSurjective (F.causalStateComparisonSpec hInput) :=
  F.causalStateMap_surjective hInput

end Factor

namespace Iso

def toComparisonSpec (F : M.Iso N) :
    Comparison.Spec M.State N.State :=
  F.hom.toComparisonSpec

theorem toComparison_bijective (F : M.Iso N) :
    Comparison.IsBijective F.toComparisonSpec :=
  F.hom_state_bijective

noncomputable def causalStateComparisonSpec (F : M.Iso N) :
    Comparison.Spec M.CausalState N.CausalState :=
  ⟨F.causalStateEquiv⟩

theorem causalStateComparison_bijective (F : M.Iso N) :
    Comparison.IsBijective F.causalStateComparisonSpec :=
  F.causalStateEquiv.bijective

end Iso

end System

namespace Refinement

variable {Spec Impl : System}

end Refinement

namespace RepresentationRefinement

variable {Spec Impl : System}

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
