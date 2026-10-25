# kstar_def_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab0c50968648a10ba6021e69db2c9f2bc610af17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:626e8331-8e23-60f5-c7a5-267d12a6cbd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44b705b4-782a-eba0-0cf8-6dfe7a14fa1c",
  "kind": "theorem",
  "lexical_name": "kstar_def_nonempty",
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
  "slug": "kstar-def-nonempty--b27d797dfe3cd611202378e0",
  "source": {
    "blob": "ab0c50968648a10ba6021e69db2c9f2bc610af17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Language/Variantdf1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b27d797dfe3cd611202378e010f0d7a4aff2bef5e8534e00a876f82024f05fc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Language/Variantdf1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44b705b4-782a-eba0-0cf8-6dfe7a14fa1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kstar_def_nonempty (l : Language α) :
    l∗ = { x | ∃ S : List (List α), x = S.flatten ∧ ∀ y ∈ S, y ∈ l ∧ y ≠ [] } := by
  ext x; apply mem_kstar_iff_exists_nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Language/Variantdf1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Language/Variantdf1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab0c50968648a10ba6021e69db2c9f2bc610af17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
