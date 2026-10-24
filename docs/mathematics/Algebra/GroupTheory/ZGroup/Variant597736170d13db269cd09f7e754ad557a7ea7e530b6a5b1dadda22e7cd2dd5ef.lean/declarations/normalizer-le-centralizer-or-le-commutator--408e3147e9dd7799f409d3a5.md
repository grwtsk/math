# normalizer_le_centralizer_or_le_commutator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b4f92c099e07a62923cab608512dad29a855750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2d01058-cc39-aae9-63ce-ef56583b0ac2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb7e47cf-4829-372a-b270-6cd9d3240564",
  "kind": "theorem",
  "lexical_name": "normalizer_le_centralizer_or_le_commutator",
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
  "slug": "normalizer-le-centralizer-or-le-commutator--408e3147e9dd7799f409d3a5",
  "source": {
    "blob": "2b4f92c099e07a62923cab608512dad29a855750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 251,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:408e3147e9dd7799f409d3a5b0b810f6a4def7fe88b7caffcbed23f6dbd9ac3a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb7e47cf-4829-372a-b270-6cd9d3240564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizer_le_centralizer_or_le_commutator :
    Subgroup.normalizer P ≤ Subgroup.centralizer (P : Set G) ∨ P ≤ commutator G := by
  let Q : Sylow p (Subgroup.normalizer P) := P.subtype P.le_normalizer
  have : Q.Normal := P.normal_in_normalizer
  have : IsCyclic Q :=
    isCyclic_of_surjective _ (Subgroup.subgroupOfEquivOfLe P.le_normalizer).symm.surjective
  refine (le_center_or_le_commutator Q).imp (fun h ↦ ?_) (fun h ↦ ?_)
  · rw [← SetLike.coe_subset_coe, ← Subgroup.centralizer_eq_top_iff_subset, eq_top_iff,
      ← Subgroup.map_subtype_le_map_subtype, Subgroup.map_top,
      (Subgroup.normalizer (P : Set G)).range_subtype] at h
    replace h := h.trans (Subgroup.map_centralizer_le_centralizer_image _ _)
    rwa [← Subgroup.coe_map, P.coe_subtype, ← P.coe_coe,
      Subgroup.map_subgroupOf_eq_of_le P.le_normalizer] at h
  · rw [P.coe_subtype, ← Subgroup.map_subtype_le_map_subtype, ← P.coe_coe,
      Subgroup.map_subgroupOf_eq_of_le P.le_normalizer, Subgroup.map_subtype_commutator] at h
    exact h.trans (Subgroup.commutator_mono le_top le_top)

open scoped IsMulCommutative in
include P in
/-- If `G` has a cyclic Sylow `p`-subgroup, then the cardinality and index of the commutator
  subgroup of `G` cannot both be divisible by `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4f92c099e07a62923cab608512dad29a855750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
