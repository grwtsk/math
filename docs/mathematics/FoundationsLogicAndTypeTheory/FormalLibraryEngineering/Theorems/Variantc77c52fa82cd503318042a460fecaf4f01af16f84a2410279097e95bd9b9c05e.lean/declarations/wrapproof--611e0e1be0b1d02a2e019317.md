# wrapProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00c63d5abb0b6cd620d98cec4f5145c34182460114dbc8131802d6c80be7f70c",
  "kind": "def",
  "lexical_name": "wrapProof",
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
  "slug": "wrapproof--611e0e1be0b1d02a2e019317",
  "source": {
    "blob": "4c6dd42379a724d24e85f90ddb9bb7fc233de3e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantc77c52fa82cd503318042a460fecaf4f01af16f84a2410279097e95bd9b9c05e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:611e0e1be0b1d02a2e019317c5332eaa7971dde0f1af3e4127b8f8cfc2fdd919",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantc77c52fa82cd503318042a460fecaf4f01af16f84a2410279097e95bd9b9c05e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00c63d5abb0b6cd620d98cec4f5145c34182460114dbc8131802d6c80be7f70c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def wrapProof (numVars : Nat) (expr : Expr) (adaptation : EqAdaptation) : MetaM Expr :=
  match adaptation with
  | .eq => return expr
  | .eqFalse =>
    wrapInner numVars expr fun h => mkAppM ``eq_false #[h]
  | .iff =>
    wrapInner numVars expr fun h => mkAppM ``propext #[h]
  | .eqTrue =>
    wrapInner numVars expr fun h => mkAppM ``eq_true #[h]
where
  /-- Wraps the innermost application of `expr` (after `numVars` arguments) with `wrap`. -/
  wrapInner (numVars : Nat) (expr : Expr) (wrap : Expr → MetaM Expr) : MetaM Expr := do
    let type ← inferType expr
    forallBoundedTelescope type numVars fun xs _ => do
      let h := mkAppN expr xs
      mkLambdaFVars xs (← wrap h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantc77c52fa82cd503318042a460fecaf4f01af16f84a2410279097e95bd9b9c05e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantc77c52fa82cd503318042a460fecaf4f01af16f84a2410279097e95bd9b9c05e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6dd42379a724d24e85f90ddb9bb7fc233de3e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
