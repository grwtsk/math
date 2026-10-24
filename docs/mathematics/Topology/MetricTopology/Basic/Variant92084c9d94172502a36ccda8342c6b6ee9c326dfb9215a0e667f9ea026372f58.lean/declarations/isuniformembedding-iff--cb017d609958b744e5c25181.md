# isUniformEmbedding_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d380f69-42eb-0977-e69c-3bfcb02c0b5c",
  "kind": "theorem",
  "lexical_name": "isUniformEmbedding_iff",
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
  "slug": "isuniformembedding-iff--cb017d609958b744e5c25181",
  "source": {
    "blob": "757f178fc4763191fd84ddf35234c678a03bb5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb017d609958b744e5c25181beff978344a794d8c44b08613c759295e0855bfe",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d380f69-42eb-0977-e69c-3bfcb02c0b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem isUniformEmbedding_iff [PseudoEMetricSpace β] {f : α → β} :
    IsUniformEmbedding f ↔ Function.Injective f ∧ UniformContinuous f ∧
      ∀ δ > 0, ∃ ε > 0, ∀ {a b : α}, edist (f a) (f b) < ε → edist a b < δ :=
  (isUniformEmbedding_iff _).trans <| and_comm.trans <| Iff.rfl.and isUniformInducing_iff

/-- If a map between pseudoemetric spaces is a uniform embedding then the edistance between `f x`
and `f y` is controlled in terms of the distance between `x` and `y`.

In fact, this lemma holds for a `IsUniformInducing` map.
TODO: generalize? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `757f178fc4763191fd84ddf35234c678a03bb5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
