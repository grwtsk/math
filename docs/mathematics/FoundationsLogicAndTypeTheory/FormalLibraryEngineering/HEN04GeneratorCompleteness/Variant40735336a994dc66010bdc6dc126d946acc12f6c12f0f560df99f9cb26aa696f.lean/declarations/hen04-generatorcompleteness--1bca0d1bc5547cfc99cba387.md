# hen04_generatorCompleteness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d05d5717-ec91-288e-5153-d8ef31dd5bd2",
  "kind": "theorem",
  "lexical_name": "hen04_generatorCompleteness",
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
  "slug": "hen04-generatorcompleteness--1bca0d1bc5547cfc99cba387",
  "source": {
    "blob": "f2cbe524028787c17adfe7dbf1266a2d95466413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN04GeneratorCompleteness/Variant40735336a994dc66010bdc6dc126d946acc12f6c12f0f560df99f9cb26aa696f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bca0d1bc5547cfc99cba3877cbe0747c30f6a9922b0d760e57262df0631c5e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN04GeneratorCompleteness/Variant40735336a994dc66010bdc6dc126d946acc12f6c12f0f560df99f9cb26aa696f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d05d5717-ec91-288e-5153-d8ef31dd5bd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hen04_generatorCompleteness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    ∃ hObj :
        ∀ X : S.categories.CohAlg.Obj,
          AlgebraicallyGenerated
            S.generators
            S.cohHenEpi
            (S.functors.HenPullback.obj X),
      EquivalenceWitness
        (restrictCodomain
          S.functors.HenPullback
          (AlgebraicallyGenerated
            S.generators
            S.cohHenEpi)
          hObj) := by
  have hExact :=
    (registry.hen01) hProfile
  have hClosed :=
    (registry.hen02) hProfile
  let hObj :=
    imageObjectsGenerated
      S.functors.HenPullback
      S.cohAlgEpi
      S.cohHenEpi
      S.generators
      hSource
      hExact.preservesEpis
  refine ⟨hObj, ?_⟩
  exact equivalenceRestrictCodomain
    S.functors.HenPullback
    (AlgebraicallyGenerated S.generators S.cohHenEpi)
    hObj
    hExact.full
    hExact.faithful
    (generatedIsEssentialImage
      S.functors.HenPullback
      S.cohHenEpi
      S.generators
      hClosed.quotientClosed)

end FCRS.Algebraization.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN04GeneratorCompleteness/Variant40735336a994dc66010bdc6dc126d946acc12f6c12f0f560df99f9cb26aa696f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN04GeneratorCompleteness/Variant40735336a994dc66010bdc6dc126d946acc12f6c12f0f560df99f9cb26aa696f.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2cbe524028787c17adfe7dbf1266a2d95466413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
