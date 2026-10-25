# unfoldDefinition?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82ab1a2a0ff163cfd534c3281b396be22b5ee53d4a09b11e70bb043f35eb1b93",
  "kind": "def",
  "lexical_name": "unfoldDefinition?",
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
  "slug": "unfolddefinition--e359f29f38b401ff2fe711a9",
  "source": {
    "blob": "768e0c93dea2a79dd5ab505c68bbcac736238c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 965,
    "line": 879,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e359f29f38b401ff2fe711a9080e3d32a25502f9d269efbae40cb10d490e8219",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82ab1a2a0ff163cfd534c3281b396be22b5ee53d4a09b11e70bb043f35eb1b93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 879–965.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
  partial def unfoldDefinition? (e : Expr) (ignoreTransparency := false) : MetaM (Option Expr) :=
    match e with
    | .app f _ =>
      matchConstAux (ignoreTransparency := ignoreTransparency) f.getAppFn (fun _ => unfoldProjInstWhenInstances? e) fun fInfo fLvls => do
        if fInfo.levelParams.length != fLvls.length then
          return none
        else
          let unfoldDefault (_ : Unit) : MetaM (Option Expr) :=
            unfoldDefault fInfo fLvls e
          if smartUnfolding.get (← getOptions) then
            match ((← getEnv).find? (skipRealize := true) (mkSmartUnfoldingNameFor fInfo.name)) with
            | some fAuxInfo@(.defnInfo _) =>
              -- We use `preserveMData := true` to make sure the smart unfolding annotation are not erased in an over-application.
              deltaBetaDefinition fAuxInfo fLvls e.getAppRevArgs (preserveMData := true) (fun _ => pure none) fun e₁ => do
                let some r ← smartUnfoldingReduce? e₁ | return none
                /-
                  If `smartUnfoldingReduce?` succeeds, we should still check whether the argument the
                  structural recursion is recursing on reduces to a constructor.
                  This extra check is necessary in definitions (see issue #1081) such as
                  ```
                  inductive Vector (α : Type u) : Nat → Type u where
                    | nil  : Vector α 0
                    | cons : α → Vector α n → Vector α (n+1)

                  def Vector.insert (a: α) (i : Fin (n+1)) (xs : Vector α n) : Vector α (n+1) :=
                    match i, xs with
                    | ⟨0,   _⟩,        xs => cons a xs
                    | ⟨i+1, h⟩, cons x xs => cons x (xs.insert a ⟨i, Nat.lt_of_succ_lt_succ h⟩)
                  ```
                  The structural recursion is being performed using the vector `xs`. That is, we used `Vector.brecOn` to define
                  `Vector.insert`. Thus, an application `xs.insert a ⟨0, h⟩` is **not** definitionally equal to
                  `Vector.cons a xs` because `xs` is not a constructor application (the `Vector.brecOn` application is blocked).

                  Remark 1: performing structural recursion on `Fin (n+1)` is not an option here because it is a `Subtype` and
                  and the repacking in recursive applications confuses the structural recursion module.

                  Remark 2: the match expression reduces reduces to `cons a xs` when the discriminants are `⟨0, h⟩` and `xs`.

                  Remark 3: this check is unnecessary in most cases, but we don't need dependent elimination to trigger the issue
                  fixed by this extra check. Here is another example that triggers the issue fixed by this check.
                  ```
                  def f : Nat → Nat → Nat
                    | 0,   y   => y
                    | x+1, y+1 => f (x-2) y
                    | x+1, 0   => 0

                  theorem ex : f 0 y = y := rfl
                  ```

                  Remark 4: the `return some r` in the following `let` is not a typo. Binport generated .olean files do not
                  store the position of recursive arguments for definitions using structural recursion.
                  Thus, we should keep `return some r` until Mathlib has been ported to Lean 3.
                  Note that the `Vector` example above does not even work in Lean 3.
                -/
                let some recArgPos ← getStructuralRecArgPos? fInfo.name
                  | recordUnfold fInfo.name; return some r
                let numArgs := e.getAppNumArgs
                if recArgPos >= numArgs then return none
                let recArg := e.getArg! recArgPos numArgs
                if !(← isConstructorApp (← whnfMatcher recArg)) then return none
                recordUnfold fInfo.name
                return some r
            | _ =>
              if (← getMatcherInfo? fInfo.name).isSome then
                -- Recall that `whnfCore` tries to reduce "matcher" applications.
                return none
              else
                unfoldDefault ()
          else
            unfoldDefault ()
    | .const declName lvls => do
      let some cinfo ← getConstInfoNoEx? declName ignoreTransparency | pure none
      -- check smart unfolding only after `getUnfoldableConstNoEx?` because smart unfoldings have a
      -- significant chance of not existing and `Environment.contains` misses are more costly
      if smartUnfolding.get (← getOptions) && (← getEnv).contains (mkSmartUnfoldingNameFor declName) then
        return none
      else
        unless cinfo.hasValue do
          if cinfo.isAxiom then
            recordUnfoldAxiom cinfo.name
          return none
        deltaDefinition cinfo lvls
          (fun _ => pure none)
          (fun e => do recordUnfold declName; pure (some e))
    | _ => return none
end

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean#L879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768e0c93dea2a79dd5ab505c68bbcac736238c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
