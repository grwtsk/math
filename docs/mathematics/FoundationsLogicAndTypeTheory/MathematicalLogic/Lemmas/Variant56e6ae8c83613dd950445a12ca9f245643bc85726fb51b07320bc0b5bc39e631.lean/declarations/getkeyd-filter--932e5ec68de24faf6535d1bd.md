# getKeyD_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc493d5554bb5e2a363e76c9f2fc05e930449d39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4650,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aade80ca-5f67-ab1b-1650-3cab2fcca5e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6c94544-1f2c-09b3-c44e-7de9b414c8ea",
  "kind": "theorem",
  "lexical_name": "getKeyD_filter",
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
  "slug": "getkeyd-filter--932e5ec68de24faf6535d1bd",
  "source": {
    "blob": "bc493d5554bb5e2a363e76c9f2fc05e930449d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4656,
    "line": 4650,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:932e5ec68de24faf6535d1bdd379fa4b86701726336446c14ac6090a1f1e06c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6c94544-1f2c-09b3-c44e-7de9b414c8ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4650–4656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKeyD_filter [TransCmp cmp]
    {f : α → β → Bool} {k fallback : α} (h : t.WF) :
    (t.filter f).getKeyD k fallback =
    ((t.getKey? k).pfilter (fun x h' =>
      (f x (t[x]' (mem_of_getKey?_eq_some h h'))))).getD fallback :=
  DTreeMap.Raw.Const.getKeyD_filter h.out

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean#L4650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc493d5554bb5e2a363e76c9f2fc05e930449d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
