# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.ExactPeriodForwarding.Variant1282afb0a3c6a297.OrderToExactPeriodForwarding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9ea63754ab470cea6149fc5c7c69ed57c84f369` · SHA-256 `af94d69c106419560531d876d1c5f7a7f95a40c293f0d29266215a9382c14b8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact historical order-to-period theorem forwarding
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1282afb0a3c6a2976c05c1d0e18e799bf57601980eba55a1a63907e768b4e2fc
Organized SHA-256: b65c04e4e5a59d98eead480b253ae5eb77b06dc5797c5e6488cce551fac9c18c
PMD: 510.1.030.010.050 group actions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full K/Field/E/G/alpha/A/P/n/hOrder/hFaithful signature and old qualified Folder.Research.ExactPeriod predicates/proof remain exact. New229 types are not substituted. -/

import Folder.Research.ExactPeriod

/-!
# Folder.Theorem.Research.ExactPeriod

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.exact_period
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


open Folder

namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.ExactPeriodForwarding.Variant1282afb0a3c6a297

theorem exact_period_of_hasOrder_and_faithful
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hOrder : Arithmetic.HasOrder G P n)
    (hFaithful : Folder.Research.ExactPeriod.ActionFaithful A) :
    Folder.Research.ExactPeriod.HasExactPeriod A P n :=
  Folder.Research.ExactPeriod.exact_period_of_hasOrder_and_faithful
    A P hOrder hFaithful

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.ExactPeriodForwarding.Variant1282afb0a3c6a297
```
