# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a363d962635205f3cb7d483501c1d28a0922798f56e6ff22c3353fb54e74af9",
  "kind": "instance",
  "lexical_name": null,
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "instance--886e96f5948cf9f7dbe29ea3",
  "source": {
    "blob": "0a5c4db4ebe25b6b05bce151f0342be15bc9679e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:886e96f5948cf9f7dbe29ea36630163ca997104b247d3a37d6363c00a3b075cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a363d962635205f3cb7d483501c1d28a0922798f56e6ff22c3353fb54e74af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) ConditionallyCompleteLinearOrder.toCompactIccSpace (α : Type*)
    [ConditionallyCompleteLinearOrder α] [TopologicalSpace α] [OrderTopology α] :
    CompactIccSpace α := by
  refine .mk'' fun {a b} hlt => ?_
  rcases le_or_lt a b with hab | hab
  swap
  · simp [hab]
  refine isCompact_iff_ultrafilter_le_nhds.2 fun f hf => ?_
  contrapose! hf
  rw [le_principal_iff]
  have hpt : ∀ x ∈ Icc a b, {x} ∉ f := fun x hx hxf =>
    hf x hx ((le_pure_iff.2 hxf).trans (pure_le_nhds x))
  set s := { x ∈ Icc a b | Icc a x ∉ f }
  have hsb : b ∈ upperBounds s := fun x hx => hx.1.2
  have sbd : BddAbove s := ⟨b, hsb⟩
  have ha : a ∈ s := by simp [s, hpt, hab]
  rcases hab.eq_or_lt with (rfl | _hlt)
  · exact ha.2
  -- Porting note: the `obtain` below was instead
  -- `set c := Sup s`
  -- `have hsc : IsLUB s c := isLUB_csSup ⟨a, ha⟩ sbd`
  obtain ⟨c, hsc⟩ : ∃ c, IsLUB s c := ⟨sSup s, isLUB_csSup ⟨a, ha⟩ ⟨b, hsb⟩⟩
  have hc : c ∈ Icc a b := ⟨hsc.1 ha, hsc.2 hsb⟩
  specialize hf c hc
  have hcs : c ∈ s := by
    rcases hc.1.eq_or_lt with (rfl | hlt); · assumption
    refine ⟨hc, fun hcf => hf fun U hU => ?_⟩
    rcases (mem_nhdsLE_iff_exists_Ioc_subset' hlt).1 (mem_nhdsWithin_of_mem_nhds hU)
      with ⟨x, hxc, hxU⟩
    rcases ((hsc.frequently_mem ⟨a, ha⟩).and_eventually (Ioc_mem_nhdsLE hxc)).exists
      with ⟨y, ⟨_hyab, hyf⟩, hy⟩
    refine mem_of_superset (f.diff_mem_iff.2 ⟨hcf, hyf⟩) (Subset.trans ?_ hxU)
    rw [diff_subset_iff]
    exact Subset.trans Icc_subset_Icc_union_Ioc <| union_subset_union Subset.rfl <|
      Ioc_subset_Ioc_left hy.1.le
  rcases hc.2.eq_or_lt with (rfl | hlt)
  · exact hcs.2
  exfalso
  refine hf fun U hU => ?_
  rcases (mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset hlt).1 (mem_nhdsWithin_of_mem_nhds hU)
    with ⟨y, hxy, hyU⟩
  refine mem_of_superset ?_ hyU; clear! U
  have hy : y ∈ Icc a b := ⟨hc.1.trans hxy.1.le, hxy.2⟩
  by_cases hay : Icc a y ∈ f
  · refine mem_of_superset (f.diff_mem_iff.2 ⟨f.diff_mem_iff.2 ⟨hay, hcs.2⟩, hpt y hy⟩) ?_
    rw [diff_subset_iff, union_comm, Ico_union_right hxy.1.le, diff_subset_iff]
    exact Icc_subset_Icc_union_Icc
  · exact ((hsc.1 ⟨hy, hay⟩).not_lt hxy.1).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5c4db4ebe25b6b05bce151f0342be15bc9679e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
