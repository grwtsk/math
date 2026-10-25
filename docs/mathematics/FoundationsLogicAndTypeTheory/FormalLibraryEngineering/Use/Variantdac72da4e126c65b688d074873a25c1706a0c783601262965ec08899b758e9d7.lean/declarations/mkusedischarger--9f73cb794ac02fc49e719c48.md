# mkUseDischarger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0f4482497584fe6830731c96babd68e6077588f9ce223fa442cba1b1c1d8449",
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
  "slug": "mkusedischarger--9f73cb794ac02fc49e719c48",
  "source": {
    "blob": "82fee93d123f268e392bed728b3f2b47b282021f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantdac72da4e126c65b688d074873a25c1706a0c783601262965ec08899b758e9d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f73cb794ac02fc49e719c48bea9c58b62f0627e57f6eadd92be34787a7a6fe6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantdac72da4e126c65b688d074873a25c1706a0c783601262965ec08899b758e9d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0f4482497584fe6830731c96babd68e6077588f9ce223fa442cba1b1c1d8449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–204.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantdac72da4e126c65b688d074873a25c1706a0c783601262965ec08899b758e9d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantdac72da4e126c65b688d074873a25c1706a0c783601262965ec08899b758e9d7.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82fee93d123f268e392bed728b3f2b47b282021f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
