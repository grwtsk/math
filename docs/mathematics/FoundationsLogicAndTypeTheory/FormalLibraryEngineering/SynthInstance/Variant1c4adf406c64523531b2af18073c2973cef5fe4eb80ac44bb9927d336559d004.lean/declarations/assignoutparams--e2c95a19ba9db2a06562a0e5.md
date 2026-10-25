# assignOutParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a44eaa06b1681f2c459ef72fc0addce0c941c188c30f87c797b810a86fcf6886",
  "kind": "def",
  "lexical_name": "assignOutParams",
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
  "slug": "assignoutparams--e2c95a19ba9db2a06562a0e5",
  "source": {
    "blob": "450d8edb60c648a3145eb1d9c2a410f4644debe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 825,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2c95a19ba9db2a06562a0e543f6a1e52501042536565179ab24c5c413ee42a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a44eaa06b1681f2c459ef72fc0addce0c941c188c30f87c797b810a86fcf6886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 825–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def assignOutParams (type : Expr) (result : Expr) : MetaM Bool := do
  let resultType ← inferType result
  /-
  Output parameters of local instances may be marked as `syntheticOpaque` by the application-elaborator.
  We use `withAssignableSyntheticOpaque` to make sure this kind of parameter can be assigned by the following `isDefEq`.
  TODO: rewrite this check to avoid `withAssignableSyntheticOpaque`.

  **Note**: We tried to remove `withDefault` at the following `isDefEq` because it was a potential performance footgun. TC is supposed to unfold only `reducible` definitions and `instances`.
  We reverted the change because it triggered thousands of failures related to the `OrderDual` type. Example:
  ```
  variable {ι : Type}
  def OrderDual (α : Type) : Type := α
  instance [I : DecidableEq ι] : DecidableEq (OrderDual ι) := inferInstance -- Failure
  ```
  Mathlib developers are currently trying to refactor the `OrderDual` declaration,
  but it will take time. We will try to remove the `withDefault` again after the refactoring.
  -/
  let defEq ← withDefault <| withAssignableSyntheticOpaque <| isDefEq type resultType
  unless defEq do
    trace[Meta.synthInstance] "{crossEmoji} result type{indentExpr resultType}\nis not definitionally equal to{indentExpr type}"
  return defEq

/--
Returns `true` if the `check` at `applyAbstractResult?` may have observable side effects
for `result`. The unifications performed by the check operate on expressions derived from
`result` itself, from the types (and values) of its free variables, and from constant type
schemes instantiated with `result`'s own universe levels. Thus, if no metavariable is
reachable through `result` or through the (transitive) types and values of its free
variables, every unification is between ground expressions and cannot assign anything, so
the check is redundant. Note that mere absence of metavariables in `result` is not enough:
in issue #796, the universe constraint flows through the type `E.{?v} a` of a local
instance occurring in `result`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean#L825).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450d8edb60c648a3145eb1d9c2a410f4644debe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
