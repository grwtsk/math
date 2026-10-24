# MonadControl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cd7cccd4a7cf066582069da768d8aad32086ac3d8d838195de5284623d4a491",
  "kind": "class",
  "lexical_name": "MonadControl",
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
  "slug": "monadcontrol--ab5f430190c28699d3006ffc",
  "source": {
    "blob": "0086ae6fc157d38e8c76d36224bbd352c692cdc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab5f430190c28699d3006ffc62dc15f4d5535f355124d8f5f096f6f201ee9820",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cd7cccd4a7cf066582069da768d8aad32086ac3d8d838195de5284623d4a491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonadControl (m : semiOutParam (Type u → Type v)) (n : Type u → Type w) where
  /--
  A type that can be used to reconstruct both a returned value and any state used by the outer
  monad.
  -/
  stM      : Type u → Type u
  /--
  Lifts an action from the inner monad `m` to the outer monad `n`. The inner monad has access to a
  reverse lifting operator that can run an `n` action, returning a value and state together.
  -/
  liftWith : {α : Type u} → (({β : Type u} → n β → m (stM β)) → m α) → n α
  /--
  Lifts a monadic action that returns a state and a value in the inner monad to an action in the
  outer monad. The extra state information is used to restore the results of effects from the
  reverse lift passed to `liftWith`'s parameter.
  -/
  restoreM : {α : Type u} → m (stM α) → n α

attribute [reducible] MonadControl.stM

/--
A way to lift a computation from one monad to another while providing the lifted computation with a
means of interpreting computations from the outer monad. This provides a means of lifting
higher-order operations automatically.

Clients should typically use `control` or `controlAt`, which request an instance of `MonadControlT`:
the reflexive, transitive closure of `MonadControl`. New instances should be defined for
`MonadControl` itself.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0086ae6fc157d38e8c76d36224bbd352c692cdc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
