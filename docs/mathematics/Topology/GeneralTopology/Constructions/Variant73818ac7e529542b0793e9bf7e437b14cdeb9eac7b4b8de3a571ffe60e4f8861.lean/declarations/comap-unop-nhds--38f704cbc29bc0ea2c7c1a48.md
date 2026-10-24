# comap_unop_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b086d9149c62fd6fcbd9ad76e0dd10c5f22d943",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c557cb7-8445-9206-515c-0d6e7075415d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c582d5e0-6ad4-0389-b634-e005cbda29fd",
  "kind": "theorem",
  "lexical_name": "comap_unop_nhds",
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
  "slug": "comap-unop-nhds--38f704cbc29bc0ea2c7c1a48",
  "source": {
    "blob": "6b086d9149c62fd6fcbd9ad76e0dd10c5f22d943",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38f704cbc29bc0ea2c7c1a48deb83048b749f8adf868b3cc0a6877bb1cb7d28a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c582d5e0-6ad4-0389-b634-e005cbda29fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_unop_nhds (x : M) : comap (unop : Mᵐᵒᵖ → M) (𝓝 x) = 𝓝 (op x) :=
  opHomeomorph.symm.comap_nhds_eq x
#align mul_opposite.comap_unop_nhds MulOpposite.comap_unop_nhds
#align add_opposite.comap_unop_nhds AddOpposite.comap_unop_nhds

end MulOpposite

namespace Units

open MulOpposite

variable [TopologicalSpace M] [Monoid M] [TopologicalSpace X]

/-- The units of a monoid are equipped with a topology, via the embedding into `M × M`. -/
@[to_additive "The additive units of a monoid are equipped with a topology, via the embedding into
`M × M`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b086d9149c62fd6fcbd9ad76e0dd10c5f22d943` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
