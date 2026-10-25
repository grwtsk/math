# step_refines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:844ae6c4-aa55-b6e8-9904-ad5c32369018",
  "kind": "theorem",
  "lexical_name": "step_refines",
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
  "slug": "step-refines--7a884622a34091950cdafa15",
  "source": {
    "blob": "cf04c935a6af0dcece9dbca548784d88fc8feefb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a884622a34091950cdafa15861f3f9cc64b06d249391f171f0fef2a7c3b7532",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844ae6c4-aa55-b6e8-9904-ad5c32369018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem step_refines
    {SpecificationState : Type u}
    {ImplementationState : Type v}
    {SpecificationInput : Type w}
    {ImplementationInput : Type x}
    {SpecificationObservation ImplementationObservation : Type y}
    (refinement : Refinement SpecificationState ImplementationState
      SpecificationInput ImplementationInput SpecificationObservation
      ImplementationObservation)
    (implementation : ImplementationState)
    (input : ImplementationInput)
    (valid : refinement.validImplementationState implementation) :
    refinement.abstraction
        (refinement.implementationTransition implementation input) =
      refinement.specificationTransition
        (refinement.abstraction implementation)
        (refinement.inputTranslation input) :=
  refinement.transitionSoundness implementation input valid

end Refinement

end Surface.ContinuousAssurance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf04c935a6af0dcece9dbca548784d88fc8feefb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
