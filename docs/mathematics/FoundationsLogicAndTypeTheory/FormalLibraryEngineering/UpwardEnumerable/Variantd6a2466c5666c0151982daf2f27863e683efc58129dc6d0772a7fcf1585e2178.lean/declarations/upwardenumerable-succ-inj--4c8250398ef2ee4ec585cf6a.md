# UpwardEnumerable.succ?_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2177d5f36c8ebaad85edeb412ebf92191fca7ff7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6a2466c5666c0151982daf2f27863e683efc58129dc6d0772a7fcf1585e2178.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a07b883a-27f0-108f-5180-03557955e4ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a48ae7a0-738b-0a96-e79c-a35de0760315",
  "kind": "theorem",
  "lexical_name": "UpwardEnumerable.succ?_inj",
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
  "slug": "upwardenumerable-succ-inj--4c8250398ef2ee4ec585cf6a",
  "source": {
    "blob": "2177d5f36c8ebaad85edeb412ebf92191fca7ff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variantd6a2466c5666c0151982daf2f27863e683efc58129dc6d0772a7fcf1585e2178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c8250398ef2ee4ec585cf6ad08b7e1dcca4c7ee21c5f673b9eaccd3401386d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variantd6a2466c5666c0151982daf2f27863e683efc58129dc6d0772a7fcf1585e2178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a48ae7a0-738b-0a96-e79c-a35de0760315`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UpwardEnumerable.succ?_inj {α : Type u} [UpwardEnumerable α] [LinearlyUpwardEnumerable α]
    {a b : α} :
    succ? a = succ? b ↔ a = b :=
  ⟨LinearlyUpwardEnumerable.eq_of_succ?_eq a b, congrArg succ?⟩

@[deprecated succ?_inj (since := "2025-09-03")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variantd6a2466c5666c0151982daf2f27863e683efc58129dc6d0772a7fcf1585e2178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variantd6a2466c5666c0151982daf2f27863e683efc58129dc6d0772a7fcf1585e2178.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2177d5f36c8ebaad85edeb412ebf92191fca7ff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
