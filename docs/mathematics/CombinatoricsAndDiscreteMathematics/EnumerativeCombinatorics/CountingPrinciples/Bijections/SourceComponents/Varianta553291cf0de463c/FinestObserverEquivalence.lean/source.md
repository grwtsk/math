# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.SourceComponents.Varianta553291cf0de463c.FinestObserverEquivalence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cfc0c38c19da8c4878fc6662d81787e1956629a` · SHA-256 `1997190804444f326a7953f1e372df22ff47b949d5d4b432ac05b5e13a134e8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FinestObserverEquivalence — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779
Organized SHA-256: ae0be3f44005013d9b35894cc4465ac5bf5d971abc7c17c3edbb9788513c6606
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact global/top-local quotient equivalence, retaining Preorder and OrderTop hypotheses. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.ObserverFactor
import Mathlib.Order.BoundedOrder.Basic
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Varianta553291cf0de463c.QuantizerQuotientProjection

/-!
# Coherent towers of observer resolutions

A `QuantizerTower` specifies how a fine observation is projected to every
coarser resolution.  The order convention is `coarse ≤ fine`, so maps travel
from fine observations to coarse observations.  Coherence and compatibility
with the global observation induce canonical surjections between the
corresponding observer-local causal quotients.

When the resolution order has a top element, equality of top-resolution
future traces implies equality at every resolution.  Consequently the global
causal state is equivalent to the top local causal state.  Without a finest
resolution this module makes no claim that one local state represents the
whole observer family.  Causal minimality remains relative to the selected
observers, and none of these projections imply equality of concrete states,
reversibility, phase information, cycle data, homological transport, or
avalanche behavior.
-/

open ObservableRecursion
open ObserverFactor

universe uI uS uR uO

namespace QuantizerTower

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}
variable {M : System Input State Resolution}
variable [Preorder Resolution]

variable [OrderTop Resolution]

/-- The top local factor is injective because it projects to every observer. -/
theorem causalToFinestLocal_injective
    (T : QuantizerTower M) :
    Function.Injective (causalToLocal M (⊤ : Resolution)) := by
  intro c d
  refine Quotient.inductionOn₂ c d ?_
  intro x y hxy
  apply Quotient.sound
  have htop : LocalCausalEquivalent M (⊤ : Resolution) x y :=
    (toLocalCausal_eq_iff M (⊤ : Resolution) x y).mp hxy
  intro inputs ρ
  calc
    M.observe ρ (M.run inputs x) =
        T.project (show ρ ≤ (⊤ : Resolution) from le_top)
          (M.observe ⊤ (M.run inputs x)) :=
      (T.observe_project le_top _).symm
    _ = T.project (show ρ ≤ (⊤ : Resolution) from le_top)
          (M.observe ⊤ (M.run inputs y)) := by
      rw [htop inputs]
    _ = M.observe ρ (M.run inputs y) :=
      T.observe_project le_top _

/--
With a finest resolution, global causal states are exactly its local causal
states.  The equivalence is the canonical global-to-local factor.
-/
noncomputable def causalStateEquivFinestLocal
    (T : QuantizerTower M) :
    M.CausalState ≃ LocalCausalState M (⊤ : Resolution) :=
  Equiv.ofBijective (causalToLocal M (⊤ : Resolution))
    ⟨T.causalToFinestLocal_injective,
      causalToLocal_surjective M (⊤ : Resolution)⟩

@[simp]
theorem causalStateEquivFinestLocal_apply
    (T : QuantizerTower M)
    (c : M.CausalState) :
    T.causalStateEquivFinestLocal c =
      causalToLocal M (⊤ : Resolution) c :=
  rfl

end QuantizerTower
```
