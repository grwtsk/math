# covarianceBilin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:596aad0058c566569d1f9a7fd3b22968b0735522b00dc7e3df373034559c5f87",
  "kind": "def",
  "lexical_name": "covarianceBilin",
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
  "slug": "covariancebilin--2229fd91f4d556edc1d33e7a",
  "source": {
    "blob": "e5d539fe677f0d1da209b9776f9e977c7fa58be1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 58,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2229fd91f4d556edc1d33e7ae29752f1c5da5a8534b8d9554c11a11a39ec1def",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:596aad0058c566569d1f9a7fd3b22968b0735522b00dc7e3df373034559c5f87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def covarianceBilin (μ : Measure E) : E →L[ℝ] E →L[ℝ] ℝ :=
  ContinuousLinearMap.bilinearComp (covarianceBilinDual μ)
    (toDualMap ℝ E).toContinuousLinearMap (toDualMap ℝ E).toContinuousLinearMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d539fe677f0d1da209b9776f9e977c7fa58be1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
