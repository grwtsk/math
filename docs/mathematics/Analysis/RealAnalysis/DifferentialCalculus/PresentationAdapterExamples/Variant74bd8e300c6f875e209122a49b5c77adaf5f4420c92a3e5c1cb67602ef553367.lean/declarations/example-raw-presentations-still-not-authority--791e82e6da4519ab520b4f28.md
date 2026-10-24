# example_raw_presentations_still_not_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b8a6e20fdca12502f38410ff526ddbdad6f35de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68e0c068-c11c-54f8-41db-909afc0141f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae838055-8c8f-b0b7-fb26-e6b9a69b4fb8",
  "kind": "theorem",
  "lexical_name": "example_raw_presentations_still_not_authority",
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
  "slug": "example-raw-presentations-still-not-authority--791e82e6da4519ab520b4f28",
  "source": {
    "blob": "1b8a6e20fdca12502f38410ff526ddbdad6f35de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PresentationAdapterExamples/Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:791e82e6da4519ab520b4f28f179856eed2a7cd3c08a73576643a6ad28d3b1ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PresentationAdapterExamples/Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae838055-8c8f-b0b7-fb26-e6b9a69b4fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_raw_presentations_still_not_authority :
    ¬ Presentation.SpinePresentationOwnsClaim exampleRHSpinePresentation ∧
      ¬ Presentation.SpinePresentationOwnsClaim
          examplePrismaticSpinePresentation :=
  ⟨PresentationAdapter.raw_spine_presentation_not_analytic_authority _,
    PresentationAdapter.raw_spine_presentation_not_analytic_authority _⟩

end PresentationAdapterExamples
end AnalyticNumber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PresentationAdapterExamples/Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PresentationAdapterExamples/Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b8a6e20fdca12502f38410ff526ddbdad6f35de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
