-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ZigzagSetoid.Variant0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.ZigzagSetoid.Variant0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/Quiver/ConnectedComponent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 David Wärn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Wärn
-/
import Mathlib.Combinatorics.Quiver.Subquiver
import Mathlib.Combinatorics.Quiver.Path
import Mathlib.Combinatorics.Quiver.Symmetric

/-!
## Weakly connected components

For a quiver `V`, define the type `WeaklyConnectedComponent V` as the quotient of `V` by
the relation which identifies `a` with `b` if there is a path from `a` to `b` in `Symmetrify V`.
(These zigzags can be seen as a proof-relevant analogue of `EqvGen`.)

Strongly connected components have not yet been defined.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ZigzagSetoid.Variant0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60

universe v u

namespace Quiver

variable (V : Type*) [Quiver.{u+1} V]

/-- Two vertices are related in the zigzag setoid if there is a
    zigzag of arrows from one to the other. -/
def zigzagSetoid : Setoid V :=
  ⟨fun a b ↦ Nonempty (@Path (Symmetrify V) _ a b), fun _ ↦ ⟨Path.nil⟩, fun ⟨p⟩ ↦
    ⟨p.reverse⟩, fun ⟨p⟩ ⟨q⟩ ↦ ⟨p.comp q⟩⟩

/-- The type of weakly connected components of a directed graph. Two vertices are
    in the same weakly connected component if there is a zigzag of arrows from one
    to the other. -/
def WeaklyConnectedComponent : Type _ :=
  Quotient (zigzagSetoid V)

namespace WeaklyConnectedComponent

variable {V}

/-- The weakly connected component corresponding to a vertex. -/
protected def mk : V → WeaklyConnectedComponent V :=
  @Quotient.mk' _ (zigzagSetoid V)

instance : CoeTC V (WeaklyConnectedComponent V) :=
  ⟨WeaklyConnectedComponent.mk⟩

instance [Inhabited V] : Inhabited (WeaklyConnectedComponent V) :=
  ⟨show V from default⟩

protected theorem eq (a b : V) :
    (a : WeaklyConnectedComponent V) = b ↔ Nonempty (@Path (Symmetrify V) _ a b) :=
  Quotient.eq''

end WeaklyConnectedComponent

variable {V}

-- Without the explicit universe level in `Quiver.{v+1}` Lean comes up with
-- `Quiver.{max u_2 u_3 + 1}`. This causes problems elsewhere, so we write `Quiver.{v+1}`.
/-- A wide subquiver `H` of `Symmetrify V` determines a wide subquiver of `V`, containing an
    arrow `e` if either `e` or its reversal is in `H`. -/
def wideSubquiverSymmetrify (H : WideSubquiver (Symmetrify V)) : WideSubquiver V :=
  fun _ _ ↦ { e | H _ _ (Sum.inl e) ∨ H _ _ (Sum.inr e) }

end Quiver
