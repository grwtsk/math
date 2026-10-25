# applyFirstLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f6e2a3e134de18caa3498ad4d51928812a11fdacb7164277c64031a80ddacad",
  "kind": "def",
  "lexical_name": "applyFirstLemma",
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
  "slug": "applyfirstlemma--a0f5c0f63aaaa7ae5cc5fbd0",
  "source": {
    "blob": "c5b3589c48a07965b5a4d3be497d2d1a935f4d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0f5c0f63aaaa7ae5cc5fbd08f65296b30b6c0c618556e7d744d20f5f7578707",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f6e2a3e134de18caa3498ad4d51928812a11fdacb7164277c64031a80ddacad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyFirstLemma (cfg : Config) (lemmas : List (TermElabM Expr)) (ctx : TermElabM (List Expr))
    (g : MVarId) : MetaM (List MVarId) := do
-- We handle `cfg.symm` by saturating hypotheses of all goals using `symm`.
-- This has better performance that the mathlib3 approach.
let g ← if cfg.symm then g.symmSaturate else pure g
let es ← elabContextLemmas g lemmas ctx
applyFirst cfg.toApplyConfig cfg.transparency es g

/--
Solve a collection of goals by repeatedly applying lemmas, backtracking as necessary.

Arguments:
* `cfg : Config` additional configuration options
  (options for `apply`, maximum depth, and custom flow control)
* `lemmas : List (TermElabM Expr)` lemmas to apply.
  These are thunks in `TermElabM` to avoid stuck metavariables.
* `ctx : TermElabM (List Expr)` monadic function returning the local hypotheses to use.
* `goals : List MVarId` the initial list of goals for `solveByElim`

Returns a list of suspended goals, if it succeeded on all other subgoals.
By default `cfg.suspend` is `false,` `cfg.discharge` fails, and `cfg.failAtMaxDepth` is `true`,
and so the returned list is always empty.
Custom wrappers (e.g. `apply_assumption` and `apply_rules`) may modify this behaviour.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b3589c48a07965b5a4d3be497d2d1a935f4d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
