# sup_nhds'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c16fdfa9ebc1a2a379a3e78c4da9b4a7e19e34b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fc5f6dc-5314-8850-26a0-6cf697cda47d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:297fbef2-6e4e-5edd-01dc-c3c6061db319",
  "kind": "lemma",
  "lexical_name": "sup_nhds'",
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
  "slug": "sup-nhds--6ffab6f69628cd3d2551e28c",
  "source": {
    "blob": "c16fdfa9ebc1a2a379a3e78c4da9b4a7e19e34b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ffab6f69628cd3d2551e28c86bbaefe072c0b90bfa39ab464174d0d62574eab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variant345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:297fbef2-6e4e-5edd-01dc-c3c6061db319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sup_nhds' [Max L] [ContinuousSup L] (hf : Tendsto f l (𝓝 x)) (hg : Tendsto g l (𝓝 y)) :
    Tendsto (f ⊔ g) l (𝓝 (x ⊔ y)) :=
  (continuous_sup.tendsto _).comp (hf.prodMk_nhds hg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variant345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variant345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16fdfa9ebc1a2a379a3e78c4da9b4a7e19e34b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
