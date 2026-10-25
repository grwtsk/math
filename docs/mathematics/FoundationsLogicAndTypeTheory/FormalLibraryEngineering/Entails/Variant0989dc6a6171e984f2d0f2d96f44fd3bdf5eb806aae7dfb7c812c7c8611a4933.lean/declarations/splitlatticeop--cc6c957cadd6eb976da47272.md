# splitLatticeOp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a87b3b8ff135f495e610f94a8435a2cf4fdd97a14653ecb5828f772dd0f50b4",
  "kind": "def",
  "lexical_name": "splitLatticeOp?",
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
  "slug": "splitlatticeop--cc6c957cadd6eb976da47272",
  "source": {
    "blob": "d4ac6a88051cf9f652105bdf42d84c8319d5c110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc6c957cadd6eb976da47272c2a195f024f53f0bde534f43732beda40bd67d71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a87b3b8ff135f495e610f94a8435a2cf4fdd97a14653ecb5828f772dd0f50b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def splitLatticeOp? (goal : MVarId) (rhs : Expr) :
    VCGenM (Option (List MVarId)) := do
  -- Refold a meet upper adjoint to `F ⇨ Q` up front, so the dispatch below takes the clean `⇨` path.
  let (goal, rhs) := (← refoldHimpUpperAdjoint? goal rhs).getD (goal, rhs)
  let some headName := rhs.getAppFn.constName? | return none
  -- A split applies only for a built-in connective or a registered frame operator.
  let some op := (← read).latticeOps[headName]? | return none
  let rule ← mkLatticeOpRuleCached rhs op
  match ← rule.applyChecked goal with
  | .goals goals => return some goals
  | .failed => return none

/--
Reduce a precondition that is the bare top applied to the state arguments introduced by
`le_of_forall_le`, `(⊤ : σ₁ → … → σₙ → Prop) s₁ … sₙ`, to the bare `(⊤ : Prop)`, rewriting `goal`'s
target `pre ⊑ rhs` to `⊤ ⊑ rhs`. The equation `pre = ⊤` is built on demand by folding
`Lean.Order.top_apply` over the excess arguments (mirroring `replaceEPostHeadBot?`'s `bot_apply`
fold) and applied with `replaceTargetEq`.

The proof term is built directly with `mkApp`/`mkConst` and instances extracted from `pre`, avoiding
`mkAppM`/instance synthesis (both expensive and unable to unify `max`-of-universe-variable instance
levels in the abstract-monad setting). Returns `none` if `pre` is not the bare top applied to ≥ 1
argument, or its lattice instances are not in the expected `instCompleteLatticePi` shape (the caller
then falls through).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4ac6a88051cf9f652105bdf42d84c8319d5c110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
