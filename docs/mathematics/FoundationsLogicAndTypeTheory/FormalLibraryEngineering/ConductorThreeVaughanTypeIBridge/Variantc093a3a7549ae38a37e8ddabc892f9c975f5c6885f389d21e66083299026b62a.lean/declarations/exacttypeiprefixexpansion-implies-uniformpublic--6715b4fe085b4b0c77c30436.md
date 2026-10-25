# exactTypeIPrefixExpansion_implies_uniformPublic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "560d389570ba6ec7691b64fba781fcec05b4456e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ba93209-a98d-a23c-4661-446faea3c88d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:321a68b2-782d-4f81-24d1-204dd4cc8d4f",
  "kind": "theorem",
  "lexical_name": "exactTypeIPrefixExpansion_implies_uniformPublic",
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
  "slug": "exacttypeiprefixexpansion-implies-uniformpublic--6715b4fe085b4b0c77c30436",
  "source": {
    "blob": "560d389570ba6ec7691b64fba781fcec05b4456e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6715b4fe085b4b0c77c304362225867652e9f3406b520264b67efefe885e30f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:321a68b2-782d-4f81-24d1-204dd4cc8d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactTypeIPrefixExpansion_implies_uniformPublic
    (hExpansion : ExactConductorThreeTypeIPrefixExpansion) :
    UniformConductorThreeTypeIMaximal := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hBound⟩ :=
    exactTypeIPrefixExpansion_implies_uniform hExpansion epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN x hx
  rw [← convolutionTypeIPrefix_eq_public]
  exact hBound N hN x hx

end

end Surface.Core.ConductorThreeVaughanTypeIBridge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `560d389570ba6ec7691b64fba781fcec05b4456e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
