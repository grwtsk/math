# internalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ae4056690da2868afec2add71f87ec0901b5bd91a7f9f4cdcc5ee448e363fff",
  "kind": "def",
  "lexical_name": "internalize",
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
  "slug": "internalize--91026e93b0fbe42bd3481cbc",
  "source": {
    "blob": "2d0e24c220358ae013b8c06545e8598cb06de521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 713,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91026e93b0fbe42bd3481cbcb06c0527ca887559203e5568d2d9fb3f7738586e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ae4056690da2868afec2add71f87ec0901b5bd91a7f9f4cdcc5ee448e363fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def internalize (e : Expr) (parent? : Option Expr) : GoalM Unit := do
  unless (← getConfig).lia do return ()
  if let some (k, type) ← getKindAndType? e then
    if type.isConstOf ``Int then
      internalizeIntTerm e type parent? k
    else if type.isConstOf ``Nat then
      internalizeNatTerm e type parent? k
    else
      if (← isToIntForbiddenParent parent?) then return ()
      internalizeToIntTerm e type
  else
    /-
    Remark: types implementing the `ToInt` class have a finite number
    of elements. Thus, we must internalize all of them. Otherwise,
    `grind` would fail to solve
    ```
    example (a : Fin 2) : a ≠ 0 → a ≠ 1 → False := by
      grind
    ```
    It is not sufficient to internalize only the terms occurring in equalities and inequalities.
    Here is an example where we must internalize `a`.
    ```
    example (a : Fin 2) (f : Fin 2 → Nat) : f 0 = 1 → f 1 = 1 → f a = 1 → False := by
      grind
    ```
    Note that is not sufficient to internalize only the local declarations (e.g., `a`).
    ```
    example (g : Nat → Fin 2) (f : Fin 2 → Nat) : f 0 = 1 → f 1 = 1 → f (g 1) = 1 → False := by
      grind
    ```
    That said, we currently do **not** support model-based theory combination for `ToInt` types.
    Thus, we consider the extra terms occurring in equalities.

    Recall that skip internalizing `Int` variables occurring in terms such as
    ```
    a = b
    ```
    is fine, because `Int` has an infinite number of elements, just using
    the information in core, we can always find an assignment for them if even they have
    not been internalized.

    TODO: infer type and internalize all terms `a : α` s.t. `[ToInt α]` after we add
    model-based theory combination for `ToInt`. One concern is performance, we will have
    to use `inferType` again, and perform some form of canonicalization. Running
    `ToInt` for them may be too expensive because the `ToInt` type class has output parameters.
    Perhaps, we should have a `HasToInt` auxiliary class without output parameters.
    -/
    let_expr Eq α a b := e | return ()
    unless (← alreadyInternalized e) do
      /-
      **Note**: Core invokes `Solver.internalize` for top-level equations that are not internalized.
      There is no point of processing them since this module has handlers for `newEq` and
      `newDiseq`.
      -/
      return ()
    unless (← getToIntId? α).isSome do return ()
    internalizeToIntTerm a α
    internalizeToIntTerm b α

end Lean.Meta.Grind.Arith.Cutsat
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0e24c220358ae013b8c06545e8598cb06de521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
