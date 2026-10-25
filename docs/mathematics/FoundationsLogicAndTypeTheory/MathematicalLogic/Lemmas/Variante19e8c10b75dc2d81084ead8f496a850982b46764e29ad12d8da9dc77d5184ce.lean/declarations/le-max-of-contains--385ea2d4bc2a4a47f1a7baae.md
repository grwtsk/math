# le_max_of_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fdb9e7ccd59f5a840f1bbbb7b4d8876c21a8fde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1891,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc6bc81a-49d7-dfb4-9332-f00174f422c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0828aa8c-21df-2c8b-5218-6fc43b32002b",
  "kind": "theorem",
  "lexical_name": "le_max_of_contains",
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
  "slug": "le-max-of-contains--385ea2d4bc2a4a47f1a7baae",
  "source": {
    "blob": "2fdb9e7ccd59f5a840f1bbbb7b4d8876c21a8fde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1894,
    "line": 1891,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:385ea2d4bc2a4a47f1a7baae59a6f306602321dad6c3426ec39b1f7c75423b31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0828aa8c-21df-2c8b-5218-6fc43b32002b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1891–1894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_max_of_contains [TransCmp cmp] {k} (hc : t.contains k) :
    cmp k (t.max <| isEmpty_eq_false_iff_exists_contains_eq_true.mpr ⟨k, hc⟩) |>.isLE :=
  TreeMap.le_maxKey_of_contains hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean#L1891).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fdb9e7ccd59f5a840f1bbbb7b4d8876c21a8fde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
