# parIterGreedy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf021d5624115f6b0a012e32392c84c8c8d56949f26c1ab3677018e92f1d8769",
  "kind": "def",
  "lexical_name": "parIterGreedy",
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
  "slug": "paritergreedy--6dd481f3b7c51761e2733d37",
  "source": {
    "blob": "3432a9e8e7dedebbaa597ae4758091e7240b4f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 606,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dd481f3b7c51761e2733d37c533d5e604d26c0d929f33552f44df40eb0bfed3",
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

Occurrence: `declaration:bf021d5624115f6b0a012e32392c84c8c8d56949f26c1ab3677018e92f1d8769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parIterGreedy {α : Type} (jobs : List (TacticM α)) :=
  (·.2) <$> parIterGreedyWithCancel jobs

/--
Runs a list of TacticM computations in parallel and collects results in the original order,
including the saved state after each task completes.

Unlike `parIter`, this waits for all tasks to complete and returns results
in the same order as the input list, not in completion order.

Results are wrapped in `Except Exception (α × Tactic.SavedState)` so that errors in individual
tasks don't stop the collection - you can observe all results including which tasks failed.

The final TacticM state is restored to the initial state (before tasks ran).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3432a9e8e7dedebbaa597ae4758091e7240b4f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
