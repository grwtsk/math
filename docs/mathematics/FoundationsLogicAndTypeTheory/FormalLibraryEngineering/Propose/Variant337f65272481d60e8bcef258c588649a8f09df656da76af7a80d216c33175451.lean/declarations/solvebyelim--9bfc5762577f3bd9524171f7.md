# solveByElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04f4e8eee47e72d38f3cc6728ab1b9920c676d9604ffb9a9a68f46755b127c51",
  "kind": "def",
  "lexical_name": "solveByElim",
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
  "slug": "solvebyelim--9bfc5762577f3bd9524171f7",
  "source": {
    "blob": "c0480409531a2275093667ba00ce02e9a98442a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant337f65272481d60e8bcef258c588649a8f09df656da76af7a80d216c33175451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bfc5762577f3bd9524171f780b94db960a73acf2e01c710fd93ade70a148199",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant337f65272481d60e8bcef258c588649a8f09df656da76af7a80d216c33175451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04f4e8eee47e72d38f3cc6728ab1b9920c676d9604ffb9a9a68f46755b127c51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solveByElim (orig : MVarId) (goals : Array MVarId) (use : Array Expr) (required : Array Expr)
    (depth) := do
  let cfg : SolveByElimConfig :=
    { maxDepth := depth, exfalso := true, symm := true, intro := false }
  let cfg := if !required.isEmpty then
    cfg.testSolutions (fun _ => do
    let r ← instantiateMVars (.mvar orig)
    pure <| required.all fun e => e.occurs r)
  else
    cfg
  let cfg := cfg.synthInstance
  _ ← SolveByElim.solveByElim
    cfg (use.toList.map pure) (fun _ => return (← getLocalHyps).toList) goals.toList

/--
Attempts to find lemmas which use all of the `required` expressions as arguments, and
can be unified with the given `type` (which may contain metavariables, which we avoid assigning).
We look up candidate lemmas from a discrimination tree using the first such expression.

Returns an array of pairs, containing the names of found lemmas and the resulting application.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant337f65272481d60e8bcef258c588649a8f09df656da76af7a80d216c33175451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant337f65272481d60e8bcef258c588649a8f09df656da76af7a80d216c33175451.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0480409531a2275093667ba00ce02e9a98442a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
