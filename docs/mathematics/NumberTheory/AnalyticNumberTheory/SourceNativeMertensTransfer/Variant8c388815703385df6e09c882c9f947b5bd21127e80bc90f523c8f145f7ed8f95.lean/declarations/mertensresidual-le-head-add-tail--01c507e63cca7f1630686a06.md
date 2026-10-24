# mertensResidual_le_head_add_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76dd8980-675f-75af-f03b-f4014c4f3344",
  "kind": "theorem",
  "lexical_name": "mertensResidual_le_head_add_tail",
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
  "slug": "mertensresidual-le-head-add-tail--01c507e63cca7f1630686a06",
  "source": {
    "blob": "cfd9b19e9aa9749b57aff657ebccaf6eb6341b47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01c507e63cca7f1630686a06a0f3a9bcdff69e0e4f70758e8f5e7a9316b40ca4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76dd8980-675f-75af-f03b-f4014c4f3344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_le_head_add_tail (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A ≤ (angularHead A (growingHeight A)).re + twoLineTailConstant / A ^ 9 := by
  have hr := angularContour_re_le_head_add_tail A hA
  rw [← mertensResidual_eq_angularContour A hA, Complex.ofReal_re] at hr
  exact hr

/-- The single signed native head witness needed by the maintained residual consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfd9b19e9aa9749b57aff657ebccaf6eb6341b47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
