# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36a69fdf6cd57a5449dcba9b1e45385949e0ecb84ea4af22329cee764efbefc2",
  "kind": "example",
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
  "slug": "example--107e2feb19315e81de8d85b6",
  "source": {
    "blob": "a8b442e22582bb19489966323ad6bcdaf113328e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1094,
    "line": 1078,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant9b17fba6cd00179a4b8d6d5cd3737e1cc732d753c2b2bf1bfa6e540c86fcf8b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:107e2feb19315e81de8d85b60f83848bea8f3011bfc5feb412a1df207dd112ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant9b17fba6cd00179a4b8d6d5cd3737e1cc732d753c2b2bf1bfa6e540c86fcf8b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36a69fdf6cd57a5449dcba9b1e45385949e0ecb84ea4af22329cee764efbefc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1078–1094.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (h : false) (x y : { x : Fin (Nat.add 3 0) // 1 + 1 = 2 }) : myTypeDef.A = Unit := by
  simp only [myTypeDef_A]
  guard_target = { _x : Fin 3 // True } = Unit
  /- note: calling only one of `simp` or `dsimp` does not produce the current target
  as the following tests show. -/
  fail_if_success { guard_hyp x : { _x : Fin 3 // true } }
  dsimp at x
  fail_if_success { guard_hyp x : { _x : Fin 3 // true } }
  simp at y
  fail_if_success { guard_hyp y : { _x : Fin 3 // true } }
  simp at x
  guard_hyp x : { _x : Fin 3 // True }
  guard_hyp y : { _x : Fin 3 // True }
  contradiction

-- test that `to_additive` works with a custom name
@[to_additive (attr := simps) some_test2]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant9b17fba6cd00179a4b8d6d5cd3737e1cc732d753c2b2bf1bfa6e540c86fcf8b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant9b17fba6cd00179a4b8d6d5cd3737e1cc732d753c2b2bf1bfa6e540c86fcf8b1.lean#L1078).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b442e22582bb19489966323ad6bcdaf113328e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
