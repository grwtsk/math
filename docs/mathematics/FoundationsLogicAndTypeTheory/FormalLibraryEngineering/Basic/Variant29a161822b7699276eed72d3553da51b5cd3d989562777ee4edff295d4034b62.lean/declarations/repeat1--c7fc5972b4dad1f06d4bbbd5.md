# repeat1'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6830a85ebc1790e8a447594d4f4357ea22aa624bbcd790a79b41486d3393320b",
  "kind": "def",
  "lexical_name": "repeat1'",
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
  "slug": "repeat1--c7fc5972b4dad1f06d4bbbd5",
  "source": {
    "blob": "2c203b5c6891867487729c1852f5847977b56231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 420,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7fc5972b4dad1f06d4bbbd55469ad9eb2fda73a036b5d13c840c9e1f4739202",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6830a85ebc1790e8a447594d4f4357ea22aa624bbcd790a79b41486d3393320b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def repeat1' [Monad m] [MonadError m] [MonadExcept ε m] [MonadBacktrack s m] [MonadMCtx m]
    (f : MVarId → m (List MVarId)) (gs : List MVarId) (maxIters := 100000) : m (List MVarId) := do
  let (.true, gs) ← repeat'Core f gs maxIters | throwError "repeat1' made no progress"
  pure gs

/--
`saturate1 goal tac` runs `tac` on `goal`, then on the resulting goals, etc.,
until `tac` does not apply to any goal any more (i.e. it returns `none`). The
order of applications is depth-first, so if `tac` generates goals `[g₁, g₂, ⋯]`,
we apply `tac` to `g₁` and recursively to all its subgoals before visiting `g₂`.
If `tac` does not apply to `goal`, `saturate1` returns `none`. Otherwise it
returns the generated subgoals to which `tac` did not apply. `saturate1`
respects the `MonadRecDepth` recursion limit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c203b5c6891867487729c1852f5847977b56231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
