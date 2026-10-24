# count_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6138401-9d69-ea69-c09e-c29c300bd431",
  "kind": "theorem",
  "lexical_name": "count_join",
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
  "slug": "count-join--6b9b96e9d9f32eaf2b12223a",
  "source": {
    "blob": "223619b775a51beb9860b7336f688999f89f31d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b9b96e9d9f32eaf2b12223a44eb57bef21f3af3027a8629d0bdf03f3b9b41fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6138401-9d69-ea69-c09e-c29c300bd431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_join (l : List (List α)) (a : α) : l.join.count a = (l.map (count a)).sum :=
  countP_join _ _
#align list.count_join List.count_join

#align list.count_concat List.count_concat

#align list.count_pos List.count_pos_iff_mem

#align list.one_le_count_iff_mem List.count_pos_iff_mem

#align list.count_eq_zero_of_not_mem List.count_eq_zero_of_not_mem

#align list.not_mem_of_count_eq_zero List.not_mem_of_count_eq_zero

#align list.count_eq_zero List.count_eq_zero

#align list.count_eq_length List.count_eq_length

#align list.count_replicate_self List.count_replicate_self

#align list.count_replicate List.count_replicate

#align list.filter_eq' List.filter_eq'

#align list.filter_eq List.filter_eq

#align list.le_count_iff_replicate_sublist List.le_count_iff_replicate_sublist

#align list.replicate_count_eq_of_count_eq_length List.replicate_count_eq_of_count_eq_length

#align list.count_filter List.count_filter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `223619b775a51beb9860b7336f688999f89f31d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
