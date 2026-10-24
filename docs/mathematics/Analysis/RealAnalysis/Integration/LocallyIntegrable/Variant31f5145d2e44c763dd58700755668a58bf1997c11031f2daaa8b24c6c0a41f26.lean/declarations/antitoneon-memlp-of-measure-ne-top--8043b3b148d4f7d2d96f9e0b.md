# AntitoneOn.memLp_of_measure_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b60c712bc50594e180911367dda57a671f24c5d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61ea02dd-5679-b238-31fa-9092238bcdce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:033fabb0-da3f-b854-5f6b-68ce3c858816",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.memLp_of_measure_ne_top",
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
  "slug": "antitoneon-memlp-of-measure-ne-top--8043b3b148d4f7d2d96f9e0b",
  "source": {
    "blob": "b60c712bc50594e180911367dda57a671f24c5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 538,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8043b3b148d4f7d2d96f9e0b2174ba47e1127dcba3d14e46bfe8abe08a4d17a5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:033fabb0-da3f-b854-5f6b-68ce3c858816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.memLp_of_measure_ne_top (hanti : AntitoneOn f s) {a b : X}
    (ha : IsLeast s a) (hb : IsGreatest s b) (hs : μ s ≠ ∞) (h's : MeasurableSet s) :
    MemLp f p (μ.restrict s) :=
  MonotoneOn.memLp_of_measure_ne_top (E := Eᵒᵈ) hanti ha hb hs h's

@[deprecated (since := "2025-02-21")]
alias AntitoneOn.memℒp_of_measure_ne_top := AntitoneOn.memLp_of_measure_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60c712bc50594e180911367dda57a671f24c5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
