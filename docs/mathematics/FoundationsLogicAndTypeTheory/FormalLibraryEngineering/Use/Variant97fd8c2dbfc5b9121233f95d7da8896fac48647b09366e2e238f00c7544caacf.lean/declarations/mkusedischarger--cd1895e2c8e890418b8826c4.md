# mkUseDischarger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d59acfad7abd46efac6c91cb65a7bbd76ca37a948b3bb66d13e1ecf1c729bce",
  "kind": "def",
  "lexical_name": "mkUseDischarger",
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
  "slug": "mkusedischarger--cd1895e2c8e890418b8826c4",
  "source": {
    "blob": "61d77266772d0b1ff5d6790383c1c196f1fa9044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variant97fd8c2dbfc5b9121233f95d7da8896fac48647b09366e2e238f00c7544caacf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd1895e2c8e890418b8826c44480879b1a1f58c747ba70630e7db4932f839b08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variant97fd8c2dbfc5b9121233f95d7da8896fac48647b09366e2e238f00c7544caacf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d59acfad7abd46efac6c91cb65a7bbd76ca37a948b3bb66d13e1ecf1c729bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkUseDischarger (discharger? : Option (TSyntax ``Parser.Tactic.discharger)) :
    TacticM (TacticM Unit) := do
  let discharger ←
    if let some disch := discharger? then
      match disch with
      | `(Parser.Tactic.discharger| ($_ := $d)) => `(tactic| ($d))
      | _ => throwUnsupportedSyntax
    else
      `(tactic| try with_reducible use_discharger)
  return evalTactic discharger

/--
`use e₁, e₂, ⋯` is similar to `exists`, but unlike `exists` it is equivalent to applying the tactic
`refine ⟨e₁, e₂, ⋯, ?_, ⋯, ?_⟩` with any number of placeholders (rather than just one) and
then trying to close goals associated to the placeholders with a configurable discharger (rather
than just `try trivial`).

Examples:

```lean
example : ∃ x : Nat, x = x := by use 42

example : ∃ x : Nat, ∃ y : Nat, x = y := by use 42, 42

example : ∃ x : String × String, x.1 = x.2 := by use ("forty-two", "forty-two")
```

`use! e₁, e₂, ⋯` is similar but it applies constructors everywhere rather than just for
goals that correspond to the last argument of a constructor. This gives the effect that
nested constructors are being flattened out, with the supplied values being used along the
leaves and nodes of the tree of constructors.
With `use!` one can feed in each `42` one at a time:

```lean
example : ∃ p : Nat × Nat, p.1 = p.2 := by use! 42, 42

example : ∃ p : Nat × Nat, p.1 = p.2 := by use! (42, 42)
```

The second line makes use of the fact that `use!` tries refining with the argument before
applying a constructor. Also note that `use`/`use!` by default uses a tactic
called `use_discharger` to discharge goals, so `use! 42` will close the goal in this example since
`use_discharger` applies `rfl`, which as a consequence solves for the other `Nat` metavariable.

These tactics take an optional discharger to handle remaining explicit `Prop` constructor arguments.
By default it is `use (discharger := try with_reducible use_discharger) e₁, e₂, ⋯`.
To turn off the discharger and keep all goals, use `(discharger := skip)`.
To allow "heavy refls", use `(discharger := try use_discharger)`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variant97fd8c2dbfc5b9121233f95d7da8896fac48647b09366e2e238f00c7544caacf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variant97fd8c2dbfc5b9121233f95d7da8896fac48647b09366e2e238f00c7544caacf.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d77266772d0b1ff5d6790383c1c196f1fa9044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
