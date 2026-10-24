# innerContent_pos_of_is_mul_left_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b68481e-357c-5f55-342b-12e16bc00c4b",
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
  "slug": "innercontent-pos-of-is-mul-left-invariant--f973ce2f8e4cfe73639c8a59",
  "source": {
    "blob": "4a2539b7b86548703cbfbeaf15060a2de2c04683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 231,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f973ce2f8e4cfe73639c8a59dac7b038f53d8d6e2cfbd8e0c38cdc5be99042c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b68481e-357c-5f55-342b-12e16bc00c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–247.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a2539b7b86548703cbfbeaf15060a2de2c04683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
