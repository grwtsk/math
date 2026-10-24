# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.SelectedPermutationClassifications.Variante7dadde62f2f861d.OriginalPreimageConsequences

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dda9d91ecda9fd9c59cc68852aa562172d29bb9` · SHA-256 `9dacfa36d169f655318e55ea2d7c21663d30c42ff354eb049c701c5c151026f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Original-provider conditional selected-preimage existence and uniqueness
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b
Organized SHA-256: 24879fcc397b2185de73005e408cf44681d9f3f60118ec8dad013e56505946f8
PMD: 510.1.030.010.050 group actions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Both exact original-provider preimage existence and uniqueness wrappers under all original parameters and premises. The full old representation, selected family and classification proof package remain unchanged; no review239 provider is substituted. No Γ group axioms, particular arithmetic representation or classification witness is constructed. -/

import Folder.Research.RepresentationFaithfulness

/-!
# Folder.Theorem.Research.RepresentationFaithfulness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.representation_faithfulness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.SelectedPermutationClassifications.Variante7dadde62f2f861d

open Folder

theorem every_selected_twist_has_preimage
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    (hφ : φ ∈ T.Twist) :
    ∃ g, R.ρ g = φ :=
  Folder.Research.RepresentationFaithfulness.every_selected_twist_has_preimage
    C hφ

theorem selected_twist_preimage_unique_of_faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    {g h : Γ}
    (hg : R.ρ g = φ)
    (hh : R.ρ h = φ) :
    g = h :=
  Folder.Research.RepresentationFaithfulness.selected_twist_preimage_unique_of_faithful
    C hg hh

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.SelectedPermutationClassifications.Variante7dadde62f2f861d
```
