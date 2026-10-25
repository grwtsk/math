# tryTheoremWithHint?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c1bd8308c247c5726a9fccd291449acfb8b0b50151b6328f8e709ea67568b8e",
  "kind": "def",
  "lexical_name": "tryTheoremWithHint?",
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
  "slug": "trytheoremwithhint--1ff317ee4ca96265b389d3f1",
  "source": {
    "blob": "1bca8cc5caaa3d03f0cf8aec450079f68c678083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ff317ee4ca96265b389d3f1ccbdb6e868309f282fa649b84e255b6fee1e46b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c1bd8308c247c5726a9fccd291449acfb8b0b50151b6328f8e709ea67568b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryTheoremWithHint? (e : Expr) (thmOrigin : Origin)
    (hint : Array (Nat×Expr))
    (funProp : Expr → FunPropM (Option Result)) (newMCtxDepth : Bool := false) :
    FunPropM (Option Result) := do
  let go : FunPropM (Option Result) := do
    let thmProof ← thmOrigin.getValue
    let type ← inferType thmProof
    let (xs, _, type) ← forallMetaTelescope type

    for (i,x) in hint do
      try
        for (id,v) in hint do
          xs[id]!.mvarId!.assignIfDefEq v
      catch _ =>
        trace[Debug.Meta.Tactic.fun_prop]
          "failed to use hint {i} `{← ppExpr x} when applying theorem {← ppOrigin thmOrigin}"

    tryTheoremCore xs thmProof type e thmOrigin funProp

  -- `simp` introduces new meta variable context depth for some reason
  -- This is probably to avoid mvar assignment when trying a theorem fails
  --
  -- However, in `fun_prop` case this is not completely desirable
  -- For example, I want to be able to solve a goal with mvars like `ContDiff ℝ ?n f` using local
  -- hypothesis `(h : ContDiff ℝ ∞ f)` and assign `∞` to the mvar `?n`.
  --
  -- This could be problematic if there are two local hypothesis `(hinf : ContDiff ℝ ∞ f)` and
  -- `(h1 : ContDiff ℝ 1 f)` and apart from solving `ContDiff ℝ ?n f` there is also a subgoal
  -- `2 ≤ ?n`. If `fun_prop` decides to try `h1` first it would assign `1` to `?n` and then there
  -- is no hope solving `2 ≤ 1` and it won't be able to apply `hinf` after trying `h1` as `n?` is
  -- assigned already. Ideally `fun_prop` would roll back the `MetaM.State`. This issue did not
  -- come up yet so I didn't bother and I'm worried about the performance impact.
  if newMCtxDepth then
    withNewMCtxDepth go
  else
    go


/-- Try to apply a theorem `thmOrigin` to the goal `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bca8cc5caaa3d03f0cf8aec450079f68c678083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
