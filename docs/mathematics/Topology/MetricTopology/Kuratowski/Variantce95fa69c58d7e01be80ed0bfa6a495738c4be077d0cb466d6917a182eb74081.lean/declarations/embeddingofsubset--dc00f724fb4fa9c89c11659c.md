# embeddingOfSubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86bea5e8cffd112e3ea0555694dc5c4334a9da37538fe4af8dfa8fed296093b7",
  "kind": "def",
  "lexical_name": "embeddingOfSubset",
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
  "slug": "embeddingofsubset--dc00f724fb4fa9c89c11659c",
  "source": {
    "blob": "77f8e84459267b2ca0c9c8653a5f49cf3993022f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 44,
    "path": "GRWTSK/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc00f724fb4fa9c89c11659c72ac5806f79557a7f08bcb56d15de05f8506d8b8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86bea5e8cffd112e3ea0555694dc5c4334a9da37538fe4af8dfa8fed296093b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def embeddingOfSubset : ℓ^∞(ℕ) :=
  ⟨fun n => dist a (x n) - dist (x 0) (x n), by
    apply memℓp_infty
    use dist a (x 0)
    rintro - ⟨n, rfl⟩
    exact abs_dist_sub_le _ _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f8e84459267b2ca0c9c8653a5f49cf3993022f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
