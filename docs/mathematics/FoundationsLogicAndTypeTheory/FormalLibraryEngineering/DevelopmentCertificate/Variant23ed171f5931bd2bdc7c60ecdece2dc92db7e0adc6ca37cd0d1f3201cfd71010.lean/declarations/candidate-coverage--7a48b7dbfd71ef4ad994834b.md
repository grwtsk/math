# candidate_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "052295e8b92f546c8e571c33c5b0c3075ef7e050",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 7,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae377051-418b-ac52-fa0c-2fc3bc9c6fd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:027b3192-5001-b76a-619a-661471da07fb",
  "kind": "theorem",
  "lexical_name": "candidate_coverage",
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
  "slug": "candidate-coverage--7a48b7dbfd71ef4ad994834b",
  "source": {
    "blob": "052295e8b92f546c8e571c33c5b0c3075ef7e050",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 7,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variant23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a48b7dbfd71ef4ad994834b350042f70c88b4dab5fcf6c1d7b9a991f51a478a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variant23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:027b3192-5001-b76a-619a-661471da07fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_coverage :
      ((List.range 57).filter (fun n => decide
        (∀ h ∈ ([(0),(2)]:List ℤ), 2 ≤ (n:ℤ)+h ∧ (n:ℤ)+h ≤ 48)) = ([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46]:List ℕ)) ∧
      (∀ n : ℕ, (∀ h ∈ ([(0),(2)]:List ℤ), 2 ≤ (n:ℤ)+h ∧ (n:ℤ)+h ≤ 48) → n < 57) := by
        constructor
        · decide
        · intro n hn
          have upper := (hn (0) (by decide)).2
          omega
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variant23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variant23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052295e8b92f546c8e571c33c5b0c3075ef7e050` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
