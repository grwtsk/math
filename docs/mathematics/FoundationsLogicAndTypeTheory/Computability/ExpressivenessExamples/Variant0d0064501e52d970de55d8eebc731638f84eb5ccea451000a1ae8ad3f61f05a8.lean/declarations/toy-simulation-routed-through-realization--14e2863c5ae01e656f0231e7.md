# toy_simulation_routed_through_realization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c066cc8c-fe7f-22a8-d4c1-e786c38b9cf4",
  "kind": "theorem",
  "lexical_name": "toy_simulation_routed_through_realization",
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
  "slug": "toy-simulation-routed-through-realization--14e2863c5ae01e656f0231e7",
  "source": {
    "blob": "9777ee904a31f865def72a3c58d6cfea44fac20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Variant0d0064501e52d970de55d8eebc731638f84eb5ccea451000a1ae8ad3f61f05a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14e2863c5ae01e656f0231e77444ea8583127bf0190d45775d090d83186a4e2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Variant0d0064501e52d970de55d8eebc731638f84eb5ccea451000a1ae8ad3f61f05a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c066cc8c-fe7f-22a8-d4c1-e786c38b9cf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toy_simulation_routed_through_realization :
    toyAccepts toyProgram 5 12 :=
  presentation_with_realization_is_computationally_expressive
    toyMachineSemantics
    toyTuringCompletenessWitness

/-- The same syntax still owns no Turing-completeness authority by itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Variant0d0064501e52d970de55d8eebc731638f84eb5ccea451000a1ae8ad3f61f05a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Variant0d0064501e52d970de55d8eebc731638f84eb5ccea451000a1ae8ad3f61f05a8.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9777ee904a31f865def72a3c58d6cfea44fac20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
