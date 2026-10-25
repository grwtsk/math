# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fa860b9c3662cb89752181fa3a743ef5d60e68236369f62ad70b92b71a2c99f",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax--5f9e79bc2b51cc5abb37ead5",
  "source": {
    "blob": "e22770e445ff24dfe77ce3337b11264e8bad28b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantc6e4ca90d3d7365ac6e4d5cde6cba3a3b34a6aca6ddc0a4ffb6449e76ccb0ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f9e79bc2b51cc5abb37ead54dce3d82650d1d3d8eac1a38284a9a6e324db56a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantc6e4ca90d3d7365ac6e4d5cde6cba3a3b34a6aca6ddc0a4ffb6449e76ccb0ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fa860b9c3662cb89752181fa3a743ef5d60e68236369f62ad70b92b71a2c99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax (name := unfold) "unfold" (ppSpace colGt ident)+ : conv

/--
* `pattern pat` traverses to the first subterm of the target that matches `pat`.
* `pattern (occs := *) pat` traverses to every subterm of the target that matches `pat`
  which is not contained in another match of `pat`. It generates one subgoal for each matching
  subterm.
* `pattern (occs := 1 2 4) pat` matches occurrences `1, 2, 4` of `pat` and produces three subgoals.
  Occurrences are numbered left to right from the outside in.

Note that skipping an occurrence of `pat` will traverse inside that subexpression, which means
it may find more matches and this can affect the numbering of subsequent pattern matches.
For example, if we are searching for `f _` in `f (f a) = f b`:
* `occs := 1 2` (and `occs := *`) returns `| f (f a)` and `| f b`
* `occs := 2` returns `| f a`
* `occs := 2 3` returns `| f a` and `| f b`
* `occs := 1 3` is an error, because after skipping `f b` there is no third match.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantc6e4ca90d3d7365ac6e4d5cde6cba3a3b34a6aca6ddc0a4ffb6449e76ccb0ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantc6e4ca90d3d7365ac6e4d5cde6cba3a3b34a6aca6ddc0a4ffb6449e76ccb0ab5.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e22770e445ff24dfe77ce3337b11264e8bad28b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
