# borel_le_caratheodory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "111df26a5302d8043902da8a667832fe9805f21c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a71fcd9-bb57-2dc4-0f20-7d6e610a41ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45b9173a-8aec-0a8f-7f42-6cfba74ac59b",
  "kind": "theorem",
  "lexical_name": "borel_le_caratheodory",
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
  "slug": "borel-le-caratheodory--e8faa579f6aded419f8654ae",
  "source": {
    "blob": "111df26a5302d8043902da8a667832fe9805f21c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 315,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8faa579f6aded419f8654ae1b6316ec0b3c9bd42ea391127e3c2c513aad8379",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45b9173a-8aec-0a8f-7f42-6cfba74ac59b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borel_le_caratheodory : S ≤ μ.outerMeasure.caratheodory := by
  rw [BorelSpace.measurable_eq (α := G)]
  refine MeasurableSpace.generateFrom_le ?_
  intro U hU
  rw [μ.outerMeasure_caratheodory]
  intro U'
  rw [μ.outerMeasure_of_isOpen ((U' : Set G) ∩ U) (U'.isOpen.inter hU)]
  simp only [innerContent, iSup_subtype']
  rw [Opens.coe_mk]
  have : Nonempty { L : Compacts G // (L : Set G) ⊆ U' ∩ U } := ⟨⟨⊥, empty_subset _⟩⟩
  rw [ENNReal.iSup_add]
  refine iSup_le ?_
  rintro ⟨L, hL⟩
  let L' : Compacts G := ⟨closure L, L.isCompact.closure⟩
  dsimp
  grw [show μ L ≤ μ L' from μ.mono _ _ subset_closure]
  simp only [subset_inter_iff] at hL
  have hL'U : (L' : Set G) ⊆ U := IsCompact.closure_subset_of_isOpen L.2 hU hL.2
  have hL'U' : (L' : Set G) ⊆ (U' : Set G) := IsCompact.closure_subset_of_isOpen L.2 U'.2 hL.1
  have : ↑U' \ U ⊆ U' \ L' := sdiff_subset_sdiff_right hL'U
  grw [this]
  rw [μ.outerMeasure_of_isOpen (↑U' \ L') (IsOpen.sdiff U'.2 isClosed_closure)]
  simp only [innerContent, iSup_subtype']
  rw [Opens.coe_mk]
  have : Nonempty { M : Compacts G // (M : Set G) ⊆ ↑U' \ closure L } := ⟨⟨⊥, empty_subset _⟩⟩
  rw [ENNReal.add_iSup]
  refine iSup_le ?_
  rintro ⟨M, hM⟩
  let M' : Compacts G := ⟨closure M, M.isCompact.closure⟩
  dsimp
  grw [show μ M ≤ μ M' from μ.mono _ _ subset_closure]
  have hM' : (M' : Set G) ⊆ U' \ L' :=
    IsCompact.closure_subset_of_isOpen M.2 (IsOpen.sdiff U'.2 isClosed_closure) hM
  have : (↑(L' ⊔ M') : Set G) ⊆ U' := by
    simp only [Compacts.coe_sup, union_subset_iff, hL'U', true_and]
    exact hM'.trans sdiff_subset
  rw [μ.outerMeasure_of_isOpen (↑U') U'.2]
  refine le_trans (ge_of_eq ?_) (μ.le_innerContent _ _ this)
  exact μ.sup_disjoint L' M' (subset_sdiff.1 hM').2.symm isClosed_closure isClosed_closure

/-- The measure induced by the outer measure coming from a content, on the Borel sigma-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `111df26a5302d8043902da8a667832fe9805f21c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
