# hen14_threeWayCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89beec4b9d7fbde8f5ba65438d9c238182846b28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c28ba43-01a1-5c5a-8424-a7c6bd83b4cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:837d7892-2d15-7da6-6aec-5029a2a0328f",
  "kind": "theorem",
  "lexical_name": "hen14_threeWayCriterion",
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
  "slug": "hen14-threewaycriterion--549cc2cfa0cd48dbf303a710",
  "source": {
    "blob": "89beec4b9d7fbde8f5ba65438d9c238182846b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN14ThreeWayCriterion/Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:549cc2cfa0cd48dbf303a710033a78eb494c678c91070d2aa3370e622dd4a7b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN14ThreeWayCriterion/Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:837d7892-2d15-7da6-6aec-5029a2a0328f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hen14_threeWayCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    (EssentiallySurjective S.functors.HenPullback ↔
      ∀ Y : S.categories.CohHen.Obj,
        AlgebraicallyGenerated
          S.generators
          S.cohHenEpi
          Y) ∧
    ((∀ Y : S.categories.CohHen.Obj,
        AlgebraicallyGenerated
          S.generators
          S.cohHenEpi
          Y) ↔
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi) := by
  have hCriterion :=
    hen05_hsgCriterion
      S registry hProfile hSource
  exact ⟨hCriterion, Iff.rfl⟩

end FCRS.Algebraization.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN14ThreeWayCriterion/Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN14ThreeWayCriterion/Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89beec4b9d7fbde8f5ba65438d9c238182846b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
