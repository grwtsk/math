# addTheoremInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cec633f44514fc55a4f8c06ede162ca815c8eb905ea5c68317505eeb0100406",
  "kind": "def",
  "lexical_name": "addTheoremInstance",
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
  "slug": "addtheoreminstance--853f548f75af1c357117e8cc",
  "source": {
    "blob": "7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1768,
    "line": 1744,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:853f548f75af1c357117e8ccaff009ac424982c7ab0d1eaf69fff11c0cc7d407",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cec633f44514fc55a4f8c06ede162ca815c8eb905ea5c68317505eeb0100406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1744–1768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addTheoremInstance (thm : EMatchTheorem) (proof : Expr) (prop : Expr) (generation : Nat)
    (guards : List TheoremGuard) (sources : List EMatchDiagNode) : GoalM Unit := do
  match (← activateNextGuard thm guards generation) with
  | .ready =>
    trace_goal[grind.ematch.instance] "{thm.origin.pp}: {prop}"
    saveEMatchTheorem thm
    let ematchDiagSource ← if (← isEmatchDiagEnabled) then
      saveEMatchDiagInfo sources { origin := thm.origin, proof }
      pure (.ematch thm.origin proof)
    else
      pure .other
    addNewRawFact proof prop generation (.ematch thm.origin) ematchDiagSource
    modify fun s => { s with ematch.numInstances := s.ematch.numInstances + 1 }
  | .next guard guards =>
    let thms := (← get).ematch.delayedThmInsts.find? { expr := guard } |>.getD []
    let thms := { thm, proof, prop, generation, guards, sources } :: thms
    trace_goal[grind.ematch.instance.delayed] "`{thm.origin.pp}` waiting{indentExpr guard}"
    modify fun s => { s with
      ematch.delayedThmInsts := s.ematch.delayedThmInsts.insert { expr := guard } thms
      ematch.numDelayedInstances := s.ematch.numDelayedInstances + 1
      -- Bump numInstances for delayed instances too, so that uniqueId generation
      -- in EMatch.instantiateTheorem' doesn't produce collisions.
      ematch.numInstances := s.ematch.numInstances + 1
    }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean#L1744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
