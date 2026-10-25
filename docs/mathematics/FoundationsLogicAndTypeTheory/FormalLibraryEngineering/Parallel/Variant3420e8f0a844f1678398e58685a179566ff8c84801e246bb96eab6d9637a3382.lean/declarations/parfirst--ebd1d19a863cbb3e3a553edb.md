# parFirst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f352807ea9ff653f8001bae7283d509e657483e975a99ce780f1914d8bb7a40f",
  "kind": "def",
  "lexical_name": "parFirst",
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
  "slug": "parfirst--ebd1d19a863cbb3e3a553edb",
  "source": {
    "blob": "cec4152d5fb7be953a030cb315706242cf7a2a86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 517,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebd1d19a863cbb3e3a553edbae0cab4c0070cfc940e56f8828829b781df36f6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f352807ea9ff653f8001bae7283d509e657483e975a99ce780f1914d8bb7a40f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parFirst {α : Type} (jobs : List (TermElabM α)) (cancel : Bool := true) : TermElabM α := do
  let (cancelHook, iter) ← parIterGreedyWithCancel jobs
  for result in iter do
    match result with
    | .ok value =>
      if cancel then cancelHook
      return value
    | .error _ => continue
  throwError "All parallel tasks failed"

end Lean.Elab.Term.TermElabM

namespace Lean.Elab.Tactic.TacticM

open Std.Iterators

/--
Runs a list of TacticM computations in parallel and returns:
* a combined cancellation hook for all tasks, and
* an iterator that yields results in original order.

The iterator runs in TacticM, and as it yields each result, it updates the TacticM state
to reflect the state when that particular task completed. This means the state is
threaded through the iteration in the order of the original list.

Results are wrapped in `Except Exception α` so that errors in individual tasks don't stop
the iteration - you can observe all results including which tasks failed.

The iterator will terminate after all jobs complete (assuming they all do complete).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cec4152d5fb7be953a030cb315706242cf7a2a86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
