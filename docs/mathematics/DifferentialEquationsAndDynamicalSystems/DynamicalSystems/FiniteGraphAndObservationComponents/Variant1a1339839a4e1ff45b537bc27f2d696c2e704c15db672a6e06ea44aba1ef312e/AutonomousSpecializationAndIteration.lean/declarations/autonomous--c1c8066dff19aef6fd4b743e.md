# autonomous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:243a3f2923540a47b84dd59c8ea612e809a088574a29225fac24fec063d1f22c",
  "kind": "def",
  "lexical_name": "autonomous",
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
  "slug": "autonomous--c1c8066dff19aef6fd4b743e",
  "source": {
    "blob": "516814df52c4e9288da63cb9fc3b9ea271567233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/DynamicalSystems/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/AutonomousSpecializationAndIteration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1c8066dff19aef6fd4b743e89ea60c75d10fb4d1702958550aef869f934a015",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/AutonomousSpecializationAndIteration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:243a3f2923540a47b84dd59c8ea612e809a088574a29225fac24fec063d1f22c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def autonomous
    (step : State → State)
    (Observation : Resolution → Type uO)
    (observe : ∀ ρ, State → Observation ρ) :
    System PUnit State Resolution where
  Observation := Observation
  step := fun _ => step
  observe := observe

/-- Running `t` trivial inputs in the autonomous specialization is `t` iteration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/AutonomousSpecializationAndIteration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/AutonomousSpecializationAndIteration.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516814df52c4e9288da63cb9fc3b9ea271567233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
