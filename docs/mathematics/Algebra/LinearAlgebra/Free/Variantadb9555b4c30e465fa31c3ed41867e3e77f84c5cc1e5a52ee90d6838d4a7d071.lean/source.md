# Complete source: GRWTSK.Algebra.LinearAlgebra.Free.Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c872febad2b0da8cf46671fd40ddd361a895c76` · SHA-256 `2ad15fc5945be20fe96859144983be830ac31897a8115c3b8963ce1af6b6c09c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SolutionFinsupp.Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SolutionFinsupp.Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Module/Presentation/Free.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Module.Presentation.Basic
public import Mathlib.Basic.UnivLE
public import Mathlib.LinearAlgebra.Finsupp.VectorSpace
public import Mathlib.LinearAlgebra.FreeModule.Basic

/-!
# Presentation of free modules

A module is free iff it admits a presentation with generators but no relation,
see `Module.free_iff_exists_presentation`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.SolutionFinsupp.Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb

@[expose] public section

assert_not_exists Cardinal

universe w w₀ w₁ v u

namespace Module

variable {A : Type u} [Ring A] (relations : Relations.{w₀, w₁} A)
  (M : Type v) [AddCommGroup M] [Module A M]

namespace Relations

variable [IsEmpty relations.R]

/-- If `relations : Relations A` involved no relation, then it has an obvious
solution in the module `relations.G →₀ A`. -/
@[simps]
noncomputable def solutionFinsupp : relations.Solution (relations.G →₀ A) where
  var g := Finsupp.single g 1
  linearCombination_var_relation r := by exfalso; exact IsEmpty.false r

/-- If `relations : Relations A` involves no relations (`[IsEmpty relations.R]`),
then the free module `relations.G →₀ A` satisfies the universal property of the
corresponding module defined by generators (and relations). -/
noncomputable def solutionFinsupp.isPresentationCore :
    Solution.IsPresentationCore.{w} relations.solutionFinsupp where
  desc s := Finsupp.linearCombination _ s.var
  postcomp_desc := by aesop
  postcomp_injective h := by ext; apply Solution.congr_var h

lemma solutionFinsupp_isPresentation :
    relations.solutionFinsupp.IsPresentation :=
  (solutionFinsupp.isPresentationCore relations).isPresentation

variable {relations}

lemma Solution.IsPresentation.free {solution : relations.Solution M}
    (h : solution.IsPresentation) :
    Module.Free A M :=
  Free.of_equiv ((solutionFinsupp_isPresentation relations).uniq h)

end Relations

variable (A)

/-- The presentation of the `A`-module `G →₀ A` with generators indexed by `G`,
and no relation. (Note that there is an auxiliary universe parameter `w₁` for the
empty type `R`.) -/
@[simps! G R var]
noncomputable def presentationFinsupp (G : Type w₀) :
    Presentation.{w₀, w₁} A (G →₀ A) where
  G := G
  R := PEmpty.{w₁ + 1}
  relation := by rintro ⟨⟩
  toSolution := Relations.solutionFinsupp _
  toIsPresentation := by exact Relations.solutionFinsupp_isPresentation _

set_option backward.defeqAttrib.useBackward true in
lemma free_iff_exists_presentation :
    Free A M ↔ ∃ (p : Presentation.{v, w₁} A M), IsEmpty p.R := by
  constructor
  · rw [free_def.{_, _, v}]
    rintro ⟨G, ⟨⟨e⟩⟩⟩
    exact ⟨(presentationFinsupp A G).ofLinearEquiv e.symm, by dsimp; infer_instance⟩
  · rintro ⟨p, h⟩
    exact p.toIsPresentation.free

end Module
```
