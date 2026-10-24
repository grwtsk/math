# autonomous_run_replicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd3ea4c5-8ee7-1af6-b365-d48e59ca6448",
  "kind": "theorem",
  "lexical_name": "autonomous_run_replicate",
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
  "slug": "autonomous-run-replicate--bbd8a316688f00af53de6ae0",
  "source": {
    "blob": "498d707cf31108cdbc17e59d97fcaabafc5c3632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/DynamicalSystems/FiniteGraphAndObservationComponents/Variantd5a8255ef12565e8/AutonomousSpecializationAndIteration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbd8a316688f00af53de6ae014caac701d520802fac734b2e1b7121115596473",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FiniteGraphAndObservationComponents/Variantd5a8255ef12565e8/AutonomousSpecializationAndIteration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd3ea4c5-8ee7-1af6-b365-d48e59ca6448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem autonomous_run_replicate
    (step : State → State)
    (Observation : Resolution → Type uO)
    (observe : ∀ ρ, State → Observation ρ)
    (t : Nat)
    (state : State) :
    (autonomous step Observation observe).run
        (List.replicate t PUnit.unit) state =
      step^[t] state := by
  induction t generalizing state with
  | zero => rfl
  | succ t ih =>
      simp only [List.replicate_succ, run_cons, Function.iterate_succ_apply]
      exact ih (step state)

end System

end ObservableRecursion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FiniteGraphAndObservationComponents/Variantd5a8255ef12565e8/AutonomousSpecializationAndIteration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/FiniteGraphAndObservationComponents/Variantd5a8255ef12565e8/AutonomousSpecializationAndIteration.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `498d707cf31108cdbc17e59d97fcaabafc5c3632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
