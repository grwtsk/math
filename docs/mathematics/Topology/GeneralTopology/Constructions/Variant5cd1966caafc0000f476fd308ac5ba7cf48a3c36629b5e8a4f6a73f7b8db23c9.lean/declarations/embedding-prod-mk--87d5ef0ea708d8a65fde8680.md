# embedding_prod_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c4314ba-a73e-8efc-9c71-efe15216a4bd",
  "kind": "theorem",
  "lexical_name": "embedding_prod_mk",
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
  "slug": "embedding-prod-mk--87d5ef0ea708d8a65fde8680",
  "source": {
    "blob": "a9c192d25453c8a13928c86bc3a19c4c17859579",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 865,
    "line": 855,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87d5ef0ea708d8a65fde868067533034fbf5b19ba1d2999b21de604d1361983e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c4314ba-a73e-8efc-9c71-efe15216a4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–865.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embedding_prod_mk (x : α) : Embedding (Prod.mk x : β → α × β) :=
  embedding_of_embedding_compose (Continuous.Prod.mk x) continuous_snd embedding_id

end Prod

section Sum

open Sum

variable [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ] [TopologicalSpace δ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c192d25453c8a13928c86bc3a19c4c17859579` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
