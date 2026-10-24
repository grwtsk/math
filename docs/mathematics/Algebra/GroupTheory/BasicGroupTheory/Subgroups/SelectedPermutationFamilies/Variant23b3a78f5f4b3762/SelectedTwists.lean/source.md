# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Subgroups.SelectedPermutationFamilies.Variant23b3a78f5f4b3762.SelectedTwists

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80522106597c779f70bd0d0097b9c46976b26b69` · SHA-256 `4612e594861d7e378d2a6b0d3a6d8d1888c8e2aace0b5dc8804190bbfc6ef235`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Identity, composition and inversion closure of selected permutations
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939
Organized SHA-256: 1567850e564fec8db92c9fd4f5c968ae1cfe69d675a6a1e3ff5c6315ecf57de2
PMD: 510.1.030.010.010 subgroups (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- The exact selected Set of self-equivalences with identity membership and composition/inverse closure only. No new Group/Subgroup instance or Γ action law is constructed. The original closure fields and original imports/documentation remain exact. -/

import Folder.Monodromy.Representation
import Folder.Research.TorsionShellComparison

/-!
# Folder.Research.RepresentationFaithfulness

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.representation_faithfulness
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Subgroups.SelectedPermutationFamilies.Variant23b3a78f5f4b3762

open Folder

structure SelectedTwistGroup (α : Type _) where
  Twist : Set (α ≃ α)
  contains_id : Equiv.refl α ∈ Twist
  closed_comp :
    ∀ f g, f ∈ Twist → g ∈ Twist → f.trans g ∈ Twist
  closed_inv :
    ∀ f, f ∈ Twist → f.symm ∈ Twist

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Subgroups.SelectedPermutationFamilies.Variant23b3a78f5f4b3762
```
