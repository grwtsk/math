# simpGoalTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a083d6edf7c28a6f29995f5a883cc5d95b7ca6956f8f69d62d678308521a812",
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
  "slug": "simpgoaltelescope--84e26c2c38609824a9b6c0b7",
  "source": {
    "blob": "cb306f2ada9110944a97d6d731f38b9f77e49c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84e26c2c38609824a9b6c0b78ceaf212f996de0e42e3a9d900583db94a849b89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a083d6edf7c28a6f29995f5a883cc5d95b7ca6956f8f69d62d678308521a812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–137.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb306f2ada9110944a97d6d731f38b9f77e49c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
