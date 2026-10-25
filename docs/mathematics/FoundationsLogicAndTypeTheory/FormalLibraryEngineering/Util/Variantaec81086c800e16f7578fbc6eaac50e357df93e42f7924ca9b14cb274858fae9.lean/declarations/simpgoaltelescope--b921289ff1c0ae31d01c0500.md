# simpGoalTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36fd7a6b9ee4da6fde7e8fae0c627ea7b0aff1378926d86a445ce04d8d6e0906",
  "kind": "def",
  "lexical_name": "simpGoalTelescope",
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
  "slug": "simpgoaltelescope--b921289ff1c0ae31d01c0500",
  "source": {
    "blob": "c4d992dedf70719b4c5f6212d61db676aefb4c9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b921289ff1c0ae31d01c0500dff3a76cd2e3952a4251496eb2d7d17cbfb6d474",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36fd7a6b9ee4da6fde7e8fae0c627ea7b0aff1378926d86a445ce04d8d6e0906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def simpGoalTelescope (goal : MVarId) : VCGenM Sym.SimpGoalResult := do
  let some methods := (← read).hypSimpMethods | return .noProgress
  let methods := { methods with pre := Sym.Simp.simpTelescope }
  let target ← goal.getType
  let (result, simpState') ← Sym.Simp.SimpM.run (Sym.Simp.simp target) methods {} (← get).simpState
  modify fun s => { s with simpState := simpState' }
  result.toSimpGoalResult goal

/--
Introduce the excess state arguments of an entailment goal `pre ⊑ rhs` whose lattice type is a
function type `σ₁ → … → σₙ → α`: repeatedly apply `stateArgIntro` (a backward rule for
`Lean.Order.le_of_forall_le`) and introduce the new state binder, until the lattice type is
no longer a function type. Returns `none` when the carrier is not a function type (nothing to
introduce); throws when the carrier is a function type that `le_of_forall_le` cannot peel, such as a
dependent function lattice `(a : α) → β a → …`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d992dedf70719b4c5f6212d61db676aefb4c9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
