# forwardHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98c0cdd4185fefe3ab72d166b170336d65cd1cb01a8be4a679f0e7e6251df530",
  "kind": "def",
  "lexical_name": "forwardHint",
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
  "slug": "forwardhint--d9162c87c71fe0ae32982d44",
  "source": {
    "blob": "da465511cdea040574e33b7394801bdcdebc7a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9162c87c71fe0ae32982d449fc1d1ff095abc798e9cbdddc89e96604cc27b26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98c0cdd4185fefe3ab72d166b170336d65cd1cb01a8be4a679f0e7e6251df530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def forwardHint (headApp : Term) (reason : MessageData) : MessageData :=
  m!"\
    `{headApp}` is not a valid `do←` wrapper: {reason}. The wrapper must have type \
    `(… → m α) → m α` for some `α` that is universally quantified in the wrapper's signature and \
    does not appear elsewhere."

/--
Check that `probeExpr` (the elaboration of `headApp ?forwarded`) has the shape required for
`do←`: its result type is `m α` for an unassigned `α`, the `forwarded` slot is `… → m α` with
the same `α` (and `α` not occurring in the slot's input types), and `α` does not occur in any
*other* explicit argument of the elaborated probe.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da465511cdea040574e33b7394801bdcdebc7a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
