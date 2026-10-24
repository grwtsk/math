# residual_eq_compression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2336844f-6d7b-0439-2d35-c49d4820452e",
  "kind": "theorem",
  "lexical_name": "residual_eq_compression",
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
  "slug": "residual-eq-compression--803adc3ab521e730eac56c57",
  "source": {
    "blob": "f8de5e40896e392501f2e4eace05111d7f2a2ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variantfc7678c785efa567efc335c4e29ceb43d540e803cc9cbf6c44cdd3593b1e64c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:803adc3ab521e730eac56c574b06383f6ef1465fa4321ac9888debf68438d3ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variantfc7678c785efa567efc335c4e29ceb43d540e803cc9cbf6c44cdd3593b1e64c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2336844f-6d7b-0439-2d35-c49d4820452e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_eq_compression (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = compression A (-1 / 4) (1 / A ^ 2) / sourceNormalization A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment compression exponentialTest
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro n _
  rw [correlation_eq_source_profile A (Real.log n) hA]
  ring

/-- The rank-one certificate is now consumed by the actual source, with no
supplied readout equality. A uniform B and an all-real certificate remain open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variantfc7678c785efa567efc335c4e29ceb43d540e803cc9cbf6c44cdd3593b1e64c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variantfc7678c785efa567efc335c4e29ceb43d540e803cc9cbf6c44cdd3593b1e64c4.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8de5e40896e392501f2e4eace05111d7f2a2ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
