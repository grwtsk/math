# mulIndicator_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e02c32a5138b3cf49ab11a0c9f236beed6ebb46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25157f99-2aed-9c42-b1a3-56278d8b303c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1dddabe-8665-fdde-7d96-d04341a8fc8f",
  "kind": "lemma",
  "lexical_name": "mulIndicator_prod",
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
  "slug": "mulindicator-prod--5d335ac59ac0d449c2380de7",
  "source": {
    "blob": "0e02c32a5138b3cf49ab11a0c9f236beed6ebb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d335ac59ac0d449c2380de770111a2bf7f7d92e81ef5e8f20f2d397f4a9ccbd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1dddabe-8665-fdde-7d96-d04341a8fc8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulIndicator_prod (s : Finset ι) (t : Set κ) (f : ι → κ → β) :
    mulIndicator t (∏ i ∈ s, f i) = ∏ i ∈ s, mulIndicator t (f i) :=
  map_prod (mulIndicatorHom _ _) _ _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e02c32a5138b3cf49ab11a0c9f236beed6ebb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
