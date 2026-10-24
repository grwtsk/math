# Tendsto.atBot_zsmul_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d1f6ffed91ae0a51f0d70fde5c791349f1e507c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04b3d22f-9473-3009-7299-70f5e46b6850",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13b64ba1-b2f5-9246-db42-6ee87daa9328",
  "kind": "theorem",
  "lexical_name": "Tendsto.atBot_zsmul_const",
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
  "slug": "tendsto-atbot-zsmul-const--4657e3ae98d4dfdc0b0d2e03",
  "source": {
    "blob": "1d1f6ffed91ae0a51f0d70fde5c791349f1e507c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4657e3ae98d4dfdc0b0d2e03d8b5329ab6e922de69cea4aa6caf68135f9d8281",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13b64ba1-b2f5-9246-db42-6ee87daa9328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.atBot_zsmul_const {f : α → ℤ} (hr : 0 < r) (hf : Tendsto f l atBot) :
    Tendsto (fun x => f x • r) l atBot := by
  simp only [← tendsto_neg_atTop_iff, ← neg_zsmul] at hf ⊢
  exact hf.atTop_zsmul_const hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1f6ffed91ae0a51f0d70fde5c791349f1e507c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
