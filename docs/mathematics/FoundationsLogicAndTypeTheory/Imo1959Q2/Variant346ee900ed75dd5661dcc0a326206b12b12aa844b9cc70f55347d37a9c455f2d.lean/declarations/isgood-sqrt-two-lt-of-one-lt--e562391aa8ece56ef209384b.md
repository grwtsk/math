# IsGood.sqrt_two_lt_of_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0325f5e80b580b9181dd110378a1b5608a41d567",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bbfaf00-2410-179c-fc78-73ac4f43299b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0eca95ac-ad9a-6ae0-8084-3b44c8a3af2b",
  "kind": "theorem",
  "lexical_name": "IsGood.sqrt_two_lt_of_one_lt",
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
  "slug": "isgood-sqrt-two-lt-of-one-lt--e562391aa8ece56ef209384b",
  "source": {
    "blob": "0325f5e80b580b9181dd110378a1b5608a41d567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e562391aa8ece56ef209384b791b095488348e5c310a8bb31d5993a849f82731",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eca95ac-ad9a-6ae0-8084-3b44c8a3af2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsGood.sqrt_two_lt_of_one_lt (h : IsGood x A) (hx : 1 < x) : sqrt 2 < A := by
  rw [(isGood_iff_eq_sqrt hx).1 h]
  refine sqrt_lt_sqrt zero_le_two ?_
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0325f5e80b580b9181dd110378a1b5608a41d567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
