# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.AbstractScopeIndexedRulePresentations.Varianta885351781bedb02.LeafOnlyFiniteSetFunction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cac82559a4e66f3c81226283006c8c471f86555` · SHA-256 `54da8301c7361000655ff13133b5426723a91a4f46c075399509d050cea355c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact empty-premise leaf label function under the entire typed presentation
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0
Organized SHA-256: ff487f9693cb9d382f376cce0ad991f2b453d66633b8023f0586e76155883389
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.AbstractScopeIndexedRulePresentations.Varianta885351781bedb02.CompleteInterfaceAndJudgmentViews

import Mathlib.Data.Finset.Union
import Atomize.Formal.ScopedJudgment

/-!
# Abstract kernel presentation

**Architectural problem:** The structural recovery theorem should not depend on
one unstable encoding of Lean internals, but it still needs enough typed data to
prevent rules and scope changes from being assembled arbitrarily.

**Important data and indices:** A presentation selects universe contexts, local
contexts, expressions, constant names, root variables, leaf origins, and rule
keys.  `Rule premises conclusion` fixes the exact premise list and conclusion.
`CtxMorphism Γ Δ`, universe substitutions, and local substitutions record every
premise-to-conclusion scope transition exposed by the presentation.

**Type-enforced invariant:** `actJudgment` consumes `ScopedJudgment.At Γ` and
returns `ScopedJudgment.At Δ`; a morphism cannot act on a judgment packaged at
the wrong source.  The identity and composition fields require this action to
respect the presentation's morphism operations by propositional equality.

**Layer boundary:** This is an abstract rule vocabulary.  It does not export
Lean rules, replay definitional equality, or reconstruct a historical frontend
trace.  A later pinned adapter must instantiate the interface and justify that
its rule and context data faithfully represent the selected Lean version.

**Worked example:** The private `toyPresentation` fixture in `Examples.lean`
uses list-valued telescopes.  Its
action replaces the source telescope by the indexed target, and proves that
identity transport changes nothing and composed transport agrees with two
successive transports.

**Validation consequence:** The structural `Comp`/`Eval` theorem is conditional
on the supplied presentation.  These action laws prevent a future adapter from
using a context-indexed morphism while silently ignoring its source or target,
but they do not themselves certify a Lean adapter.
-/

open Atomize.Formal

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.AbstractScopeIndexedRulePresentations.Varianta885351781bedb02

universe u

namespace KernelPresentation

/--
**Architectural problem:** Leaf provenance must not be manufactured by an
internal node that still has proof premises.

**Type-enforced invariant:** `leafOrigin?` can be called only in the empty-list
branch, so non-leaf rules contribute the empty provenance set by construction.

**Boundary cases:** A genuine leaf may still have no provenance label (`none`);
this function then contributes the empty set.

**Important data and indices:** The rule's premise list determines whether the
function may inspect `leafOrigin?`.

**Layer boundary:** Provenance is presentation metadata, not a theorem or
trusted-boundary certificate.

**Worked example:** The toy internal-constant leaf contributes
`.internalConstant`, while unary nodes contribute nothing directly.

**Used by:** `RawDer.leafOrigins` and its compilation-preservation theorem.

**Proof idea:** Pattern matching on the indexed premise list exposes the empty
case required by `leafOrigin?`.

**Equality notion:** Results use exact `Finset` equality over leaf-origin names.

**Validation consequence:** The function preserves declared provenance but
does not prove that a concrete adapter classified every leaf correctly.
-/
def ruleLeafOrigins (K : KernelPresentation) :
    {premises : List K.Judgment} →
    {conclusion : K.Judgment} →
    K.Rule (premises := premises) conclusion → Finset K.LeafOrigin
  | [], _, rule =>
      letI := K.leafOriginDecidableEq
      match K.leafOrigin? rule with
      | none => ∅
      | some origin => {origin}
  | _ :: _, _, _ => ∅

end KernelPresentation

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.AbstractScopeIndexedRulePresentations.Varianta885351781bedb02
```
