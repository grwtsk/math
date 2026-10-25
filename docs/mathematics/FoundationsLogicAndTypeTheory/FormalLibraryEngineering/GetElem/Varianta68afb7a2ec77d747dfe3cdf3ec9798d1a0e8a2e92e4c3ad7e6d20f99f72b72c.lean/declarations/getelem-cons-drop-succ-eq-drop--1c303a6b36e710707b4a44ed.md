# getElem_cons_drop_succ_eq_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c07bf9985c5f5d6b2083168c9bf8ba92fe1068c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a68afb7a2ec77d747dfe3cdf3ec9798d1a0e8a2e92e4c3ad7e6d20f99f72b72c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:397f70f5-d988-bf4f-14b3-31fc4ec0c7cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:606234ac-78fc-2db6-b51b-d3ec6918541c",
  "kind": "theorem",
  "lexical_name": "getElem_cons_drop_succ_eq_drop",
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
  "slug": "getelem-cons-drop-succ-eq-drop--1c303a6b36e710707b4a44ed",
  "source": {
    "blob": "c07bf9985c5f5d6b2083168c9bf8ba92fe1068c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Varianta68afb7a2ec77d747dfe3cdf3ec9798d1a0e8a2e92e4c3ad7e6d20f99f72b72c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c303a6b36e710707b4a44edb4af1b841a1a6e746fdb8f9b711a63fb1657a954",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Varianta68afb7a2ec77d747dfe3cdf3ec9798d1a0e8a2e92e4c3ad7e6d20f99f72b72c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:606234ac-78fc-2db6-b51b-d3ec6918541c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_cons_drop_succ_eq_drop {as : List α} {i : Nat} (h : i < as.length) :
    as[i] :: as.drop (i+1) = as.drop i := getElem_cons_drop h

/-! ### getElem? -/

/-- Internal implementation of `as[i]?`. Do not use directly. -/
-- We still keep it public for reduction purposes
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Varianta68afb7a2ec77d747dfe3cdf3ec9798d1a0e8a2e92e4c3ad7e6d20f99f72b72c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Varianta68afb7a2ec77d747dfe3cdf3ec9798d1a0e8a2e92e4c3ad7e6d20f99f72b72c.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c07bf9985c5f5d6b2083168c9bf8ba92fe1068c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
