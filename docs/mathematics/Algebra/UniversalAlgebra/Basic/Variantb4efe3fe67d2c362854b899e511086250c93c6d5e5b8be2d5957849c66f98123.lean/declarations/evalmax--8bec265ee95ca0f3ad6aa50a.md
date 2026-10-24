# evalMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c41a6c4f945e4d630ba869a3a81c5b24064c5dff15a4d92e2bc7461b8fc028b4",
  "kind": "def",
  "lexical_name": "evalMax",
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
  "slug": "evalmax--8bec265ee95ca0f3ad6aa50a",
  "source": {
    "blob": "5cf26035ad225746e6ff5b8c3e088434befee3dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 123,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bec265ee95ca0f3ad6aa50a87f3db8a3b135ba65ec3b90050dd21794af7ac2e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c41a6c4f945e4d630ba869a3a81c5b24064c5dff15a4d92e2bc7461b8fc028b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[positivity max _ _] def evalMax : PositivityExt where eval {u α} zα pα e := do
  let .app (.app (f : Q($α → $α → $α)) (a : Q($α))) (b : Q($α)) ← withReducible (whnf e)
    | throwError "not max"
  let _e_eq : $e =Q $f $a $b := ⟨⟩
  let _a ← synthInstanceQ q(LinearOrder $α)
  assumeInstancesCommute
  let ⟨_f_eq⟩ ← withDefault <| withNewMCtxDepth <| assertDefEqQ q($f) q(max)
  let result : Strictness zα pα e ← catchNone do
    let ra ← core zα pα a
    match ra with
    | .positive pa => pure (.positive q(lt_max_of_lt_left $pa))
    | .nonnegative pa => pure (.nonnegative q(le_max_of_le_left $pa))
    -- If `a ≠ 0`, we might prove `max a b ≠ 0` if `b ≠ 0` but we don't want to evaluate
    -- `b` before having ruled out `0 < a`, for performance. So we do that in the second branch
    -- of the `orElse'`.
    | _ => pure .none
  orElse result do
    let rb ← core zα pα b
    match rb with
    | .positive pb => pure (.positive q(lt_max_of_lt_right $pb))
    | .nonnegative pb => pure (.nonnegative q(le_max_of_le_right $pb))
    | .nonzero pb => do
      match ← core zα pα a with
      | .nonzero pa => pure (.nonzero q(max_ne $pa $pb))
      | _ => pure .none
    | _ => pure .none

/-- The `positivity` extension which identifies expressions of the form `a + b`,
such that `positivity` successfully recognises both `a` and `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cf26035ad225746e6ff5b8c3e088434befee3dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
