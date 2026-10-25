# IterM.dropWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ced9d6d19fd5752c1d050c6a22fd26bbe892b1eca7eabc076cf18238c3c14c7",
  "kind": "def",
  "lexical_name": "IterM.dropWhile",
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
  "slug": "iterm-dropwhile--fc9005dea631a185146993b8",
  "source": {
    "blob": "9fbcb72ea036e9ebf5df42ca2643f942c057de06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant25c105d2a691d404d8f68d6b98c5c99650c94f455fec3d31768c791bc0d8d7e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc9005dea631a185146993b8eaa56b11a52e9df84d9be3e10a3285985ae8a097",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant25c105d2a691d404d8f68d6b98c5c99650c94f455fec3d31768c791bc0d8d7e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ced9d6d19fd5752c1d050c6a22fd26bbe892b1eca7eabc076cf18238c3c14c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IterM.dropWhile [Monad m] (P : β → Bool) (it : IterM (α := α) m β) :=
  (Intermediate.dropWhile P true it: IterM m β)

namespace Iterators.Types

/--
`it.PlausibleStep step` is the proposition that `step` is a possible next step from the
`dropWhile` iterator `it`. This is mostly internally relevant, except if one needs to manually
prove termination (`Finite` or `Productive` instances, for example) of a `dropWhile` iterator.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant25c105d2a691d404d8f68d6b98c5c99650c94f455fec3d31768c791bc0d8d7e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant25c105d2a691d404d8f68d6b98c5c99650c94f455fec3d31768c791bc0d8d7e6.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fbcb72ea036e9ebf5df42ca2643f942c057de06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
