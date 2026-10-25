# example_spines_not_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9aa83eae36d00b9055818f118421ea3f338d3388",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fbfd337-e25e-d020-314a-f7e2257140b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bd63e0f-69b0-31d0-3e08-6c11c83edfcd",
  "kind": "theorem",
  "lexical_name": "example_spines_not_authority",
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
  "slug": "example-spines-not-authority--da604a03940c9c14115ce534",
  "source": {
    "blob": "9aa83eae36d00b9055818f118421ea3f338d3388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da604a03940c9c14115ce534cf64fb567a3ca4caedfa860c1ee2807e8559c8c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bd63e0f-69b0-31d0-3e08-6c11c83edfcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_spines_not_authority :
    ¬ SpinePresentationOwnsClaim exampleRHSpinePresentation ∧
      ¬ SpinePresentationOwnsClaim exampleTraceFormulaSpinePresentation ∧
      ¬ SpinePresentationOwnsClaim exampleLanglandsSpinePresentation ∧
      ¬ SpinePresentationOwnsClaim examplePrismaticSpinePresentation :=
  ⟨spine_presentation_not_theorem_authority _,
    spine_presentation_not_theorem_authority _,
    spine_presentation_not_theorem_authority _,
    spine_presentation_not_theorem_authority _⟩

/-- Toy realization certificate for a toy spine presentation whose claim is
`True`. The claim is recovered from the certificate, not from syntax. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aa83eae36d00b9055818f118421ea3f338d3388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
