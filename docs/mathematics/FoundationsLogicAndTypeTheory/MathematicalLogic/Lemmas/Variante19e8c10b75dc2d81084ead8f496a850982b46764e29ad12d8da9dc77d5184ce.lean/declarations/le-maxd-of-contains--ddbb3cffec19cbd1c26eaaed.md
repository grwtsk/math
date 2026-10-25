# le_maxD_of_contains

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
      "line": 2095,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1499fd8d-200f-f9b8-60f2-a17cd85e1916",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2a127d9-2bf8-c03a-8663-22b0791e5859",
  "kind": "theorem",
  "lexical_name": "le_maxD_of_contains",
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
  "slug": "le-maxd-of-contains--ddbb3cffec19cbd1c26eaaed",
  "source": {
    "blob": "2fdb9e7ccd59f5a840f1bbbb7b4d8876c21a8fde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2098,
    "line": 2095,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddbb3cffec19cbd1c26eaaedc4b6466a19ade1e15962431b7f5c2a040e3ba0ac",
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

Occurrence: `result:d2a127d9-2bf8-c03a-8663-22b0791e5859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2095–2098.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_maxD_of_contains [TransCmp cmp] {k} (hc : t.contains k) {fallback} :
    cmp k (t.maxD fallback) |>.isLE :=
  TreeMap.le_maxKeyD_of_contains hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante19e8c10b75dc2d81084ead8f496a850982b46764e29ad12d8da9dc77d5184ce.lean#L2095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fdb9e7ccd59f5a840f1bbbb7b4d8876c21a8fde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
