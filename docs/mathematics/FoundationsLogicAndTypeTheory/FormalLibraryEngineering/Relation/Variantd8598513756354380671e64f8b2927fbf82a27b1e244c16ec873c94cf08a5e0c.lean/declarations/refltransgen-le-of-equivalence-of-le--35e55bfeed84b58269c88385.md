# reflTransGen_le_of_equivalence_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de16670cbf66088cd1d5c9fb03f5b7f4b2bf6133",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 996,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8598513756354380671e64f8b2927fbf82a27b1e244c16ec873c94cf08a5e0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:159da061-ec62-849a-dec8-692b4a1d5c8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53f51283-32af-4801-4498-a27153185abb",
  "kind": "theorem",
  "lexical_name": "reflTransGen_le_of_equivalence_of_le",
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
  "slug": "refltransgen-le-of-equivalence-of-le--35e55bfeed84b58269c88385",
  "source": {
    "blob": "de16670cbf66088cd1d5c9fb03f5b7f4b2bf6133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1012,
    "line": 996,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variantd8598513756354380671e64f8b2927fbf82a27b1e244c16ec873c94cf08a5e0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35e55bfeed84b58269c8838573dfb25a46fa5fff207afdc66aa58427a8b8b67b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variantd8598513756354380671e64f8b2927fbf82a27b1e244c16ec873c94cf08a5e0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53f51283-32af-4801-4498-a27153185abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1012.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflTransGen_le_of_equivalence_of_le {r' : α → α → Prop} (hr : Equivalence r) :
    r' ≤ r → ReflTransGen r' ≤ r :=
  @reflTransGen_le_of_le _ _ _ hr.stdRefl hr.isTrans

@[deprecated (since := "2026-06-30")]
alias reflTransGen_of_equivalence := reflTransGen_le_of_equivalence_of_le

end Join

end Relation

section EqvGen

open Relation

variable {r : α → α → Prop} {a b : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variantd8598513756354380671e64f8b2927fbf82a27b1e244c16ec873c94cf08a5e0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variantd8598513756354380671e64f8b2927fbf82a27b1e244c16ec873c94cf08a5e0c.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de16670cbf66088cd1d5c9fb03f5b7f4b2bf6133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
