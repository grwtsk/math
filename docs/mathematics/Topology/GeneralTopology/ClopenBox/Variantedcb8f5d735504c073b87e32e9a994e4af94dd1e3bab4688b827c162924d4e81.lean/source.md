# Complete source: GRWTSK.Topology.GeneralTopology.ClopenBox.Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2a02c12e7822e4601a01a268953d93d6a3a289c` · SHA-256 `55a346912564fc6816bbcafa0237c16c4051917b7bab7cb6cf64aee3c9f74771`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExistsProdSubset.Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExistsProdSubset.Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666","mathematical_subject":"Topology.GeneralTopology","original_sha256":"65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/ClopenBox.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Topology.Compactness.Bases
public import Mathlib.Topology.CompactOpen
public import Mathlib.Topology.Separation.Profinite
public import Mathlib.Topology.Sets.Closeds

/-!
# Clopen subsets in Cartesian products

In general, a clopen subset in a Cartesian product of topological spaces
cannot be written as a union of "clopen boxes",
i.e. products of clopen subsets of the components (see [buzyakovaClopenBox] for counterexamples).

However, when one of the factors is compact, a clopen subset can be written as such a union.
Our argument in `TopologicalSpace.Clopens.exists_prod_subset`
follows the one given in [buzyakovaClopenBox].

We deduce that in a product of compact spaces, a clopen subset is a finite union of clopen boxes,
and use that to prove that the property of having countably many clopens is preserved by taking
Cartesian products of compact spaces (this is relevant to the theory of light profinite sets).

## References

- [buzyakovaClopenBox]: *On clopen sets in Cartesian products*, 2001.
- [engelking1989]: *General Topology*, 1989.

-/


namespace GRWTSK.Topology.GeneralTopology.ExistsProdSubset.Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666

public section

open Function Set TopologicalSpace
open scoped Topology

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [CompactSpace Y]

namespace TopologicalSpace.Clopens

theorem exists_prod_subset (W : Clopens (X × Y)) {a : X × Y} (h : a ∈ W) :
    ∃ U : Clopens X, a.1 ∈ U ∧ ∃ V : Clopens Y, a.2 ∈ V ∧ U ×ˢ V ≤ W := by
  have hp : Continuous (fun y : Y ↦ (a.1, y)) := .prodMk_right _
  let V : Set Y := {y | (a.1, y) ∈ W}
  have hV : IsCompact V := (W.2.1.preimage hp).isCompact
  let U : Set X := {x | MapsTo (Prod.mk x) V W}
  have hUV : U ×ˢ V ⊆ W := fun ⟨_, _⟩ hw ↦ hw.1 hw.2
  exact ⟨⟨U, (ContinuousMap.isClopen_setOfPred_mapsTo hV W.2).preimage
    (ContinuousMap.id (X × Y)).curry.2⟩, by simp [U, V, MapsTo], ⟨V, W.2.preimage hp⟩, h, hUV⟩

variable [CompactSpace X]

/-- Every clopen set in a product of two compact spaces
is a union of finitely many clopen boxes. -/
theorem exists_finset_eq_sup_prod (W : Clopens (X × Y)) :
    ∃ (I : Finset (Clopens X × Clopens Y)), W = I.sup fun i ↦ i.1 ×ˢ i.2 := by
  choose! U hxU V hxV hUV using fun x ↦ W.exists_prod_subset (a := x)
  rcases W.2.1.isCompact.elim_nhds_subcover (fun x ↦ U x ×ˢ V x) (fun x hx ↦
    (U x ×ˢ V x).2.isOpen.mem_nhds ⟨hxU x hx, hxV x hx⟩) with ⟨I, hIW, hWI⟩
  classical
  use I.image fun x ↦ (U x, V x)
  rw [Finset.sup_image]
  refine le_antisymm (fun x hx ↦ ?_) (Finset.sup_le fun x hx ↦ ?_)
  · rcases Set.mem_iUnion₂.1 (hWI hx) with ⟨i, hi, hxi⟩
    exact SetLike.le_def.1 (Finset.le_sup hi) hxi
  · exact hUV _ <| hIW _ hx

lemma surjective_finset_sup_prod :
    Surjective fun I : Finset (Clopens X × Clopens Y) ↦ I.sup fun i ↦ i.1 ×ˢ i.2 := fun W ↦
  let ⟨I, hI⟩ := W.exists_finset_eq_sup_prod; ⟨I, hI.symm⟩

instance countable_prod [Countable (Clopens X)]
    [Countable (Clopens Y)] : Countable (Clopens (X × Y)) :=
  surjective_finset_sup_prod.countable

instance finite_prod [Finite (Clopens X)] [Finite (Clopens Y)] :
    Finite (Clopens (X × Y)) := by
  cases nonempty_fintype (Clopens X)
  cases nonempty_fintype (Clopens Y)
  exact .of_surjective _ surjective_finset_sup_prod

lemma countable_iff_secondCountable [T2Space X]
    [TotallyDisconnectedSpace X] : Countable (Clopens X) ↔ SecondCountableTopology X := by
  refine ⟨fun h ↦ ⟨{s : Set X | IsClopen s}, ?_, ?_⟩, fun h ↦ ?_⟩
  · let f : {s : Set X | IsClopen s} → Clopens X := fun s ↦ ⟨s.1, s.2⟩
    exact Injective.of_eq_imp_le (f := f) (·.le) |>.countable
  · apply IsTopologicalBasis.eq_generateFrom
    exact loc_compact_Haus_tot_disc_of_zero_dim
  · have : ∀ (s : Clopens X), ∃ (t : Finset (countableBasis X)), s.1 = (SetLike.coe t).sUnion :=
      fun s ↦ eq_sUnion_finset_of_isTopologicalBasis_of_isCompact_open _
        (isBasis_countableBasis X) s.1 s.2.1.isCompact s.2.2
    let f : Clopens X → Finset (countableBasis X) := fun s ↦ (this s).choose
    have hf : f.Injective := by
      intro s t (h : Exists.choose _ = Exists.choose _)
      ext1; change s.carrier = t.carrier
      rw [(this s).choose_spec, (this t).choose_spec, h]
    exact hf.countable

end TopologicalSpace.Clopens
```
