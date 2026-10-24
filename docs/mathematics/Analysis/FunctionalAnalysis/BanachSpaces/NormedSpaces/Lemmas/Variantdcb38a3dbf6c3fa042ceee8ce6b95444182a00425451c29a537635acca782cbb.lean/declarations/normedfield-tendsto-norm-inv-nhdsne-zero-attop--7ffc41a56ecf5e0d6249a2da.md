# NormedField.tendsto_norm_inv_nhdsNE_zero_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f6cb09997ca5b2597c8a9297046a5d3e4d25e5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecb4ad72-e1a5-9851-9c7d-66096b15838d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb7bc030-a243-07b1-cbbd-f620dbea20ed",
  "kind": "lemma",
  "lexical_name": "NormedField.tendsto_norm_inv_nhdsNE_zero_atTop",
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
  "slug": "normedfield-tendsto-norm-inv-nhdsne-zero-attop--7ffc41a56ecf5e0d6249a2da",
  "source": {
    "blob": "8f6cb09997ca5b2597c8a9297046a5d3e4d25e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 119,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ffc41a56ecf5e0d6249a2da1d0962c0d9abab0218cd51da1ea917c4923cf937",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb7bc030-a243-07b1-cbbd-f620dbea20ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NormedField.tendsto_norm_inv_nhdsNE_zero_atTop : Tendsto (fun x : α ↦ ‖x⁻¹‖) (𝓝[≠] 0) atTop :=
  (tendsto_inv_nhdsGT_zero.comp tendsto_norm_nhdsNE_zero).congr fun x ↦ (norm_inv x).symm

@[deprecated (since := "2024-12-22")]
alias NormedField.tendsto_norm_inverse_nhdsWithin_0_atTop :=
  NormedField.tendsto_norm_inv_nhdsNE_zero_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6cb09997ca5b2597c8a9297046a5d3e4d25e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
