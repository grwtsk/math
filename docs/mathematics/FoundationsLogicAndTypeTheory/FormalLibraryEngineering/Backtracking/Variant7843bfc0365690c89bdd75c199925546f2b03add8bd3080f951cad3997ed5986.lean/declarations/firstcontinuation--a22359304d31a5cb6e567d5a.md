# firstContinuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4db32965f58ccc2162b0e6d9afd1c31399b7326e3bf37cb56cd160b678d3e6d1",
  "kind": "def",
  "lexical_name": "firstContinuation",
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
  "slug": "firstcontinuation--a22359304d31a5cb6e567d5a",
  "source": {
    "blob": "984691ce69a73bca2b2d3285b2fc228c502fe71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a22359304d31a5cb6e567d5abc854c3465f2a39aa5027f8fce325e6f6f15f1fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4db32965f58ccc2162b0e6d9afd1c31399b7326e3bf37cb56cd160b678d3e6d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def firstContinuation (results : MVarId → MetaM (List (MetaM (List MVarId))))
    (cont : List MVarId → MetaM α) (g : MVarId) : MetaM α := do
  (← results g).firstM fun r => do cont (← r)

end Lean.MVarId

namespace Mathlib.Tactic

/--
Configuration structure to control the behaviour of `backtrack`:
* control the maximum depth and behaviour (fail or return subgoals) at the maximum depth,
* and hooks allowing
  * modifying intermediate goals before running the external tactic,
  * 'suspending' goals, returning them in the result, and
  * discharging subgoals if the external tactic fails.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984691ce69a73bca2b2d3285b2fc228c502fe71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
