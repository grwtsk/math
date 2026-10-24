# lebesgue_number_lemma_of_metric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f43009fa8c4bfcb46f82727fece38bf05b7b65d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b501124-fdd2-445b-9df2-643b62be2938",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:906b44d7-e037-312b-9315-5dbb4ea7ff75",
  "kind": "theorem",
  "lexical_name": "lebesgue_number_lemma_of_metric",
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
  "slug": "lebesgue-number-lemma-of-metric--9e1e5cf87fb68d085529c457",
  "source": {
    "blob": "f43009fa8c4bfcb46f82727fece38bf05b7b65d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e1e5cf87fb68d085529c457d57bdbffb860c82e7d8e64ef90207ce2da489a62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:906b44d7-e037-312b-9315-5dbb4ea7ff75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_lemma_of_metric {s : Set α} {ι : Sort*} {c : ι → Set α} (hs : IsCompact s)
    (hc₁ : ∀ i, IsOpen (c i)) (hc₂ : s ⊆ ⋃ i, c i) : ∃ δ > 0, ∀ x ∈ s, ∃ i, ball x δ ⊆ c i := by
  simpa only [ball, UniformSpace.ball, preimage_ofPred_eq, dist_comm]
    using uniformity_basis_dist.lebesgue_number_lemma hs hc₁ hc₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant6a0cf742b00efa9cbd7f386a61c33a84710797bc1fb1cb82d8d92e1951b4df6a.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f43009fa8c4bfcb46f82727fece38bf05b7b65d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
