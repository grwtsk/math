# borel_le_caratheodory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d541fbc6900566162eae4801fceb6aea2c874a8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:450163c6-44db-0797-9982-d1a4be576dd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1121ce01-40f9-a0a9-8f7c-45f5ac9399fa",
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
  "slug": "borel-le-caratheodory--0bee20768c215765ffc8940d",
  "source": {
    "blob": "d541fbc6900566162eae4801fceb6aea2c874a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 347,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bee20768c215765ffc8940daf8ecb7d17c5ccf313e774b1c65e84dd70a768fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1121ce01-40f9-a0a9-8f7c-45f5ac9399fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borel_le_caratheodory : S ≤ μ.outerMeasure.caratheodory := by
  rw [@BorelSpace.measurable_eq G _ _]
  refine' MeasurableSpace.generateFrom_le _
  intro U hU
  rw [μ.outerMeasure_caratheodory]
  intro U'
  rw [μ.outerMeasure_of_isOpen ((U' : Set G) ∩ U) (U'.isOpen.inter hU)]
  simp only [innerContent, iSup_subtype']
  rw [Opens.coe_mk]
  haveI : Nonempty { L : Compacts G // (L : Set G) ⊆ U' ∩ U } := ⟨⟨⊥, empty_subset _⟩⟩
  rw [ENNReal.iSup_add]
  refine' iSup_le _
  rintro ⟨L, hL⟩
  simp only [subset_inter_iff] at hL
  have : ↑U' \ U ⊆ U' \ L := diff_subset_diff_right hL.2
  refine' le_trans (add_le_add_left (μ.outerMeasure.mono' this) _) _
  rw [μ.outerMeasure_of_isOpen (↑U' \ L) (IsOpen.sdiff U'.2 L.2.isClosed)]
  simp only [innerContent, iSup_subtype']
  rw [Opens.coe_mk]
  haveI : Nonempty { M : Compacts G // (M : Set G) ⊆ ↑U' \ L } := ⟨⟨⊥, empty_subset _⟩⟩
  rw [ENNReal.add_iSup]
  refine' iSup_le _
  rintro ⟨M, hM⟩
  simp only [subset_diff] at hM
  have : (↑(L ⊔ M) : Set G) ⊆ U' := by
    simp only [union_subset_iff, Compacts.coe_sup, hM, hL, and_self_iff]
  rw [μ.outerMeasure_of_isOpen (↑U') U'.2]
  refine' le_trans (ge_of_eq _) (μ.le_innerContent _ _ this)
  exact μ.sup_disjoint _ _ hM.2.symm
#align measure_theory.content.borel_le_caratheodory MeasureTheory.Content.borel_le_caratheodory

/-- The measure induced by the outer measure coming from a content, on the Borel sigma-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d541fbc6900566162eae4801fceb6aea2c874a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
