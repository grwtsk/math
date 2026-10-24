# runMachine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3efc5b1d59932d38438b3a8f82b759e01290de9b4ff51f9ec392adc34f15021e",
  "kind": "def",
  "lexical_name": "runMachine",
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
  "slug": "runmachine--1f3dfa3f4207e24b02de91b9",
  "source": {
    "blob": "dbd644cc17c49154c4cd442f10d2218d54fc47a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f3dfa3f4207e24b02de91b981a61aaa7e6c80590bb8766a784fbf4e7022a7aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3efc5b1d59932d38438b3a8f82b759e01290de9b4ff51f9ec392adc34f15021e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runMachine
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs) :
    (fuel : Nat) →
    (state : machine.State) →
    machine.invariant state →
    WithinBudget (machine.usage state) req.budget →
    MachineResolution machine
  | 0, state, _, _ =>
      .residual
        (machine.frontier state .fuelExhausted)
  | fuel + 1, state, stateInvariant, currentBudget =>
      match continued :
        machine.step state with
      | .continue next =>
          have nextInvariant :
              machine.invariant next :=
            machine.step_preserves
              state next stateInvariant continued
          if nextBudget :
              WithinBudget
                (machine.usage next)
                req.budget
          then
            runMachine machine fuel next
              nextInvariant nextBudget
          else
            .residual
              (machine.frontier state
                (.budgetExhausted
                  (exceededDimensions
                    (machine.usage next)
                    req.budget)))
      | .terminal result =>
          .completed result
            (machine.usage state) currentBudget
      | .blocked unknowns unknowns_nonempty =>
          .unknown
            (machine.frontier state
              .blockedByUnknowns)
            unknowns unknowns_nonempty
      | .operationalFailure failure =>
          .operationalFailure failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd644cc17c49154c4cd442f10d2218d54fc47a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
