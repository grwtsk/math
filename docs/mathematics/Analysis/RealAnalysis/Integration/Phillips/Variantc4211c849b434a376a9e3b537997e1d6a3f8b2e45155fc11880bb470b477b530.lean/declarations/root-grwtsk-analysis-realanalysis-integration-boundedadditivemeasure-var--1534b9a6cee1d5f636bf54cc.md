# _root_.GRWTSK.Analysis.RealAnalysis.Integration.BoundedAdditiveMeasure.Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.MeasureTheory.Measure.extensionToBoundedFunctions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3540c3ad67d06e2b8343d6596fa83a698b901bf9b2bf537e17be81fc4984eadd",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.BoundedAdditiveMeasure.Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.MeasureTheory.Measure.extensionToBoundedFunctions",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-boundedadditivemeasure-var--1534b9a6cee1d5f636bf54cc",
  "source": {
    "blob": "991551b0c73179f1f965fb62118e5b9f577fdfde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1534b9a6cee1d5f636bf54cc7621fb9ca7584f55ed6056bece3b12bac60c7f7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3540c3ad67d06e2b8343d6596fa83a698b901bf9b2bf537e17be81fc4984eadd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Analysis.RealAnalysis.Integration.BoundedAdditiveMeasure.Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.MeasureTheory.Measure.extensionToBoundedFunctions [MeasurableSpace α] (μ : Measure α)
    [IsFiniteMeasure μ] : (DiscreteCopy α →ᵇ ℝ) →L[ℝ] ℝ :=
  (exists_linear_extension_to_boundedFunctions μ).choose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991551b0c73179f1f965fb62118e5b9f577fdfde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
