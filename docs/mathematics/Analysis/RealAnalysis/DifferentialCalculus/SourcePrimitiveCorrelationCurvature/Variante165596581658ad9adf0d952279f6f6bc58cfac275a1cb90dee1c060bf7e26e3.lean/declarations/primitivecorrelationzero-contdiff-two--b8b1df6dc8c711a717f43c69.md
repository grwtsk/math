# primitiveCorrelationZero_contDiff_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8c52ce9-0b7c-5ce7-a3a0-3057a5867afc",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationZero_contDiff_two",
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
  "slug": "primitivecorrelationzero-contdiff-two--b8b1df6dc8c711a717f43c69",
  "source": {
    "blob": "9acebdcb4c795318facfd5b7c85b0103d01b7975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8b1df6dc8c711a717f43c69e70bd11e8f17173be1e7f29c8d0a4784dc7fc419",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8c52ce9-0b7c-5ce7-a3a0-3057a5867afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationZero_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (primitiveCorrelationZero A) :=
  compact_autocorrelation_contDiff_two
    ((normalizedPrimitiveBump_contDiff hA).of_le (by norm_num))
    (normalizedPrimitiveBump_hasCompactSupport hA)

/-- The first-derivative correlation is globally C² using only the primitive's C². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9acebdcb4c795318facfd5b7c85b0103d01b7975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
