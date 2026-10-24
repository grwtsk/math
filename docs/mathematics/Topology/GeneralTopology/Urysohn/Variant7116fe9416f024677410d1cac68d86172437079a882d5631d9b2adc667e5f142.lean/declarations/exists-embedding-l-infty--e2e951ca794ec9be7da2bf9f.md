# exists_embedding_l_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d41da4d5bc284dac4100a56a142c4df1159375f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dca40550-887c-e993-8542-f07932268563",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46e9f3e3-e587-d565-de83-a2e8f0fde80e",
  "kind": "theorem",
  "lexical_name": "exists_embedding_l_infty",
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
  "slug": "exists-embedding-l-infty--e2e951ca794ec9be7da2bf9f",
  "source": {
    "blob": "9d41da4d5bc284dac4100a56a142c4df1159375f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e951ca794ec9be7da2bf9f16c5ed53b91592078d76ad6928650fa89bc1ce89",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46e9f3e3-e587-d565-de83-a2e8f0fde80e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_embedding_l_infty : ∃ f : X → ℕ →ᵇ ℝ, IsEmbedding f :=
  let ⟨f, hf⟩ := exists_isInducing_l_infty X; ⟨f, hf.isEmbedding⟩

/-- *Urysohn's metrization theorem* (Tychonoff's version): a T₃ topological space with second
countable topology `X` is metrizable, i.e., there exists a metric space structure that generates the
same topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Urysohn/Variant7116fe9416f024677410d1cac68d86172437079a882d5631d9b2adc667e5f142.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d41da4d5bc284dac4100a56a142c4df1159375f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
