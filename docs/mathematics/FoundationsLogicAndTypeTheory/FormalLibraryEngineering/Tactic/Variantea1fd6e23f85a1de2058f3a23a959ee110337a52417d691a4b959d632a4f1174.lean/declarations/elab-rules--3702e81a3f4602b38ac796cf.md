# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f62a9494397d726785956613da978173e5ce91dea499829b404baa36e7eb71a",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--3702e81a3f4602b38ac796cf",
  "source": {
    "blob": "aeecaf452f9a372b6eaa03222971f7d0b33bc1fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantea1fd6e23f85a1de2058f3a23a959ee110337a52417d691a4b959d632a4f1174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3702e81a3f4602b38ac796cf5e2b4abeca9fd2a767b452705b00b3613634ca00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantea1fd6e23f85a1de2058f3a23a959ee110337a52417d691a4b959d632a4f1174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f62a9494397d726785956613da978173e5ce91dea499829b404baa36e7eb71a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab_rules : tactic | `(tactic| plausible $[$cfg]?) => withMainContext do
  let cfg ← elabConfig (mkOptionalNode cfg)
  let (_, g) ← (← getMainGoal).revert ((← getLocalHyps).map (Expr.fvarId!))
  g.withContext do
  let tgt ← g.getType
  let tgt' ← addDecorations tgt
  let cfg := { cfg with
    traceDiscarded := cfg.traceDiscarded || (← isTracingEnabledFor `plausible.discarded),
    traceSuccesses := cfg.traceSuccesses || (← isTracingEnabledFor `plausible.success),
    traceShrink := cfg.traceShrink || (← isTracingEnabledFor `plausible.shrink.steps),
    traceShrinkCandidates := cfg.traceShrinkCandidates
      || (← isTracingEnabledFor `plausible.shrink.candidates) }
  let inst ← try
    synthInstance (← mkAppM ``Testable #[tgt'])
  catch _ =>
    if cfg.sorryIfNoTestable then
      admitGoal g
      return
    throwError "\
      Failed to create a `testable` instance for `{tgt}`.\
    \nWhat to do:\
    \n1. make sure that the types you are using have `Plausible.SampleableExt` instances\
    \n (you can use `#sample my_type` if you are unsure);\
    \n2. make sure that the relations and predicates that your proposition use are decidable;\
    \n3. if your hypothesis is big consider increasing `set_option synthInstance.maxSize` to a
    \n  higher power of two
    \n4. make sure that instances of `Plausible.Testable` exist that, when combined,\
    \n  apply to your decorated proposition:\
    \n```\
    \n{tgt'}\
    \n```\
    \n\
    \nUse `set_option trace.Meta.synthInstance true` to understand what instances are missing.\
    \n\
    \nTry this:\
    \nset_option trace.Meta.synthInstance true\
    \n#synth Plausible.Testable ({tgt'})"
  let e ← mkAppOptM ``Testable.check #[tgt, toExpr cfg, tgt', inst]
  trace[plausible.decoration] "[testable decoration]\n  {tgt'}"
  -- Porting note: I have not ported support for `trace.plausible.instance`.
  -- See the commented out code below from mathlib3 if you would like to implement this.
  --   when_tracing `plausible.instance   <| do
  --   { inst ← summarize_instance inst >>= pp,
  --     trace!"\n[testable instance]{format.indent inst 2}" },
  let code ← unsafe evalExpr (CoreM PUnit) (mkApp (mkConst ``CoreM) (mkConst ``PUnit [1])) e
  _ ← code
  admitGoal g

-- Porting note: below is the remaining code from mathlib3 which supports the
-- `trace.plausible.instance` trace option, and which has not been ported.

-- namespace tactic.interactive
-- open tactic plausible

-- open expr

-- /-- Tree structure representing a `testable` instance. -/
-- meta inductive instance_tree
-- | node : name → expr → list instance_tree → instance_tree

-- /-- Gather information about a `testable` instance. Given
-- an expression of type `testable ?p`, gather the
-- name of the `testable` instances that it is built from
-- and the proposition that they test. -/
-- meta def summarize_instance : expr → tactic instance_tree
-- | (lam n bi d b) := do
--    v ← mk_local' n bi d,
--    summarize_instance <| b.instantiate_var v
-- | e@(app f x) := do
--    `(testable %%p) ← infer_type e,
--    xs ← e.get_app_args.mmap_filter (try_core ∘ summarize_instance),
--    pure <| instance_tree.node e.get_app_fn.const_name p xs
-- | e := do
--   failed

-- /-- format an `instance_tree` -/
-- meta def instance_tree.to_format : instance_tree → tactic format
-- | (instance_tree.node n p xs) := do
--   xs ← format.join <$> (xs.mmap <| λ t, flip format.indent 2 <$> instance_tree.to_format t),
--   ys ← pformat!"testable ({p})",
--   pformat!"+ {n} :{format.indent ys 2}\n{xs}"

-- meta instance instance_tree.has_to_tactic_format : has_to_tactic_format instance_tree :=
-- ⟨ instance_tree.to_format ⟩
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantea1fd6e23f85a1de2058f3a23a959ee110337a52417d691a4b959d632a4f1174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantea1fd6e23f85a1de2058f3a23a959ee110337a52417d691a4b959d632a4f1174.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeecaf452f9a372b6eaa03222971f7d0b33bc1fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
