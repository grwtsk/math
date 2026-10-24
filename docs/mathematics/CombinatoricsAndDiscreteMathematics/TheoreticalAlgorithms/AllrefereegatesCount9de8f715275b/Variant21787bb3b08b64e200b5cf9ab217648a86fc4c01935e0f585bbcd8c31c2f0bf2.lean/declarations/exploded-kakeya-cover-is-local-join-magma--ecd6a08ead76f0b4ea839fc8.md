# exploded_kakeya_cover_is_local_join_magma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9fe4715-012b-4af6-3559-b9cc58b5422d",
  "kind": "theorem",
  "lexical_name": "exploded_kakeya_cover_is_local_join_magma",
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
  "slug": "exploded-kakeya-cover-is-local-join-magma--ecd6a08ead76f0b4ea839fc8",
  "source": {
    "blob": "2c198300ba5e89ef38ba5ea3cacbe0a26c79b954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 210,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllrefereegatesCount9de8f715275b/Variant21787bb3b08b64e200b5cf9ab217648a86fc4c01935e0f585bbcd8c31c2f0bf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecd6a08ead76f0b4ea839fc8bb3ed187bafbe4aef8cacc872f947f842980861e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllrefereegatesCount9de8f715275b/Variant21787bb3b08b64e200b5cf9ab217648a86fc4c01935e0f585bbcd8c31c2f0bf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9fe4715-012b-4af6-3559-b9cc58b5422d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exploded_kakeya_cover_is_local_join_magma :
    Equation43 ExplodedKakeyaCover ∧
    Equation4512 ExplodedKakeyaCover ∧
    DuplicateStable ExplodedKakeyaCover := by
  exact ⟨
    coverJoin_equation43,
    coverJoin_equation4512,
    coverJoin_duplicateStable
  ⟩

/-- Small examples for sanity checks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllrefereegatesCount9de8f715275b/Variant21787bb3b08b64e200b5cf9ab217648a86fc4c01935e0f585bbcd8c31c2f0bf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllrefereegatesCount9de8f715275b/Variant21787bb3b08b64e200b5cf9ab217648a86fc4c01935e0f585bbcd8c31c2f0bf2.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c198300ba5e89ef38ba5ea3cacbe0a26c79b954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
