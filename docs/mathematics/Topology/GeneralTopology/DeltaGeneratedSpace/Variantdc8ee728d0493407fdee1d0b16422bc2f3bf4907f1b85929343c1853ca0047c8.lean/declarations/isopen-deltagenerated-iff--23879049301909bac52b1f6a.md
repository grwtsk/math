# isOpen_deltaGenerated_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "003b90f637fa7e0f8a403a32cc844950620f3042",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7b97cd6-45af-9a63-6036-1b59ce76ad0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7864b486-e100-ab02-0c57-7b04e2555105",
  "kind": "lemma",
  "lexical_name": "isOpen_deltaGenerated_iff",
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
  "slug": "isopen-deltagenerated-iff--23879049301909bac52b1f6a",
  "source": {
    "blob": "003b90f637fa7e0f8a403a32cc844950620f3042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23879049301909bac52b1f6a264595b322a3b1d239de0870c7f840e40211b248",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7864b486-e100-ab02-0c57-7b04e2555105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_deltaGenerated_iff {u : Set X} :
    IsOpen[deltaGenerated X] u ↔ ∀ n (p : C(Fin n → ℝ, X)), IsOpen (p ⁻¹' u) := by
  simp_rw [deltaGenerated, isOpen_iSup_iff, isOpen_coinduced, Sigma.forall]

/-- A map from ℝⁿ to X is continuous iff it is continuous regarding the
  delta-generated topology on X. Outside of this file, use the more general
  `continuous_to_deltaGenerated` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003b90f637fa7e0f8a403a32cc844950620f3042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
