# sourceNormalization_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dece22e3-d9fa-7845-486c-5e6fa0a010cb",
  "kind": "theorem",
  "lexical_name": "sourceNormalization_hasDerivAt",
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
  "slug": "sourcenormalization-hasderivat--a4a81c6c1915c0f97b50cab6",
  "source": {
    "blob": "7e7f3cb8a290d3d59d8785cf78c8db6e6f55e1e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4a81c6c1915c0f97b50cab6288bc3d91c39d9a34ed4d5fd03101ea577bc5422",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dece22e3-d9fa-7845-486c-5e6fa0a010cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceNormalization_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt sourceNormalization (normalizationDerivative A) A := by
  have h := ((hasDerivAt_const A ((65536 / 109395 : ℝ) / 16)).add
    ((hasDerivAt_const A (131072 / 45045 : ℝ)).div
      (((hasDerivAt_id A).pow 2).const_mul 2) (by
        change 2 * A ^ 2 ≠ 0
        positivity))).add
    ((hasDerivAt_const A (196608 / 5005 : ℝ)).div
      ((hasDerivAt_id A).pow 4) (by
        change A ^ 4 ≠ 0
        positivity))
  convert h using 1 <;> first
    | rfl
    | (dsimp [normalizationDerivative]; field_simp; ring)

/-- The original normalization's ordinary derivative has the explicit rational form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e7f3cb8a290d3d59d8785cf78c8db6e6f55e1e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
