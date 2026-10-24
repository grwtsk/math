# innerContent_pos_of_is_mul_left_invariant

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
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:695a6f08-1d5b-83b9-d6ec-c23bd256f74f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94324c0b-66bb-f22b-0e94-e87e73b00cd5",
  "kind": "theorem",
  "lexical_name": "innerContent_pos_of_is_mul_left_invariant",
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
  "slug": "innercontent-pos-of-is-mul-left-invariant--4274156347ff5316db6742e0",
  "source": {
    "blob": "d541fbc6900566162eae4801fceb6aea2c874a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4274156347ff5316db6742e0b507485cefce82fbfd92f4aed2ea5d3a5629171d",
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

Occurrence: `result:94324c0b-66bb-f22b-0e94-e87e73b00cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerContent_pos_of_is_mul_left_invariant [T2Space G] [Group G] [TopologicalGroup G]
    (h3 : ∀ (g : G) {K : Compacts G}, μ (K.map _ <| continuous_mul_left g) = μ K) (K : Compacts G)
    (hK : μ K ≠ 0) (U : Opens G) (hU : (U : Set G).Nonempty) : 0 < μ.innerContent U := by
  have : (interior (U : Set G)).Nonempty
  rwa [U.isOpen.interior_eq]
  rcases compact_covered_by_mul_left_translates K.2 this with ⟨s, hs⟩
  suffices μ K ≤ s.card * μ.innerContent U by
    exact (ENNReal.mul_pos_iff.mp <| hK.bot_lt.trans_le this).2
  have : (K : Set G) ⊆ ↑(⨆ g ∈ s, Opens.comap (Homeomorph.mulLeft g).toContinuousMap U) := by
    simpa only [Opens.iSup_def, Opens.coe_comap, Subtype.coe_mk]
  refine' (μ.le_innerContent _ _ this).trans _
  refine'
    (rel_iSup_sum μ.innerContent μ.innerContent_bot (· ≤ ·) μ.innerContent_iSup_nat _ _).trans _
  simp only [μ.is_mul_left_invariant_innerContent h3, Finset.sum_const, nsmul_eq_mul, le_refl]
#align measure_theory.content.inner_content_pos_of_is_mul_left_invariant MeasureTheory.Content.innerContent_pos_of_is_mul_left_invariant
#align measure_theory.content.inner_content_pos_of_is_add_left_invariant MeasureTheory.Content.innerContent_pos_of_is_add_left_invariant

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d541fbc6900566162eae4801fceb6aea2c874a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
