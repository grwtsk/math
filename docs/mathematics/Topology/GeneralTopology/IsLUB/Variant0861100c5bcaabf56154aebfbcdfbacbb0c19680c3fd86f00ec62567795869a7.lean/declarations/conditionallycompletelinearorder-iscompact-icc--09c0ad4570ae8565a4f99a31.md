# ConditionallyCompleteLinearOrder.isCompact_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a6461c5-bb12-102a-3595-db38034e12bf",
  "kind": "lemma",
  "lexical_name": "ConditionallyCompleteLinearOrder.isCompact_Icc",
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
  "slug": "conditionallycompletelinearorder-iscompact-icc--09c0ad4570ae8565a4f99a31",
  "source": {
    "blob": "fb02c1be7a0438ffdde87cc516acc06c3a5b73bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c0ad4570ae8565a4f99a3125b96182a0a16bed28b6e54b0146af108724eee4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a6461c5-bb12-102a-3595-db38034e12bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma ConditionallyCompleteLinearOrder.isCompact_Icc (a b : α) :
    IsCompact (Icc a b) := by
  simp only [isCompact_iff_ultrafilter_le_nhds, le_principal_iff]
  refine (le_or_gt a b).elim (fun _ f hfab ↦ ?_) (by simp [·])
  by_contra! hf
  have hpt : ∀ x ∈ Icc a b, {x} ∉ f := fun x hx _ ↦ hf x hx (le_trans (by simpa) (pure_le_nhds x))
  set s := { x ∈ Icc a b | Icc a x ∉ f }
  have hsb : b ∈ upperBounds s := fun x hx ↦ hx.1.2
  have ha : a ∈ s := by simp [s, *]
  let c := sSup s
  have hsc : IsLUB s c := isLUB_csSup ⟨a, ha⟩ ⟨b, hsb⟩
  have hc : c ∈ Icc a b := ⟨hsc.1 ha, hsc.2 hsb⟩
  have (i : _) (hic : i < c) : Ioi i ∈ f := by
    have ⟨j, hj, hij, hjc⟩ := hsc.exists_between hic
    filter_upwards [f.compl_mem_iff_notMem.mpr hj.2, hfab]; grind
  have ⟨x, hx, hxf⟩ : ∃ x, c < x ∧ Iio x ∉ f := by simpa [nhds_eq_order, eq_true this] using hf c hc
  have : Icc a c ∉ f := mt (mem_of_superset · (by grind)) hxf
  have : x ∈ Icc a b := ⟨by grind, le_of_not_gt fun h ↦ hxf (mem_of_superset hfab (by grind))⟩
  have : Icc a x ∈ f := by simpa [s, this.1, this.2] using notMem_of_csSup_lt hx ⟨b, hsb⟩
  exact hpt _ ‹_› (by filter_upwards [f.compl_mem_iff_notMem.mpr hxf, this]; grind)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb02c1be7a0438ffdde87cc516acc06c3a5b73bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
