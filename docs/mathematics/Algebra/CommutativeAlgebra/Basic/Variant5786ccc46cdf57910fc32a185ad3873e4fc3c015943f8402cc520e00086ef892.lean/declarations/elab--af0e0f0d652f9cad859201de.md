# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c965ff67b7d00a4e82f74a3b552c8a1e33a1f8eac54f0df576f0bd2c8570857",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--af0e0f0d652f9cad859201de",
  "source": {
    "blob": "331e9c201b5fbff1b5065d223d6d2e6a3251b3ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 115,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant5786ccc46cdf57910fc32a185ad3873e4fc3c015943f8402cc520e00086ef892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af0e0f0d652f9cad859201de825181ce80aa6afa4f00e45f4f05f0fa6d4f97c4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant5786ccc46cdf57910fc32a185ad3873e4fc3c015943f8402cc520e00086ef892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c965ff67b7d00a4e82f74a3b552c8a1e33a1f8eac54f0df576f0bd2c8570857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab (name := polynomial) "polynomial" tk:"!"? : tactic =>
  withMainContext do
    let g ← getMainGoal
    let some (α, _, _) := (← whnfR <|← instantiateMVars <|← g.getType).eq?
      | throwError "polynomial failed: not an equality"
    let mut β : Expr := default
    try
      β ← Polynomial.inferBase α
    catch _ =>
      throwError "polynomial failed: not an equality of (mv)polynomials"
    let some g ← transformAtTarget (fun e _ ↦ Polynomial.preprocess e) "polynomial" .silent g
      default | done
    let some g ← transformAtTarget (fun e _ ↦ Algebra.preprocess e) "polynomial" .silent g
      default | done
    AtomM.run (if tk.isSome then .default else .reducible)
      (Algebra.proveEq (some (← getLevelQ' β)) g)

@[tactic_alt polynomial]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant5786ccc46cdf57910fc32a185ad3873e4fc3c015943f8402cc520e00086ef892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant5786ccc46cdf57910fc32a185ad3873e4fc3c015943f8402cc520e00086ef892.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331e9c201b5fbff1b5065d223d6d2e6a3251b3ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
