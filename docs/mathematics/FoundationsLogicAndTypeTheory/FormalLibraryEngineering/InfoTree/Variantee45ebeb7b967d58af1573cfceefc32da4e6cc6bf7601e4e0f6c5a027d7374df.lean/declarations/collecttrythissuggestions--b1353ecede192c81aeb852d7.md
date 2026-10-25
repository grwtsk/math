# collectTryThisSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3f13958bbf65a841703b94a66f86ce929d707f08144a91cd35ba06351aee0a5",
  "kind": "def",
  "lexical_name": "collectTryThisSuggestions",
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
  "slug": "collecttrythissuggestions--b1353ecede192c81aeb852d7",
  "source": {
    "blob": "4ed9e0797f6ee5e716ca7b9c7171b2134cbe8c34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1353ecede192c81aeb852d73b68b88ac047625a40f6f6107697bdb8d3596fab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3f13958bbf65a841703b94a66f86ce929d707f08144a91cd35ba06351aee0a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectTryThisSuggestions (trees : PersistentArray InfoTree) : Array Suggestion :=
  trees.foldl (init := #[]) fun acc tree => go acc tree
where
  /-- Traverses an `InfoTree` to collect `TryThisInfo` suggestions. -/
  go (acc : Array Suggestion) : InfoTree → Array Suggestion
    | .context _ t => go acc t
    | .node i children =>
      let acc := match i with
        | .ofCustomInfo ci =>
          match ci.value.get? TryThisInfo with
          | some tti => acc.push tti.suggestion
          | none => acc
        | _ => acc
      children.foldl (init := acc) fun acc tree => go acc tree
    | .hole _ => acc

namespace InfoTree

/--
Finds the first result of `← f ctx info children` which is `some a`, descending the
tree from the top. Merges and updates contexts as it descends the tree.

`f` is **only** evaluated on nodes when some context is present. An initial context should be
provided via the `ctx?` argument if invoking `findSomeM?` during a larger traversal of the
infotree. A failure to provide `ctx? := some ctx` when `t` is not the outermost `InfoTree` is thus
likely to cause `findSomeM?` to always return `none`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ed9e0797f6ee5e716ca7b9c7171b2134cbe8c34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
