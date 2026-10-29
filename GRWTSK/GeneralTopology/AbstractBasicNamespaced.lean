-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.BasicCell.Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.BasicCell.Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/CWComplex/Abstract/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Elliot Dean Young and Jiazhen Xia. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiazhen Xia, Elliot Dean Young, Joël Riou
-/
import Mathlib.Topology.Category.TopCat.Limits.Basic
import Mathlib.Topology.Category.TopCat.Sphere
import Mathlib.AlgebraicTopology.RelativeCellComplex.Basic

/-!
# CW-complexes

This file defines (relative) CW-complexes using a categorical approach.

## Main definitions

* `RelativeCWComplex`: A relative CW-complex is the colimit of an expanding sequence of subspaces
  `sk i` (called the $(i-1)$-skeleton) for `i ≥ 0`, where `sk 0` (i.e., the $(-1)$-skeleton) is an
  arbitrary topological space, and each `sk (n + 1)` (i.e., the $n$-skeleton) is obtained from
  `sk n` (i.e., the $(n-1)$-skeleton) by attaching `n`-disks.

* `CWComplex`: A CW-complex is a relative CW-complex whose `sk 0` (i.e., $(-1)$-skeleton) is empty.

## Implementation Notes

This file provides a categorical approach to CW complexes,
defining them via colimits and transfinite compositions.
For a classical approach that defines CW complexes via explicit cells and attaching maps,
see `Mathlib/Topology/CWComplex/Classical/Basic.lean`.
The two approaches are equivalent but serve different purposes:
* This approach is more suitable for categorical arguments and generalizations
* The classical approach is more convenient for concrete geometric arguments

## References

* [R. Fritsch and R. Piccinini, *Cellular Structures in Topology*][fritsch-piccinini1990]

## TODO

* Prove the equivalence between this categorical approach and the classical approach in
  `Mathlib/Topology/CWComplex/Classical/Basic.lean`.
  Currently there is no way to move between the two definitions.
-/


namespace GRWTSK.Topology.GeneralTopology.BasicCell.Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa

open TopCat


universe u

open CategoryTheory Limits HomotopicalAlgebra

namespace TopCat

namespace RelativeCWComplex

/-- For each `n : ℕ`, this is the family of morphisms which sends the unique
element of `Unit` to `diskBoundaryInclusion n : ∂𝔻 n ⟶ 𝔻 n`. -/
@[nolint unusedArguments]
abbrev basicCell (n : ℕ) (_ : Unit) : ∂𝔻 n ⟶ 𝔻 n := diskBoundaryInclusion n

end RelativeCWComplex

open RelativeCWComplex in
/-- A relative CW-complex is a morphism `f : X ⟶ Y` equipped with data expressing
that `Y` identifies to the colimit of a functor `F : ℕ ⥤ TopCat` with that
`F.obj 0 ≅ X` and for any `n : ℕ`, `F.obj (n + 1)` is obtained from `F.obj n`
by attaching `n`-disks. -/
abbrev RelativeCWComplex {X Y : TopCat.{u}} (f : X ⟶ Y) := RelativeCellComplex.{u} basicCell f

/-- A CW-complex is a topological space such that `⊥_ _ ⟶ X` is a relative CW-complex. -/
abbrev CWComplex (X : TopCat.{u}) := RelativeCWComplex (initial.to X)

end TopCat
