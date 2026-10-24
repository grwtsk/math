# Simulation.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bcd32e2-bff6-8b72-36dc-082f81ae83fd",
  "kind": "theorem",
  "lexical_name": "Simulation.comp",
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
  "slug": "simulation-comp--341300397a94ce9d189cf3cc",
  "source": {
    "blob": "bec971c7707b5ba49d8c73574a3d25790f0292fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 198,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/EffectSimulation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:341300397a94ce9d189cf3cc3a291f7a082a1860977caf3894d2f5784207e8d5",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/EffectSimulation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bcd32e2-bff6-8b72-36dc-082f81ae83fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Simulation.comp
    {Concrete : Type uC} {Middle : Type uA} {Abstract : Type uB} {Label : Type uL}
    {concrete : System Concrete Label} {middle : System Middle Label}
    {abstract : System Abstract Label}
    {firstRelation : Concrete → Middle → Prop}
    {secondRelation : Middle → Abstract → Prop}
    (first : Simulation concrete middle firstRelation)
    (second : Simulation middle abstract secondRelation) :
    Simulation concrete abstract (RelComp firstRelation secondRelation) := by
  constructor
  · intro source initial
    cases first.initial initial with
    | intro middleSource firstInitial =>
        cases second.initial firstInitial.1 with
        | intro abstractSource secondInitial =>
            exact ⟨abstractSource, secondInitial.1,
              ⟨middleSource, firstInitial.2, secondInitial.2⟩⟩
  · intro source target abstractSource label correspondence concreteStep
    cases correspondence with
    | intro middleSource relations =>
        cases first.step relations.1 concreteStep with
        | intro middleTarget firstStep =>
            cases second.step relations.2 firstStep.1 with
            | intro abstractTarget secondStep =>
                exact ⟨abstractTarget, secondStep.1,
                  ⟨middleTarget, firstStep.2, secondStep.2⟩⟩

/-- Every system simulates itself by state equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/EffectSimulation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/EffectSimulation.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec971c7707b5ba49d8c73574a3d25790f0292fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
