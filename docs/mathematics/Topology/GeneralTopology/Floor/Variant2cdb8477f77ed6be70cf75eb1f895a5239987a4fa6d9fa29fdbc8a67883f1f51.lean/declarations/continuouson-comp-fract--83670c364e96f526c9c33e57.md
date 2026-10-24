# ContinuousOn.comp_fract'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "076e1b6cafd2f9442545f1805542ab6a5afec0f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:021f2b49-62e7-93f3-2f35-e7af1f02b65b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:676f65ab-cf20-a65a-dd8c-64d88a4e27d6",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.comp_fract'",
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
  "slug": "continuouson-comp-fract--83670c364e96f526c9c33e57",
  "source": {
    "blob": "076e1b6cafd2f9442545f1805542ab6a5afec0f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83670c364e96f526c9c33e57f622953638cb81b19193ea9ed372ab04f9d6a487",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:676f65ab-cf20-a65a-dd8c-64d88a4e27d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.comp_fract' {f : β → α → γ} (h : ContinuousOn (uncurry f) <| univ ×ˢ I)
    (hf : ∀ s, f s 0 = f s 1) : Continuous fun st : β × α => f st.1 (fract st.2) := by
  change Continuous (uncurry f ∘ Prod.map id fract)
  rw [continuous_iff_continuousAt]
  rintro ⟨s, t⟩
  rcases em (∃ n : ℤ, t = n) with (⟨n, rfl⟩ | ht)
  · rw [ContinuousAt, nhds_prod_eq, ← nhdsLT_sup_nhdsGE (n : α), prod_sup, tendsto_sup]
    constructor
    · refine (((h (s, 1) ⟨trivial, zero_le_one, le_rfl⟩).tendsto.mono_left ?_).comp
        (tendsto_id.prodMap (tendsto_fract_left _))).mono_right (le_of_eq ?_)
      · rw [nhdsWithin_prod_eq, nhdsWithin_univ, ← nhdsWithin_Ico_eq_nhdsLT one_pos]
        exact Filter.prod_mono le_rfl (nhdsWithin_mono _ Ico_subset_Icc_self)
      · simp [hf]
    · refine (((h (s, 0) ⟨trivial, le_rfl, zero_le_one⟩).tendsto.mono_left <| le_of_eq ?_).comp
        (tendsto_id.prodMap (tendsto_fract_right _))).mono_right (le_of_eq ?_) <;>
        simp [nhdsWithin_prod_eq, nhdsWithin_univ]
  · replace ht : t ≠ ⌊t⌋ := fun ht' => ht ⟨_, ht'⟩
    refine (h.continuousAt ?_).comp (continuousAt_id.prodMap (continuousAt_fract ht))
    exact prod_mem_nhds univ_mem (Icc_mem_nhds (fract_pos.2 ht) (fract_lt_one _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `076e1b6cafd2f9442545f1805542ab6a5afec0f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
