# _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableEvalMatrix.Variant85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f.Measurable.eval_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3549fdfe-a7cd-2912-3885-8ca32f318b4a",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableEvalMatrix.Variant85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f.Measurable.eval_matrix",
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
  "slug": "root-grwtsk-analysis-measuretheory-rootmeasurableevalmatrix-variant85ec3--f3b83f828bb4589556151f40",
  "source": {
    "blob": "7a9de98c955107207d74541aa1588b52135742a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 38,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableSpace/Variant1cf1f82b8fe7dc32b18e9bc1256ac03d67f73746e3b3cab8699e208794632511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3b83f828bb4589556151f40984acb8b1e0f2de97c0e7952fafc9f1a7a95d348",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableSpace/Variant1cf1f82b8fe7dc32b18e9bc1256ac03d67f73746e3b3cab8699e208794632511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3549fdfe-a7cd-2912-3885-8ca32f318b4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableEvalMatrix.Variant85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f.Measurable.eval_matrix {i : m} {j : n} {M : β → Matrix m n α} (hM : Measurable M) :
    Measurable (M · i j) := hM.eval.eval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableSpace/Variant1cf1f82b8fe7dc32b18e9bc1256ac03d67f73746e3b3cab8699e208794632511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableSpace/Variant1cf1f82b8fe7dc32b18e9bc1256ac03d67f73746e3b3cab8699e208794632511.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9de98c955107207d74541aa1588b52135742a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
