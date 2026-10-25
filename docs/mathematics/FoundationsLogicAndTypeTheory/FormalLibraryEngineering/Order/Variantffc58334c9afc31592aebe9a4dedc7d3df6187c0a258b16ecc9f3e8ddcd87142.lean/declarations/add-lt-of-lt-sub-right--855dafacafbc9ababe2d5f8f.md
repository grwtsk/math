# add_lt_of_lt_sub_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81780da39a74d94498549f141e025bb4edb6d014",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1025,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffc58334c9afc31592aebe9a4dedc7d3df6187c0a258b16ecc9f3e8ddcd87142.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b7c9f73-2ebe-cf33-ee33-26765cc6d0e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a436dfbe-25cb-c0d5-fb30-5770265fcbad",
  "kind": "theorem",
  "lexical_name": "add_lt_of_lt_sub_right",
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
  "slug": "add-lt-of-lt-sub-right--855dafacafbc9ababe2d5f8f",
  "source": {
    "blob": "81780da39a74d94498549f141e025bb4edb6d014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1028,
    "line": 1025,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantffc58334c9afc31592aebe9a4dedc7d3df6187c0a258b16ecc9f3e8ddcd87142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:855dafacafbc9ababe2d5f8fcb697320d70c9bd39cb76993c52bec3d5237a3e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantffc58334c9afc31592aebe9a4dedc7d3df6187c0a258b16ecc9f3e8ddcd87142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a436dfbe-25cb-c0d5-fb30-5770265fcbad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1025–1028.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem add_lt_of_lt_sub_right {a b c : Int} (h : a < c - b) : a + b < c := by
  have h := Int.add_lt_add_right h b
  rwa [Int.sub_add_cancel] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantffc58334c9afc31592aebe9a4dedc7d3df6187c0a258b16ecc9f3e8ddcd87142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantffc58334c9afc31592aebe9a4dedc7d3df6187c0a258b16ecc9f3e8ddcd87142.lean#L1025).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81780da39a74d94498549f141e025bb4edb6d014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
