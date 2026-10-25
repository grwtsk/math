# isDefEqProj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7327b2eb2fe29464f688f31c5386650ad4f7ba4e022ab8c8b2d7d074a6b5849d",
  "kind": "def",
  "lexical_name": "isDefEqProj",
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
  "slug": "isdefeqproj--b472c44206a23d37b5e82db3",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2173,
    "line": 2107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b472c44206a23d37b5e82db3fcb8becb021477e6c591c9151657c94b291c9c89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7327b2eb2fe29464f688f31c5386650ad4f7ba4e022ab8c8b2d7d074a6b5849d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2107–2173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def isDefEqProj : Expr → Expr → MetaM Bool
  | .proj m i t, .proj n j s => do
    /- When `m` is a class, the projection's parameter is instance-implicit.
       We bump the transparency to `.implicit` (via `withImplicitConfig`) so that all
       at least implicit-reducible declarations, including instance definitions, can be unfolded
       when comparing the struct arguments.
       Without this bump, comparing `.proj` nodes produced by unfolding
       a `[reducible]` class field fails because the struct arguments (`instX a` vs `instX b`)
       are stuck at `.reducible`. This mirrors the transparency bump that `isDefEqArgs` applies
       for instance-implicit parameters. -/
    let fromClass := isClass (← getEnv) m
    let isDefEqStructArgs (x : MetaM Bool) : MetaM Bool :=
      if fromClass then withImplicitConfig x else x
    if (← read).inTypeClassResolution then
      -- See comment at `inTypeClassResolution`
      pure (i == j && m == n) <&&> isDefEqStructArgs (Meta.isExprDefEqAux t s)
    else if !backward.isDefEq.lazyProjDelta.get (← getOptions) then
      pure (i == j && m == n) <&&> isDefEqStructArgs (Meta.isExprDefEqAux t s)
    else if i == j && m == n then
      isDefEqStructArgs (isDefEqProjDelta t s i)
    else
      return false
  | .proj structName 0 s, v  => isDefEqSingleton structName s v
  | v, .proj structName 0 s  => isDefEqSingleton structName s v
  | _, _ => pure false
where
  /-- If `structName` is a structure with a single field and `(?m ...).1 =?= v`, then solve constraint as `?m ... =?= ⟨v⟩` -/
  isDefEqSingleton (structName : Name) (s : Expr) (v : Expr) : MetaM Bool := do
    if isClass (← getEnv) structName then
      /-
      We disable this feature if `structName` is a class. See issue #2011.
      The example at issue #2011, the following weird
      instance was being generated for `Zero (f x)`
      ```
      (@Zero.mk (f x✝) ((@instZero I (fun i => f i) fun i => inst✝¹ i).1 x✝)
      ```
      where `inst✝¹` is the local instance `[∀ i, Zero (f i)]`
      Note that this instance is definitionally equal to the expected nicer
      instance `inst✝¹ x✝`.
      However, the nasty instance trigger nasty unification higher order
      constraints later.

      We say this behavior is defensible because it is more reliable to use TC resolution to
      assign `?m`.
      -/
      return false
    let some ctorVal := getNonRecStructureCtor? (← getEnv) structName | return false
    if ctorVal.numFields != 1 then
      return false -- It is not a non-recursive structure with a single field.
    let sType ← whnf (← inferType s)
    let sTypeFn := sType.getAppFn
    if !sTypeFn.isConstOf structName then
      return false
    let s ← whnf s
    let sFn := s.getAppFn
    if !sFn.isMVar then
      return false
    if (← isAssignable sFn) then
      let ctorApp := mkApp (mkAppN (mkConst ctorVal.name sTypeFn.constLevels!) sType.getAppArgs) v
      processAssignment' s ctorApp
    else
      return false

/--
  Given applications `t` and `s` that are in WHNF (modulo the current transparency setting),
  check whether they are definitionally equal or not.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L2107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
