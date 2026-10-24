# action_is_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e323b29365c6df43ff51bb35ef66ec5474f98e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27ec34cc-ec4d-4f4b-edf7-1f8eae77bd65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed0188df-e6d8-af34-2448-8a6833286f99",
  "kind": "theorem",
  "lexical_name": "action_is_left",
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
  "slug": "action-is-left--a475a55504cf1f231990cf58",
  "source": {
    "blob": "d4e323b29365c6df43ff51bb35ef66ec5474f98e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 259,
    "path": "GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a475a55504cf1f231990cf58eeff1faa38c6af2e49783320a5557ed5335e8b6c",
  "verification": {
    "reference": "docs/verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed0188df-e6d8-af34-2448-8a6833286f99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem action_is_left
    (Θ : TangentialObstructionTheory certificate) :
    Θ.actionConvention = .left :=
  Θ.actionConvention_eq

/--
At `p = 0`, extension is equality of the path components of the ordered
negative and positive endpoint lifts.  No subtraction or group structure is
used by this generic statement.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e323b29365c6df43ff51bb35ef66ec5474f98e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
