/-
Exact point-order and faithful-action period proof
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b
Organized SHA-256: 03a4a0619b358fad07698d233644f4e0c3257025e1f4068bab3f4e297994ad3b
PMD: 510.1.030.010.050 group actions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete proof uses both assumed HasOrder and ActionFaithful, point-order positivity/minimality, action-zero equation and act_nsmulPoint_apply. Same-variant predicates imported exactly; no extra action axiom or elliptic group-law construction. -/

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.ExactPeriod.Variant8e32ea61cc4bb98b.PeriodAndFaithfulness

import Folder.Monodromy.TorsionPeriodicity

/-!
# Folder.Research.ExactPeriod

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.exact_period
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


open Folder

namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.ExactPeriod.Variant8e32ea61cc4bb98b

theorem exact_period_of_hasOrder_and_faithful
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hOrder : Arithmetic.HasOrder G P n)
    (hFaithful : ActionFaithful A) :
    HasExactPeriod A P n := by
  refine
    ⟨hOrder.1,
      Monodromy.TorsionAction.period_dividing_of_hasOrder A P hOrder,
      ?_⟩
  intro m hmpos hmlt hmperiod
  have hact :
      A.act (Arithmetic.nsmulPoint G m P) =
        A.act (Arithmetic.ECPoint.infinity (E := E)) := by
    rw [A.act_zero]
    ext x
    exact
      (Monodromy.TorsionAction.act_nsmulPoint_apply A P m x).trans
        (hmperiod x)
  exact hOrder.2.2 m hmpos hmlt (hFaithful _ _ hact)

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.ExactPeriod.Variant8e32ea61cc4bb98b
