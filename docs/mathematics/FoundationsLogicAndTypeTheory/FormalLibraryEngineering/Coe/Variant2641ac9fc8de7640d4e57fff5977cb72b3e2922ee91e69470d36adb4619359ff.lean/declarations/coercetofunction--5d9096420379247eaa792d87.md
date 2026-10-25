# coerceToFunction?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ee67288612164673b68e9ecfa591d35be822442424187e9233851e182d2c2f7",
  "kind": "def",
  "lexical_name": "coerceToFunction?",
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
  "slug": "coercetofunction--5d9096420379247eaa792d87",
  "source": {
    "blob": "2590b7f7491eaae9ee6bfc15c31576b5a0fe4473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d9096420379247eaa792d8781fa4e963eccd22f5d3918b7efe3d03b271929f7",
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

Occurrence: `declaration:4ee67288612164673b68e9ecfa591d35be822442424187e9233851e182d2c2f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coerceToFunction? (expr : Expr) : MetaM (Option Expr) := do
  -- constructing expression manually because mkAppM wouldn't assign universe mvars
  let α ← inferType expr
  let u ← getLevel α
  let v ← mkFreshLevelMVar
  let γ ← mkFreshExprMVar (← mkArrow α (mkSort v))
  let .some inst ← trySynthInstance (mkApp2 (.const ``CoeFun [u,v]) α γ) | return none
  let (expanded, _) ← expandCoe (mkApp4 (.const ``CoeFun.coe [u,v]) α γ inst expr)
  unless (← whnf (← inferType expanded)).isForall do
    throwError m!"Failed to coerce{indentExpr expr}\nto a function: After applying `CoeFun.coe`, result is still not a function{indentExpr expanded}"
      ++ .hint' m!"This is often due to incorrect `CoeFun` instances; the synthesized instance was{indentExpr inst}"
  return expanded

/-- Coerces `expr` to a type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2590b7f7491eaae9ee6bfc15c31576b5a0fe4473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
