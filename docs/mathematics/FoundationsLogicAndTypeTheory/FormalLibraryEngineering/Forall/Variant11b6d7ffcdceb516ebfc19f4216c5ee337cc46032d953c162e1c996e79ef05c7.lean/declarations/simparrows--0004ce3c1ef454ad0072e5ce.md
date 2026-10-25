# simpArrows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dfe00e90755c1e131b5a5d311a036c12ae4cf881ef10b39868578762af6d83e",
  "kind": "def",
  "lexical_name": "simpArrows",
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
  "slug": "simparrows--0004ce3c1ef454ad0072e5ce",
  "source": {
    "blob": "2c18380c7045a76a295ae88e32af46b1499e3c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0004ce3c1ef454ad0072e5ce7cb754eeac8e2216e3884bce414e5d17a7c8595d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dfe00e90755c1e131b5a5d311a036c12ae4cf881ef10b39868578762af6d83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def simpArrows (e : Expr) (infos : List ArrowInfo) (simpBody : Simproc) : SimpM (Result × List ArrowInfo) := do
  match infos with
  | [] => return ((← simpBody e), [])
  | info :: infos' =>
    let_expr f@Arrow p q := e | return ((← simpBody e), infos)
    -- **cd propagation**: `cd` from `simp p` and `simp q` (via recursive `simpArrows`)
    -- must be propagated through ALL branches. Even when `p` is already False/True
    -- and hasn't changed, `cd = true` means `simp p` might take a different code path
    -- in another local context (e.g., a conditional rewrite could succeed), which would
    -- lead to a completely different result for the arrow expression.
    let p_r ← simp p
    if (← isFalseExpr (p_r.getResultExpr p)) && info.v.isZero then
      match p_r with
      | .rfl _ cd => return (.step (← getTrueExpr) (mkApp (mkConst ``false_arrow) q) (contextDependent := cd), [])
      | .step _ h _ cd => return (.step (← getTrueExpr) (mkApp3 (mkConst ``false_arrow_congr) p q h) (contextDependent := cd), [])
    let (q_r, infos') ← simpArrows q infos' simpBody
    if (← isTrueExpr (q_r.getResultExpr q)) then
      let cd := p_r.isContextDependent || q_r.isContextDependent
      match q_r with
      | .rfl _ _ => return (.step (← getTrueExpr) (mkApp (mkConst ``arrow_true [info.u]) p) (contextDependent := cd), [])
      | .step _ h _ _ => return (.step (← getTrueExpr) (mkApp3 (mkConst ``arrow_true_congr [info.u]) p q h) (contextDependent := cd), [])
    match p_r, q_r with
    | .rfl _ cd₁, .rfl _ cd₂ =>
      let cd := cd₁ || cd₂
      if (← isTrueExpr p) && info.v.isZero then
        return (.step q (mkApp (mkConst ``true_arrow) q) (contextDependent := cd), infos')
      else
        return (mkRflResultCD cd, infos)
    | .step p' h _ cd₁, .rfl _ cd₂ =>
      let cd := cd₁ || cd₂
      if (← isTrueExpr p') && info.v.isZero then
        return (.step q (mkApp3 (mkConst ``true_arrow_congr_left) p q h) (contextDependent := cd), infos')
      else
        let e' ← mkAppS₂ f p' q
        let proof := mkApp4 (mkConst ``arrow_congr_left f.constLevels!) p p' q h
        return (.step e' proof (contextDependent := cd), info :: infos')
    | .rfl _ cd₁, .step q' h _ cd₂ =>
      let cd := cd₁ || cd₂
      if (← isTrueExpr p) && info.v.isZero then
        return (.step q' (mkApp3 (mkConst ``true_arrow_congr_right) q q' h) (contextDependent := cd), infos')
      else
        let e' ← mkAppS₂ f p q'
        let proof := mkApp4 (mkConst ``arrow_congr_right f.constLevels!) p q q' h
        return (.step e' proof (contextDependent := cd), info :: infos')
    | .step p' h₁ _ cd₁, .step q' h₂ _ cd₂ =>
      if (← isTrueExpr p') && info.v.isZero then
        return (.step q' (mkApp5 (mkConst ``true_arrow_congr) p q q' h₁ h₂) (contextDependent := cd₁ || cd₂), infos')
      else
        let e' ← mkAppS₂ f p' q'
        let proof := mkApp6 (mkConst ``arrow_congr f.constLevels!) p p' q q' h₁ h₂
        return (.step e' proof (contextDependent := cd₁ || cd₂), info :: infos')

/--
Simplifies a telescope of non-dependent arrows `p₁ → p₂ → ... → pₙ → q` by:
1. Converting to `Arrow p₁ (Arrow p₂ (... (Arrow pₙ q)))` (see `toArrow`)
2. Simplifying each `pᵢ` and `q` (see `simpArrows`)
3. Converting back to `→` form (see `toForall`)

Using `Arrow` (a definitional wrapper around `→`) avoids the quadratic proof growth that
occurs with `Expr.forallE`. With `forallE`, each nesting level bumps de Bruijn indices in
subterms, destroying sharing. For example, if each `pᵢ` contains a free variable `x`, the
de Bruijn representation of `x` differs at each depth, preventing hash-consing from
recognizing them as identical.

With `Arrow`, both arguments are explicit (not under binders), so subterms remain identical
across nesting levels and can be shared, yielding linear-sized proofs.

**Tradeoff**: This function simplifies each `pᵢ` and `q` individually, but misses
simplifications that depend on the arrow structure itself. For example, `q → p → p`
won't be simplified to `True` (when `p : Prop`) because the simplifier does not have
a chance to apply `post` methods to the intermediate arrow `p → p`.

Thus, this is a simproc that is meant to be used as a pre-method and marks the
result as fully simplified to prevent `simpArrow` from being applied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c18380c7045a76a295ae88e32af46b1499e3c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
