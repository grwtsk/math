# cf04_traversalPreservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93bdac3b1fbf2dcf4daba2b0692a9fc6bd880348",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fa8e0c9-cad0-4f92-4dea-c24ccc7a423c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b0791f9-b28d-e950-fa19-2707e62a06f9",
  "kind": "theorem",
  "lexical_name": "cf04_traversalPreservation",
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
  "slug": "cf04-traversalpreservation--43a1507e63ed5587823d9102",
  "source": {
    "blob": "93bdac3b1fbf2dcf4daba2b0692a9fc6bd880348",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF04TraversalPreservation/Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43a1507e63ed5587823d9102805be65b1066bbafcdb54d5bcdbff4d6e98cfda5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF04TraversalPreservation/Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0791f9-b28d-e950-fa19-2707e62a06f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cf04_traversalPreservation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF04Claim M := by
  exact {
    preserved := by
      intro c
      exact ⟨
        occurrencePreserved_of_sieveTransport (M.sieveTransport c),
        registry.cf04.weightPreserved c
      ⟩
    sourceWeightCorrect := registry.cf04.sourceWeightCorrect
    fixedWeightCorrect := registry.cf04.fixedWeightCorrect
  }

end FCRS.ControlledPlane.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF04TraversalPreservation/Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF04TraversalPreservation/Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93bdac3b1fbf2dcf4daba2b0692a9fc6bd880348` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
