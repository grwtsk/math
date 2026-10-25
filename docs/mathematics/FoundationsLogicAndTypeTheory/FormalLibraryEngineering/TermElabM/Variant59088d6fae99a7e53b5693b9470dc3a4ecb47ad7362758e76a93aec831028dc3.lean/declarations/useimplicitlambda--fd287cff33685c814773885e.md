# useImplicitLambda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70e4101210bb10b3a4af2e934e9aa98a2fbb717538a6993e5bfde5bb8f816333",
  "kind": "def",
  "lexical_name": "useImplicitLambda",
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
  "slug": "useimplicitlambda--fd287cff33685c814773885e",
  "source": {
    "blob": "872babc942fe96b14ef803da94e7e2245f8a08ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1788,
    "line": 1751,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd287cff33685c814773885ecbd0150692da4be83be05122a51d2c04329000be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70e4101210bb10b3a4af2e934e9aa98a2fbb717538a6993e5bfde5bb8f816333`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1751–1788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def useImplicitLambda (stx : Syntax) (expectedType? : Option Expr) : TermElabM UseImplicitLambdaResult := do
  if blockImplicitLambda stx then
    return .no
  let some expectedType := expectedType? | return .no
  if hasNoImplicitLambdaAnnotation expectedType then
    return .no
  let expectedType ← whnfForall expectedType
  let .forallE _ _ _ c := expectedType | return .no
  unless c.isImplicit || c.isInstImplicit do
    return .no
  if let some x ← isLocalIdent? stx then
    if (← isMVarApp (← inferType x)) then
      /-
      If `stx` is a local variable without type information, then adding implicit lambdas makes elaboration fail.
      We should try to postpone elaboration until the type of the local variable becomes available, or disable
      implicit lambdas if we cannot postpone anymore.
      Here is an example where this special case is useful.
      ```
      def foo2mk (_ : ∀ {α : Type} (a : α), a = a) : nat := 37
      example (x) : foo2mk x = foo2mk x := rfl
      ```
      The example about would fail without this special case.
      The expected type would be `(a : α✝) → a = a`, where `α✝` is a new free variable introduced by the implicit lambda.
      Now, let `?m` be the type of `x`. Then, the constraint `?m =?= (a : α✝) → a = a` cannot be solved using the
      assignment `?m := (a : α✝) → a = a` since `α✝` is not in the scope of `?m`.

      Note that, this workaround does not prevent the following example from failing.
      ```
      example (x) : foo2mk (id x) = 37 := rfl
      ```
      The user can write
      ```
      example (x) : foo2mk (id @x) = 37 := rfl
      ```
      -/
      return .postpone
  return .yes expectedType

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean#L1751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872babc942fe96b14ef803da94e7e2245f8a08ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
