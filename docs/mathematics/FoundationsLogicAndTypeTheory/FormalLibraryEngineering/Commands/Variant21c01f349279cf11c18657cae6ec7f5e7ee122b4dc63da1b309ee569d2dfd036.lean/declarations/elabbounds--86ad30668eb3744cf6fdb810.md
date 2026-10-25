# elabBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62a2550d334a5826b57185cbfbcb1dd705d989b74f31343206e5189cdbf61830",
  "kind": "def",
  "lexical_name": "elabBounds",
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
  "slug": "elabbounds--86ad30668eb3744cf6fdb810",
  "source": {
    "blob": "8ed0e55669afd09c6c89af2b58a88c6b3ca2b29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 330,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86ad30668eb3744cf6fdb810a4a1aaa0b0082480eb7841adca34b4d5248ace85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62a2550d334a5826b57185cbfbcb1dd705d989b74f31343206e5189cdbf61830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def elabBounds : CommandElab := fun stx => do
  match stx with
  | `(command| #bounds $func on $dom $[precision $prec]?) =>
    liftTermElabM do
      let funcExpr ← elabTerm func none
      let funcExpr ← instantiateMVars funcExpr
      let ast ← reify funcExpr
      let box ← parseBox dom
      let taylorDepth := match prec with
        | some n => n.getNat
        | none => 10

      let optCfg : GlobalOptConfig := {
        maxIterations := 1000,
        tolerance := 1/1000,
        taylorDepth := taylorDepth,
        useMonotonicity := true
      }

      let astVal ← Meta.evalExpr LExpr (mkConst ``LeanCert.Core.Expr) ast
      let minResult := globalMinimizeCore astVal box optCfg
      let maxResult := globalMaximizeCore astVal box optCfg

      logInfo m!"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
#bounds Results
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  f(x) ∈ [{formatRat minResult.bound.lo}, {formatRat maxResult.bound.hi}]

  Minimum: {formatRat minResult.bound.lo} (± {formatRat (minResult.bound.hi - minResult.bound.lo)})
  Maximum: {formatRat maxResult.bound.hi} (± {formatRat (maxResult.bound.hi - maxResult.bound.lo)})

  Total iterations: {minResult.bound.iterations + maxResult.bound.iterations}
  Verified: ✓
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  | _ => throwUnsupportedSyntax

/-! ## #eval_interval Command -/

/-- Syntax for quick interval evaluation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ed0e55669afd09c6c89af2b58a88c6b3ca2b29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
