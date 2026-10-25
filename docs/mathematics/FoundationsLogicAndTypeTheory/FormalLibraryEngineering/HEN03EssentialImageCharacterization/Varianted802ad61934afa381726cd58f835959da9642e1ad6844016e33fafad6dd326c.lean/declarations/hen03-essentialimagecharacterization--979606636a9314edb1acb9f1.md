# hen03_essentialImageCharacterization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4523ec2a528f354886e69580246d24a4c11652c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:000e669f-2f46-b3ed-4a43-2f5314ff98f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:671cbcdf-e916-65dc-1ede-a07439e5b786",
  "kind": "theorem",
  "lexical_name": "hen03_essentialImageCharacterization",
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
  "slug": "hen03-essentialimagecharacterization--979606636a9314edb1acb9f1",
  "source": {
    "blob": "b4523ec2a528f354886e69580246d24a4c11652c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN03EssentialImageCharacterization/Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:979606636a9314edb1acb9f1763b332e50ffe57a57257f67736465410b0448f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN03EssentialImageCharacterization/Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:671cbcdf-e916-65dc-1ede-a07439e5b786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hen03_essentialImageCharacterization
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    ∀ Y : S.categories.CohHen.Obj,
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y ↔
      EssentialImage S.functors.HenPullback Y := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  have hClosed :=
    (hen02_subquotientClosure S registry) hProfile
  exact generatedIffEssentialImage
    S.functors.HenPullback
    S.cohAlgEpi
    S.cohHenEpi
    S.generators
    hSource
    hExact.preservesEpis
    hClosed.quotientClosed

end FCRS.Algebraization.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN03EssentialImageCharacterization/Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN03EssentialImageCharacterization/Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4523ec2a528f354886e69580246d24a4c11652c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
