# subgroup_eq_top_of_isPreprimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2955185c-4925-3eaf-631a-07007e6a886c",
  "kind": "theorem",
  "lexical_name": "subgroup_eq_top_of_isPreprimitive",
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
  "slug": "subgroup-eq-top-of-ispreprimitive--768704ca33558cc81f0badd4",
  "source": {
    "blob": "682c52f8dab2283509e47bff294eae9c068f4f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 181,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:768704ca33558cc81f0badd464bf9128038b1a6391b681af80af9d5a8f3cfb4e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2955185c-4925-3eaf-631a-07007e6a886c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subgroup_eq_top_of_isPreprimitive (h4 : 4 < Nat.card α)
    (G : Subgroup (alternatingGroup α)) [hG' : IsPreprimitive G α] {s : Set α}
    (hG : stabilizer (alternatingGroup α) s ≤ G) :
    G = ⊤ := by
  obtain ⟨g, hg, hg3⟩ := exists_mem_stabilizer_isThreeCycle s h4
  rw [eq_top_iff, ← Subgroup.map_subtype_le_map_subtype, Subgroup.map_top, Subgroup.range_subtype]
  -- By Jordan's theorem, it suffices to prove that G acts primitively
  apply alternatingGroup_le_of_isPreprimitive_of_isThreeCycle_mem _ hg3
  · use ⟨g, hg3.mem_alternatingGroup⟩
    simpa only [SetLike.mem_coe, Subgroup.subtype_apply, and_true] using hG hg
  · let φ := (alternatingGroup α).subtype.subgroupMap G
    let f : α →ₑ[φ] α := {
      toFun := id
      map_smul' _ _ := rfl }
    rwa [← isPreprimitive_congr (f := f) ((alternatingGroup α).subtype.subgroupMap_surjective G)
      Function.bijective_id]

end alternatingGroup

namespace MulAction.IsBlock

open alternatingGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682c52f8dab2283509e47bff294eae9c068f4f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
