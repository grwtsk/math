# ForInStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd4aa085661146f2a1847e77611fe71cfeca1b02362334110148c47e28f73551",
  "kind": "inductive",
  "lexical_name": "ForInStep",
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
  "slug": "forinstep--d3caaad680df2af96e4cc354",
  "source": {
    "blob": "c00f44d589c186526ee811958ab745a2b1078de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 351,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3caaad680df2af96e4cc3543074a6504ac38e1813a5c5483d5e85317a4651dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd4aa085661146f2a1847e77611fe71cfeca1b02362334110148c47e28f73551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ForInStep (α : Type u) where
  /--
  The loop should terminate early.

  `ForInStep.done` is produced by uses of `break` or `return` in the loop body.
  -/
  | done  : α → ForInStep α
  /--
  The loop should continue with the next iteration, using the returned state.

  `ForInStep.yield` is produced by `continue` and by reaching the bottom of the loop body.
  -/
  | yield : α → ForInStep α
  deriving Inhabited

/--
Monadic iteration in `do`-blocks, using the `for x in xs` notation.

The parameter `m` is the monad of the `do`-block in which iteration is performed, `ρ` is the type of
the collection being iterated over, and `α` is the type of elements.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00f44d589c186526ee811958ab745a2b1078de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
