# openEmbedding_of_continuous_injective_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d20e0e75335b8d80b4c7a09094162a61ab6aa544",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 625,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48cc2953-1e1d-d19b-cd16-1febf111ae66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3583549-7b44-3ed2-23a2-8c0c06c63b1e",
  "kind": "theorem",
  "lexical_name": "openEmbedding_of_continuous_injective_open",
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
  "slug": "openembedding-of-continuous-injective-open--58f3e841da0b7300455ed438",
  "source": {
    "blob": "d20e0e75335b8d80b4c7a09094162a61ab6aa544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 625,
    "path": "GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58f3e841da0b7300455ed438f467472c0af3a867ec603304912511db8ebf30de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3583549-7b44-3ed2-23a2-8c0c06c63b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem openEmbedding_of_continuous_injective_open {f : α → β} (h₁ : Continuous f)
    (h₂ : Injective f) (h₃ : IsOpenMap f) : OpenEmbedding f := by
  simp only [openEmbedding_iff_embedding_open, embedding_iff, inducing_iff_nhds, *, and_true_iff]
  exact fun a =>
    le_antisymm (h₁.tendsto _).le_comap (@comap_map _ _ (𝓝 a) _ h₂ ▸ comap_mono (h₃.nhds_le _))
#align open_embedding_of_continuous_injective_open openEmbedding_of_continuous_injective_open

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d20e0e75335b8d80b4c7a09094162a61ab6aa544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
