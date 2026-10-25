# collectTryThisSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c84447b02925e8126172ef43ab534b1affa3114d32f340456f9fd097908efe4",
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
  "slug": "collecttrythissuggestions--2652514944f47845da79db8f",
  "source": {
    "blob": "148fb73b51bcbfed76ae32e40321e9e46c083fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variant27d13f8d4d7f9f4c464b59678f65a6deff9541488cd39c93e6a70fd8b67c1480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2652514944f47845da79db8f598431b98b99aba1f1c44a271e48520a51c77b69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variant27d13f8d4d7f9f4c464b59678f65a6deff9541488cd39c93e6a70fd8b67c1480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c84447b02925e8126172ef43ab534b1affa3114d32f340456f9fd097908efe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–67.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variant27d13f8d4d7f9f4c464b59678f65a6deff9541488cd39c93e6a70fd8b67c1480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variant27d13f8d4d7f9f4c464b59678f65a6deff9541488cd39c93e6a70fd8b67c1480.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148fb73b51bcbfed76ae32e40321e9e46c083fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
