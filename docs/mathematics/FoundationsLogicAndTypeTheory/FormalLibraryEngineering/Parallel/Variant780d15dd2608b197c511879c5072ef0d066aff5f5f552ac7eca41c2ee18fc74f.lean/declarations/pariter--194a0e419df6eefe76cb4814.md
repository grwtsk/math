# parIter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64d4f147671527f29267597fd3b83463d7866e9c4126f657a0964e6451af9ca5",
  "kind": "def",
  "lexical_name": "parIter",
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
  "slug": "pariter--194a0e419df6eefe76cb4814",
  "source": {
    "blob": "3432a9e8e7dedebbaa597ae4758091e7240b4f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:194a0e419df6eefe76cb481463d3306c49af35aed5ab72ac5b5c0f0009d05215",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64d4f147671527f29267597fd3b83463d7866e9c4126f657a0964e6451af9ca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parIter {α : Type} (jobs : List (CoreM α)) :=
  (·.2) <$> parIterWithCancel jobs

/--
Runs a list of CoreM computations in parallel and returns:
* a combined cancellation hook for all tasks, and
* an iterator that yields results in completion order (greedily).

The iterator runs in CoreM, and as it yields each result, it updates the CoreM state
to reflect the state when that particular task completed. This means the state is
threaded through the iteration in task completion order.

Results are wrapped in `Except Exception α` so that errors in individual tasks don't stop
the iteration - you can observe all results including which tasks failed.

The iterator will terminate after all jobs complete (assuming they all do complete).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3432a9e8e7dedebbaa597ae4758091e7240b4f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
