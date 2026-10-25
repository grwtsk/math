# IndGroupInfo.brecOnName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a9fcd5b4c99af338a6a257d7988b9d5012f7bf02d89a791bdc7afc18c3e269f",
  "kind": "def",
  "lexical_name": "IndGroupInfo.brecOnName",
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
  "slug": "indgroupinfo-breconname--5674f1f30789d9aeffdb039d",
  "source": {
    "blob": "f4bf24bef682b529c205710bfb3ca50fcc0c35dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndGroupInfo/Variantde2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5674f1f30789d9aeffdb039ded836c0f10878d3ee792940ffb091bdc35b2e20f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndGroupInfo/Variantde2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a9fcd5b4c99af338a6a257d7988b9d5012f7bf02d89a791bdc7afc18c3e269f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def IndGroupInfo.brecOnName (info : IndGroupInfo) (idx : Nat) : Name :=
  if let .some n := info.all[idx]? then
      mkBRecOnName n
    else
      let j := idx - info.all.size + 1
      info.brecOnName 0 |>.appendIndexAfter j

/--
An instance of an mutually inductive group of inductives, identified by the `all` array
and the level and expressions parameters.

For example this distinguishes between `List α` and `List β` so that we will not even attempt
mutual structural recursion on such incompatible types.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndGroupInfo/Variantde2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndGroupInfo/Variantde2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4bf24bef682b529c205710bfb3ca50fcc0c35dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
