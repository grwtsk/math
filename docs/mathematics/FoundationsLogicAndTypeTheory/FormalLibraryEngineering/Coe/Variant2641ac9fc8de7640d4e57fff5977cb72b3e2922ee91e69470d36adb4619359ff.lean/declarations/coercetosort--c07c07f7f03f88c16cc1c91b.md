# coerceToSort?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ccc87e0e3341a4451a7e1db6f30505986b61a27f9885566ef1f1ee36c24ec76",
  "kind": "def",
  "lexical_name": "coerceToSort?",
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
  "slug": "coercetosort--c07c07f7f03f88c16cc1c91b",
  "source": {
    "blob": "2590b7f7491eaae9ee6bfc15c31576b5a0fe4473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c07c07f7f03f88c16cc1c91b11010468029ae6dc43ae62515173041d157f3f8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ccc87e0e3341a4451a7e1db6f30505986b61a27f9885566ef1f1ee36c24ec76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coerceToSort? (expr : Expr) : MetaM (Option Expr) := do
  -- constructing expression manually because mkAppM wouldn't assign universe mvars
  let α ← inferType expr
  let u ← getLevel α
  let v ← mkFreshLevelMVar
  let β ← mkFreshExprMVar (mkSort v)
  let .some inst ← trySynthInstance (mkApp2 (.const ``CoeSort [u,v]) α β) | return none
  let (expanded, _) ← expandCoe (mkApp4 (.const ``CoeSort.coe [u,v]) α β inst expr)
  unless (← whnf (← inferType expanded)).isSort do
    throwError m!"Failed to coerce{indentExpr expr}\nto a type: After applying `CoeSort.coe`, result is still not a type{indentExpr expanded}"
      ++ .hint' m!"This is often due to incorrect `CoeSort` instances; the synthesized instance was{indentExpr inst}"
  return expanded

/-- Return `some (m, α)` if `type` can be reduced to an application of the form `m α` using `[reducible]` transparency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2590b7f7491eaae9ee6bfc15c31576b5a0fe4473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
