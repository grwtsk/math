# findModelInner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:775b3058cdd7ff4fed5805f7523790019079faf4de1f467d21ce29ab954192fd",
  "kind": "def",
  "lexical_name": "findModelInner",
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
  "slug": "findmodelinner--1d90129776adf42d0f0ea833",
  "source": {
    "blob": "82bafcdb5b5220b506995e1568afb2cfeb7853c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 388,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d90129776adf42d0f0ea83323e2a40c738fffec06b398a287be169a917fbfa5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:775b3058cdd7ff4fed5805f7523790019079faf4de1f467d21ce29ab954192fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findModelInner (e : Expr) : TermElabM (Option FindModelResult) := do
  if let some m ← tryStrategy "TotalSpace"          fromTotalSpace      then return some m
  if let some m ← tryStrategy "TangentBundle"       fromTangentBundle   then return some m
  if let some m ← tryStrategy "NormedSpace"         fromNormedSpace     then return some m
  if let some m ← tryStrategy "Manifold"            fromManifold        then return some m
  if let some m ← tryStrategy "ContinuousLinearMap" fromCLM             then return some m
  if let some m ← tryStrategy "RealInterval"        fromRealInterval    then return some m
  if let some m ← tryStrategy "EuclideanSpace"      fromEuclideanSpace  then return some m
  if let some m ← tryStrategy "UpperHalfPlane"      fromUpperHalfPlane  then return some m
  if let some m ← tryStrategy "Units of algebra"    fromUnitsOfAlgebra  then return some m
  if let some m ← tryStrategy "Complex unit circle" fromCircle          then return some m
  if let some m ← tryStrategy "Sphere"              fromSphere          then return some m
  if let some m ← tryStrategy "NormedField"         fromNormedField     then return some m
  -- We run this strategy last, as it is the least likely to succeed.
  -- More commonly, we have a normed space on the nose, and `fromNormedSpace` should succeed.
  if let some m ← tryStrategy "InnerProductSpace" fromInnerProductSpace then return some m
  return none
where
  /- Note that errors thrown in the following are caught by `tryStrategy` and converted to trace
  messages. -/
  /-- Attempt to find a model from a `TotalSpace` first by seeing if it is the total space of a
  tangent bundle, and otherwise by finding a model with corners on its base. -/
  fromTotalSpace : TermElabM FindModelResult := do
    match_expr e with
    | Bundle.TotalSpace _ F V => do
      if let some m ← tryStrategy m!"TangentSpace" (fromTotalSpace.tangentSpace V) then return m
      trace[Elab.DiffGeo.MDiff]
        "{e} is the total space of a fiber bundle: trying to find a model on the base of `{V}`"
      -- `V` should be of type `B → Type*`, where `B` is the base of the vector bundle.
      -- Then, the desired model with corners is `I.prod (𝓘(𝕜, F))`, where `I` is the model on `B`
      -- and `𝕜` is the base field for `F`.
      let vtype ← whnf <| ← instantiateMVars <| ← inferType V
      trace[Elab.DiffGeo.MDiff] "`{V}` has type `{vtype}`"
      match vtype with
      | .forallE _x base _tgt _ =>
        let baseModel ← withTraceNode `Elab.DiffGeo.MDiff
            (fun _ ↦ pure m!"searching for a model with corners on the base `{base}`") do
          let some baseI ← findModelInner base
            | throwError m!"found no model with corners on the base {base} of `TotalSpace {F} {V}`"
          return baseI.model
        -- Very likely, `F` is a normed space over some field: let's see if `F` is a normed space
        -- on the nose.
        let some K ← guessBaseFieldForNormedSpace F
          | throwError "Couldn't find a `NormedSpace` structure on `{F}`"
        let tgtMod ← mkAppOptM ``modelWithCornersSelf #[K, none, F, none, none]
        mkAppM ``ModelWithCorners.prod #[baseModel, tgtMod]
      | _ =>
        throwError s!"{e} is a TotalSpace {F} {V}, but {V} is not a pi type --- \
          could not infer base of the bundle"
    | _ => throwError "`{e}` is not a `Bundle.TotalSpace`."
  /-- Attempt to find a model from the total space of a tangent bundle. -/
  fromTotalSpace.tangentSpace (V : Expr) : TermElabM Expr := do
    match_expr V with
    | TangentSpace _k _ _E _ _ _H _ I M _ _ => do
      trace[Elab.DiffGeo.MDiff] "`{V}` is the total space of the `TangentBundle` of `{M}`"
      mkAppM ``ModelWithCorners.tangent #[I]
    | _ => throwError "`{V}` is not a `TangentSpace`"
  /-- Attempt to find a model on a `TangentBundle` -/
  fromTangentBundle : TermElabM Expr := do
    match_expr e with
    | TangentBundle _k _ _E _ _ _H _ I M _ _ => do
      trace[Elab.DiffGeo.MDiff] "`{e}` is a `TangentBundle` over model `{I}` on `{M}`"
      mkAppM ``ModelWithCorners.tangent #[I]
    | _ => throwError "`{e}` is not a `TangentBundle`"
  /-- Attempt to find the trivial model on a normed space. -/
  fromNormedSpace : TermElabM FindModelResult := do
    let some (inst, K) ← findSomeLocalInstanceOf? ``NormedSpace fun inst type ↦ do
        match_expr type with
        | NormedSpace K E _ _ =>
          if ← withReducible (pureIsDefEq E e) then return some (inst, K)
          else return none
        | _ => return none
      | throwError "Couldn't find a `NormedSpace` structure on `{e}` among local instances."
    trace[Elab.DiffGeo.MDiff] "`{e}` is a normed space over the field `{K}`"
    return {
      model := ← mkAppOptM ``modelWithCornersSelf #[K, none, e, none, inst]
      normedSpaceInfo? := some { normedSpace := e, baseField := K }
    }
  /-- Attempt to find the trivial model on an inner product space. -/
  fromInnerProductSpace : TermElabM FindModelResult := do
    let some (inst, K) ← findSomeLocalInstanceOf? `InnerProductSpace fun inst type ↦ do
      -- We don't use `match_expr` here to avoid importing `InnerProductSpace`.
      match (← instantiateMVars type).cleanupAnnotations with
        | mkApp4 (.const `InnerProductSpace _) k E _ _ =>
          if ← withReducible (pureIsDefEq E e) then return some (inst, k)
          else return none
        | _ => return none
      | throwError "Couldn't find an `InnerProductSpace` structure on `{e}` among local instances."
    trace[Elab.DiffGeo.MDiff] "`{e}` is an inner product space over the field `{K}`"
    -- Convert the InnerProductSpace to a NormedSpace instance.
    let inst' ← mkAppOptM `InnerProductSpace.toNormedSpace #[K, e, none, none, inst]
    return {
      model := ← mkAppOptM ``modelWithCornersSelf #[K, none, e, none, inst']
      normedSpaceInfo? := some { normedSpace := e, baseField := K }
    }
  /-- Attempt to find a model with corners on a Euclidean space, half-space or quadrant
  on a type (represented by an expression `e`):
  if successful, return `some m` where `m` is an expression describing the model found.
  Otherwise, return `none`. -/
  -- Shared function used for the `fromManifold` and `fromEuclideanSpace` strategies.
  tryFromEuclideanSpace (e : Expr) : TermElabM (Option Expr) := do
    -- We don't use `match_expr` to avoid importing `EuclideanHalfSpace`.
    match (← instantiateMVars e).cleanupAnnotations with
    | mkApp2 (.const `EuclideanSpace _) k _n =>
      trace[Elab.DiffGeo.MDiff] "`{e}` is a Euclidean space over `{k}`"
      mkAppOptM ``modelWithCornersSelf #[k, none, e, none, none]
    | mkApp2 (.const `EuclideanHalfSpace _) n _ =>
      trace[Elab.DiffGeo.MDiff] "`{e}` is a Euclidean half-space"
      mkAppOptM `modelWithCornersEuclideanHalfSpace #[n, none]
    | mkApp (.const `EuclideanQuadrant _) n =>
      trace[Elab.DiffGeo.MDiff] "`{e}` is a Euclidean quadrant"
      mkAppOptM `modelWithCornersEuclideanQuadrant #[n]
    | _ => return none
  /-- Attempt to find a model with corners on a manifold, or on the charted space of a manifold. -/
  fromManifold : TermElabM Expr := do
    -- Return an expression for a type `H` (if any) such that `e` is a ChartedSpace over `H`,
    -- or `e` is `H` itself.
    let some H ← findSomeLocalInstanceOf? ``ChartedSpace fun inst type ↦ do
        trace[Elab.DiffGeo.MDiff] "considering instance of type `{type}`"
        match_expr type with
        | ChartedSpace H _ M _ =>
          if ← withReducible (pureIsDefEq M e) then
            trace[Elab.DiffGeo.MDiff] "`{e}` is a charted space over `{H}` via `{inst}`"
            return some H
          else if ← withReducible (pureIsDefEq H e) then
            trace[Elab.DiffGeo.MDiff] "`{e}` is the charted space of `{M}` via `{inst}`"
            return some H else return none
        | _ => return none
      | throwError "Couldn't find a `ChartedSpace` structure on `{e}` among local instances, \
          and `{e}` is not the charted space of some type in the local context either."
    let some m ← findSomeLocalHyp? fun fvar type ↦ do
        match_expr type with
        | ModelWithCorners _ _ _ _ _ H' _ => do
          if ← withReducible (pureIsDefEq H' H) then return some fvar else return none
        | _ => return none
      | trace[Elab.DiffGeo.MDiff]
          "Couldn't find a `ModelWithCorners` with model space `{H}` in the local context."
        -- As last alternatives, check if `H` is Euclidean half-space, a Euclidean quadrant,
        -- Euclidean space, a normed space or a normed field.
        if let some m ← tryFromEuclideanSpace H then
          return m
        else
          trace[Elab.DiffGeo.MDiff] "`{H}` is not a Euclidean space, half-space or quadrant"
          let a ← findSomeLocalInstanceOf? ``NormedSpace fun inst type ↦ do
            match_expr type with
            | NormedSpace K E _ _ =>
              if ← withReducible (pureIsDefEq E H) then return some (inst, K)
              else return none
            | _ => return none
          if let some (inst, K) := a then
            trace[Elab.DiffGeo.MDiff] "`{H}` is a normed space over the field `{K}`"
            return ← mkAppOptM ``modelWithCornersSelf #[K, none, H, none, inst]
          trace[Elab.DiffGeo.MDiff] "Couldn't find a normed space structure on {H}` either: \
            assuming it is a non-trivially normed field"
          -- Return the trivial model with corners: this will work if `H` is a normed field.
          mkAppOptM ``modelWithCornersSelf #[H, none, H, none, none]
    return m
  /-- Attempt to find a model with corners on a space of continuous linear maps -/
  -- Note that (continuous) linear equivalences are not an abelian group, so are not a model with
  -- corners as a normed space. Merely linear maps are not a normed space either.
  fromCLM : TermElabM Expr := do
    -- If the coefficients of the codomain were a copy of `k` with a non-standard topology or smooth
    -- structure (such as, imposed deliberately through a type synonym), we do not want to infer
    -- the standard model with corners.
    -- Therefore, we only check definitional equality at reducible transparency.
    let (k, _E, _F) ← isCLMReduciblyDefeqCoefficients e
    mkAppOptM ``modelWithCornersSelf #[k, none, e, none, none]
  /-- Attempt to find a model with corners on a Euclidean space, half-space or quadrant -/
  fromEuclideanSpace : TermElabM Expr := do
    if let some m ← tryFromEuclideanSpace e then return m else
    throwError "`{e}` is not a Euclidean space, half-space or quadrant"
  /-- Attempt to find a model with corners on a closed interval of real numbers,
  or on the unit interval of real numbers -/
  fromRealInterval : TermElabM Expr := do
    let some e := (← instantiateMVars e).cleanupAnnotations.coeTypeSet?
      | throwError "`{e}` is not a coercion of a set to a type"
    -- We don't use `match_expr` here to avoid importing `Set.Icc`.
    -- Note that `modelWithCornersEuclideanHalfSpace` is also not imported.
    match e with
    | Expr.const ``unitInterval [] =>
      trace[Elab.DiffGeo.MDiff] "`{e}` is the real unit interval"
      mkAppOptM `modelWithCornersEuclideanHalfSpace #[q(1 : ℕ), none]
    | mkApp4 (.const `Set.Icc _) α _ _x _y =>
      -- If `S` were a copy of `k` with a non-standard topology or smooth structure
      -- (such as, imposed deliberately through a type synonym), we do not want to infer
      -- the standard model with corners.
      -- Therefore, we only check definitional equality at reducible transparency.
      if ← withReducible <| isDefEq α q(ℝ) then
        -- We need not check if `x < y` is a fact in the local context: Lean will verify this
        -- itself when trying to synthesize a ChartedSpace instance.
        mkAppOptM `modelWithCornersEuclideanHalfSpace #[q(1 : ℕ), none]
      else throwError "`{e}` is a closed interval of type `{α}`, \
        which is not reducibly definitionally equal to ℝ"
    | _ => throwError "`{e}` is not a closed real interval"
  /-- Attempt to find a model with corners on the upper half plane in complex space -/
  fromUpperHalfPlane : TermElabM Expr := do
    -- We don't use `match_expr` to avoid importing `UpperHalfPlane`.
    if (← instantiateMVars e).cleanupAnnotations.isConstOf `UpperHalfPlane then
      mkAppOptM ``modelWithCornersSelf #[mkConst `Complex, none, mkConst `Complex, none, none]
    else throwError "`{e}` is not the complex upper half plane"
  /-- Attempt to find a model with corners on the units in a normed algebra -/
  fromUnitsOfAlgebra : TermElabM Expr := do
    match_expr e with
    | Units α _ =>
      trace[Elab.DiffGeo.MDiff] "`{e}` is the set of units on `{α}`"
      -- If `α` is a normed `𝕜`-algebra for some `𝕜`, we know a model with corners.
      -- We need to gather `𝕜` from the context: try to find a `NormedAlgebra` or `NormedSpace`
      -- instance in the local context.
      -- Note: this is somewhat brittle, and will need to be updated if other instance are made.
      -- A more robust solution would involve running typeclass inference,
      -- hence could potentially be slow.
      let searchNormedAlgebra ← findSomeLocalInstanceOf? ``NormedAlgebra fun inst type ↦ do
          trace[Elab.DiffGeo.MDiff] "considering instance of type `{type}`"
          match_expr type with
          | NormedAlgebra k R _ _ =>
            if ← withReducible (pureIsDefEq R α) then
              trace[Elab.DiffGeo.MDiff] "`{α}` is a normed algebra over `{k}` via `{inst}`"
              return some (k, R)
            else
              trace[Elab.DiffGeo.MDiff] "found a normed `{k}`-algebra structure on `{R}`, which \
              is not reducibly definitionally equal to `{α}`: continue the search"
              return none
          | _ => return none
      if let some (k, R) := searchNormedAlgebra then
        trace[Elab.DiffGeo.MDiff] "found a normed algebra: `{α}` is a normed `{k}`-algebra"
        mkAppOptM ``modelWithCornersSelf #[k, none, R, none, none]
      else
        trace[Elab.DiffGeo.MDiff] "`{α}` is not a normed algebra on the nose: try via a space of \
          continuous linear maps"
        -- If `α = V →L[𝕜] V` for a `𝕜`-normed space, we also have a normed algebra structure:
        -- search for such cases as well.
        let (k, V, W) ← isCLMReduciblyDefeqCoefficients α
        -- If `V` and `W` are not reducibly def-eq, the normed algebra instance should not fire:
        -- so it suffices to check at reducible transparency.
        if ← withReducible <| isDefEq V W then
          trace[Elab.DiffGeo.MDiff] "`{α}` is a space of continuous `{k}`-linear maps on `{V}`"
          let normedSpace? ← findSomeLocalInstanceOf? ``NormedSpace fun inst type ↦ do
            trace[Elab.DiffGeo.MDiff] "considering instances of type `{type}`"
            match_expr type with
            | NormedSpace k R _ _ =>
              -- We use reducible transparency to allow using a type synonym: this should not
              -- be unfolded.
              if ← withReducible (pureIsDefEq R V) then
                trace[Elab.DiffGeo.MDiff] "`{V}` is a normed space over `{k}` via `{inst}`"
                return some (k, R)
              else return none
            | _ => return none
          match normedSpace? with
          | some (k, _R) =>
            trace[Elab.DiffGeo.MDiff] "found a normed space: `{V}` is a normed space over `{k}`"
            mkAppOptM ``modelWithCornersSelf #[k, none, α, none, none]
          | _ => throwError  "Found no `NormedSpace` structure on `{V}` among local instances"
        else
          -- NB. If further instances of `NormedAlgebra` arise in practice, adding another check
          -- here is a good thing to do.
          -- NB. We don't know the field `𝕜` here, thus using typeclass inference to determine
          -- if `α` is a normed algebra is not a good idea. Searches `NormedAlgebra ?k α` for
          -- unspecified `k` often loop, and are not a good idea.
          throwError "{α}` is a space of continuous `{k}`-linear maps, but with domain `{V}` and \
            co-domain `{W}` being not definitionally equal"
    | _ => throwError "`{e}` is not a set of units, in particular not of a complete normed algebra"
  /-- Attempt to find a model with corners on the complex unit circle -/
  fromCircle : TermElabM Expr := do
    -- We don't use `match_expr` to avoid importing `Circle`.
    if (← instantiateMVars e).cleanupAnnotations.isConstOf `Circle then
      -- We have not imported `EuclideanSpace` yet, so build an expression by hand.
      let euclE ← mkAppM `EuclideanSpace #[q(ℝ), q(Fin 1)]
      mkAppOptM ``modelWithCornersSelf #[q(ℝ), none, euclE, none, none]
    else throwError "`{e}` is not the complex unit circle"
  /-- Attempt to find a model with corners on a metric sphere in a real normed space -/
  fromSphere : TermElabM Expr := do
    let some e := (← instantiateMVars e).cleanupAnnotations.coeTypeSet?
      | throwError "`{e}` is not a coercion of a set to a type"
    match_expr e with
    | Metric.sphere α _ _x _r =>
      trace[Elab.DiffGeo.MDiff] "`{e}` is a metric sphere in `{α}`"
      -- Attempt to find a real or complex inner product space instance on `α`.
      let searchIPSpace := findSomeLocalInstanceOf? `InnerProductSpace fun inst type ↦ do
          trace[Elab.DiffGeo.MDiff] "considering instance of type `{type}`"
          -- We don't use `match_expr` here to avoid importing `InnerProductSpace`.
          match type with
          | mkApp4 (.const `InnerProductSpace _) k E _ _ =>
            -- We use reducible transparency to allow using a type synonym: this should not
            -- be unfolded.
            if ← withReducible (pureIsDefEq E α) then
              trace[Elab.DiffGeo.MDiff] "`{α}` is a `{k}`-inner product space via `{inst}`"
              return some E
            else
              trace[Elab.DiffGeo.MDiff] "found an inner product space on `{E}`, which \
                is not reducibly definitionally equal to `{α}`: continue the search"
              return none
          | _ => return none
      let factFinder (E : Expr) := findSomeLocalInstanceOf? ``Fact fun _inst type ↦ do
        trace[Elab.DiffGeo.MDiff] "considering instance of type `{type}`"
        match_expr type with
        | Fact a =>
          trace[Elab.DiffGeo.MDiff] "considering fact of kind `{a}`"
          match_expr a with
          | Eq _ lhs rhs =>
            match_expr lhs with
            | Module.finrank R F _ _ _ =>
              -- We use reducible transparency to allow using a type synonym: this should not
              -- be unfolded.
              if ← withReducible (pureIsDefEq R q(ℝ) <&&> pureIsDefEq E F) then
                trace[Elab.DiffGeo.MDiff] "found a fact about `finrank ℝ E` via `{_inst}`"
                -- Try to unify the rhs with an expression m + 1, for a natural number m.
                -- If we find one, that's the dimension of our model with corners.
                -- Always returning the finrank - 1 would be undesirable, for instance since natural
                -- number subtraction is badly behaved.
                have rhs : Q(ℕ) := rhs
                match rhs with
                | ~q($n + 1) =>
                  trace[Elab.DiffGeo.MDiff] "rhs `{rhs}` is `{n}` + 1"
                  return some n
                | _ =>
                  throwError "found a fact about `finrank ℝ E`, but the right hand \
                    side `{rhs}` is not of the form `m + 1` for some `m`"
              else
                trace[Elab.DiffGeo.MDiff] "found a fact about finrank, \
                  but not about `finrank ℝ E`: continue the search"
                return none
            | _ => return none
          | _ => return none
        | _ => return none
      if let some E ← searchIPSpace then
        -- We found a sphere in the inner product space `E`:
        -- search for a `Fact (finrank ℝ E) = m + 1`,
        -- then the sphere is `m`-dimensional, and `modelEuclideanSpace m` is our model.
        let some nE ← factFinder E
          | throwError "Found no fact `finrank ℝ {E} = n + 1` in the local context"
        -- We have not imported `EuclideanSpace` yet, so build an expression by hand.
        let euclE ← mkAppM `EuclideanSpace #[q(ℝ), q(Fin $nE)]
        mkAppOptM ``modelWithCornersSelf #[q(ℝ), none, euclE, none, none]
      else throwError "found no real normed space instance on `{α}`"
    | _ => throwError "`{e}` is not a sphere in a real normed space"
  /-- Attempt to find a model with corners from a normed field.
  We attempt to find a global instance here. -/
  fromNormedField : TermElabM Expr := mkAppOptM ``modelWithCornersSelf #[e, none, e, none, none]

/-- Try to find a `ModelWithCorners` instance on a type (represented by an expression `e`),
using the local context to infer the appropriate instance.
This supports all `ModelWithCorners` instances that are currently defined in mathlib.
Further cases can be added as necessary.

Return an expression describing the found model with corners.

Note that the matching on `e` does not see through reducibility (e.g. we distinguish the `abbrev`
`TangentBundle` from its definition), so `whnfR` should not be run on `e` prior to calling
`findModel` on it.

This implementation is not maximally robust yet.
-/
-- TODO: better error messages when all strategies fail
-- TODO: consider lowering monad to `MetaM`

-- This function calls itself, which is why it is partial for now.
-- This should not be an issue in practice.
-- FIXME: can one prove this terminates w.r.t. a suitable measure? This is only recursing into
-- subexpressions (at least, after match_expr), right?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82bafcdb5b5220b506995e1568afb2cfeb7853c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
