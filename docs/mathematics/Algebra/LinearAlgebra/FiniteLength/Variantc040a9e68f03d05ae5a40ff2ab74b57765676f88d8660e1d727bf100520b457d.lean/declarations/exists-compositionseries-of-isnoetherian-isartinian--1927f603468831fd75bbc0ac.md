# exists_compositionSeries_of_isNoetherian_isArtinian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6258bebaf1eeb50be240fa17ddd3ae2c3397651",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1a584bb-cafb-b9ed-68d5-94e77a731ac1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c685700-d305-fce5-a426-3dce56ac16be",
  "kind": "theorem",
  "lexical_name": "exists_compositionSeries_of_isNoetherian_isArtinian",
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
  "slug": "exists-compositionseries-of-isnoetherian-isartinian--1927f603468831fd75bbc0ac",
  "source": {
    "blob": "e6258bebaf1eeb50be240fa17ddd3ae2c3397651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1927f603468831fd75bbc0ac2b580291ff6a69767d219c9908b3f2d286508bfe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c685700-d305-fce5-a426-3dce56ac16be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_compositionSeries_of_isNoetherian_isArtinian [IsNoetherian R M] [IsArtinian R M] :
    ∃ s : CompositionSeries (Submodule R M), s.head = ⊥ ∧ s.last = ⊤ := by
  obtain ⟨f, f0, n, hn⟩ := exists_covBy_seq_of_wellFoundedLT_wellFoundedGT (Submodule R M)
  exact ⟨⟨n, fun i ↦ f i, fun i ↦ hn.2 i i.2⟩, f0.eq_bot, hn.1.eq_top⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6258bebaf1eeb50be240fa17ddd3ae2c3397651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
