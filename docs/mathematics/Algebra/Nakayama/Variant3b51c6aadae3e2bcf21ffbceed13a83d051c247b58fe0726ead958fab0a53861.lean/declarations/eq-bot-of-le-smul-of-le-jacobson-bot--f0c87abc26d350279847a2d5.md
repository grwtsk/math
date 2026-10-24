# eq_bot_of_le_smul_of_le_jacobson_bot

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
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:772107c1-da89-1730-6c3d-25ce71586bcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a8adfbc-317e-5e49-ea7d-47e6eb007a6c",
  "kind": "theorem",
  "lexical_name": "eq_bot_of_le_smul_of_le_jacobson_bot",
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
  "slug": "eq-bot-of-le-smul-of-le-jacobson-bot--f0c87abc26d350279847a2d5",
  "source": {
    "blob": "5c51814e0230cbe033b9580d49bf33118a973db6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 118,
    "path": "GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c87abc26d350279847a2d54c0482d137b68ba10289b1c1c5c9103d115e3034",
  "verification": {
    "reference": "docs/verification/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a8adfbc-317e-5e49-ea7d-47e6eb007a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_bot_of_le_smul_of_le_jacobson_bot (I : Ideal R) (N : Submodule R M) (hN : N.FG)
    (hIN : N ≤ I • N) (hIjac : I ≤ jacobson ⊥) : N = ⊥ := by
  rw [eq_smul_of_le_smul_of_le_jacobson hN hIN hIjac, Submodule.bot_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c51814e0230cbe033b9580d49bf33118a973db6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
