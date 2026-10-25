# example_refinement_stability_gamma_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b24d04ec-ba2c-cf9f-3c22-108eeb3abb4d",
  "kind": "theorem",
  "lexical_name": "example_refinement_stability_gamma_convergence",
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
  "slug": "example-refinement-stability-gamma-convergence--e5cf43cfe7c6c047f5e7e1d3",
  "source": {
    "blob": "82b619ca599ad079557ba6366107a81335ae69f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinementStabilityExamples/Variant82e0a4f89048820abbff9bf9628a96a18e8df09f82e2436c8b073dea14b6f922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5cf43cfe7c6c047f5e7e1d33e4035d9717c75d1f31163d874fd612e225087bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinementStabilityExamples/Variant82e0a4f89048820abbff9bf9628a96a18e8df09f82e2436c8b073dea14b6f922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b24d04ec-ba2c-cf9f-3c22-108eeb3abb4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_refinement_stability_gamma_convergence :
    toyRefinementStabilityCertificate.refinementStable ∧
    toyRefinementStabilityCertificate.minimizers.minimizersConvergeToLimitClass ∧
    toyRefinementStabilityCertificate.endpoints.endpointsConvergeToLimitClass :=
  let h := refinement_stability_gamma_convergence toyRefinementStabilityCertificate
  ⟨h.2.2.2.2.2.2.2.2.2.2.2.1,
   h.2.2.2.2.2.2.2.1,
   h.2.2.2.2.2.2.2.2.2.2.1⟩

end RefinementStabilityExamples
end AnalyticNumber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinementStabilityExamples/Variant82e0a4f89048820abbff9bf9628a96a18e8df09f82e2436c8b073dea14b6f922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinementStabilityExamples/Variant82e0a4f89048820abbff9bf9628a96a18e8df09f82e2436c8b073dea14b6f922.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b619ca599ad079557ba6366107a81335ae69f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
