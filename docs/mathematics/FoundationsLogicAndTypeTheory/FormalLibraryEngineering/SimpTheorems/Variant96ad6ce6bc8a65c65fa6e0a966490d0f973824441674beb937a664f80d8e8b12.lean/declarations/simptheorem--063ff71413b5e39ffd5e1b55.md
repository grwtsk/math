# SimpTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eedcb4af5f15450e7e91ce35a32a05f32c4ca4e7abc670240677f758624d51e",
  "kind": "structure",
  "lexical_name": "SimpTheorem",
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
  "slug": "simptheorem--063ff71413b5e39ffd5e1b55",
  "source": {
    "blob": "6cf6e9e19687239e0524540d7f004f81f941f560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:063ff71413b5e39ffd5e1b55682e7d1f070185b0e46a2444b5849278cf13d7a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8eedcb4af5f15450e7e91ce35a32a05f32c4ca4e7abc670240677f758624d51e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SimpTheorem where
  keys        : Array SimpTheoremKey := #[]
  /--
    It stores universe parameter names for universe polymorphic proofs.
    Recall that it is non-empty only when we elaborate an expression provided by the user.
    When `proof` is just a constant, we can use the universe parameter names stored in the declaration.
   -/
  levelParams : Array Name := #[]
  proof       : Expr
  priority    : Nat  := eval_prio default
  post        : Bool := true
  /-- `perm` is true if lhs and rhs are identical modulo permutation of variables. -/
  perm        : Bool := false
  /--
    `origin` is mainly relevant for producing trace messages.
    It is also viewed an `id` used to "erase" `simp` theorems from `SimpTheorems`.
  -/
  origin      : Origin
  /--
  `rfl` is true if `proof` is by `Eq.refl`, `rfl` or a `@[defeq]` theorem.
  -/
  rfl         : Bool
  /--
  `backwardRfl` is true if `proof` is by a `@[backward_defeq]` theorem (i.e. rfl at default,
  but not instance, transparency). Honored by `dsimp` only when
  `backward.defeqAttrib.useBackward` is set.
  -/
  backwardRfl : Bool := false
  deriving Inhabited

mutual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf6e9e19687239e0524540d7f004f81f941f560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
