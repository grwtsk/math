# top_ne_set_smul_of_subset_jacobson_annihilator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c51814e0230cbe033b9580d49bf33118a973db6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b552c2d3-93b7-8c06-bb00-688699389bc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1e4f045-9a6b-3e83-4df3-f7b9d5378ab6",
  "kind": "lemma",
  "lexical_name": "top_ne_set_smul_of_subset_jacobson_annihilator",
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
  "slug": "top-ne-set-smul-of-subset-jacobson-annihilator--101b0cfa515751ac84c31e5f",
  "source": {
    "blob": "5c51814e0230cbe033b9580d49bf33118a973db6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:101b0cfa515751ac84c31e5f958c6aed56f74ec8d65cfc23bd8c262aea6b2e17",
  "verification": {
    "reference": "docs/verification/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1e4f045-9a6b-3e83-4df3-f7b9d5378ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma top_ne_set_smul_of_subset_jacobson_annihilator [Nontrivial M]
    [Module.Finite R M] {s : Set R}
    (h : s ⊆ (Module.annihilator R M).jacobson) :
    (⊤ : Submodule R M) ≠ s • ⊤ :=
  ne_of_ne_of_eq (top_ne_ideal_smul_of_le_jacobson_annihilator (span_le.mpr h))
    (span_smul_eq _ _)

open scoped Pointwise in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c51814e0230cbe033b9580d49bf33118a973db6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
