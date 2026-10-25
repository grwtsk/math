# evalApplyRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60c22901f52aa656a2528832badc5e8634962f1fa88063bb1885ed3c7f5334d6",
  "kind": "def",
  "lexical_name": "evalApplyRules",
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
  "slug": "evalapplyrules--8136f1aedc1d86137ed1b7a7",
  "source": {
    "blob": "8ea60a6e37fb9ab89f1e2a850fc0c97bad75f399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantc06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8136f1aedc1d86137ed1b7a7bb4ea0e30c67204f66454f8939e9d178de8854f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantc06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60c22901f52aa656a2528832badc5e8634962f1fa88063bb1885ed3c7f5334d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalApplyRules : Tactic := fun stx =>
  match stx with
  | `(tactic| apply_rules $cfg:optConfig $[only%$o]? $[$t:args]? $[$use:using_]?) => do
    let (star, add, remove) := parseArgs t
    let use := parseUsing use
    let cfg ← elabApplyRulesConfig cfg
    let cfg := { cfg with backtracking := false }
    liftMetaTactic fun g => processSyntax cfg o.isSome star add remove use [g]
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.solveByElim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantc06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantc06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ea60a6e37fb9ab89f1e2a850fc0c97bad75f399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
