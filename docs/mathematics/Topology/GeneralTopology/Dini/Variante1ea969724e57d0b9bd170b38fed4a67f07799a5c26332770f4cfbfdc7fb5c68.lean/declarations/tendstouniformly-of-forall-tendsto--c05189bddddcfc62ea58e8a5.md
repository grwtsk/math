# tendstoUniformly_of_forall_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21a7d06fcf9d0c43560a2a1e821c0da093e823c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1ea969724e57d0b9bd170b38fed4a67f07799a5c26332770f4cfbfdc7fb5c68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70a640d1-62e3-ef0e-3bb7-cc36b272230c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cac0278f-9f4a-16ba-14b2-d6c660236b64",
  "kind": "lemma",
  "lexical_name": "tendstoUniformly_of_forall_tendsto",
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
  "slug": "tendstouniformly-of-forall-tendsto--c05189bddddcfc62ea58e8a5",
  "source": {
    "blob": "21a7d06fcf9d0c43560a2a1e821c0da093e823c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Dini/Variante1ea969724e57d0b9bd170b38fed4a67f07799a5c26332770f4cfbfdc7fb5c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c05189bddddcfc62ea58e8a530caf1af49b0644881207b432e97d12a5386b401",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dini/Variante1ea969724e57d0b9bd170b38fed4a67f07799a5c26332770f4cfbfdc7fb5c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cac0278f-9f4a-16ba-14b2-d6c660236b64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoUniformly_of_forall_tendsto [CompactSpace α] (hF_cont : ∀ i, Continuous (F i))
    (hF_mono : Monotone F) (hf : Continuous f) (h_tendsto : ∀ x, Tendsto (F · x) atTop (𝓝 (f x))) :
    TendstoUniformly F f atTop :=
  tendstoLocallyUniformly_iff_tendstoUniformly_of_compactSpace.mp <|
    tendstoLocallyUniformly_of_forall_tendsto hF_cont hF_mono hf h_tendsto

/-- **Dini's theorem**: if `F n` is a monotone increasing collection of continuous functions on a
compact set `s` converging pointwise to a continuous function `f`, then `F n` converges uniformly
to `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dini/Variante1ea969724e57d0b9bd170b38fed4a67f07799a5c26332770f4cfbfdc7fb5c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dini/Variante1ea969724e57d0b9bd170b38fed4a67f07799a5c26332770f4cfbfdc7fb5c68.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a7d06fcf9d0c43560a2a1e821c0da093e823c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
