# actualXiLogPrimitive_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:845b37c3-d178-4268-d472-74dc4681affb",
  "kind": "theorem",
  "lexical_name": "actualXiLogPrimitive_ae_hasDerivAt",
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
  "slug": "actualxilogprimitive-ae-hasderivat--92c2d1cd6c3836b1d1f71dd3",
  "source": {
    "blob": "66e16544656eb196e786ac307a156ff936180307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variantba2b79df012edc79eeafa62e7473740473f8041e6fa3c27b79ed6957ffc62bee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92c2d1cd6c3836b1d1f71dd3652fc0fd0dfe8cc60ca32829a181ccb1939a73f7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variantba2b79df012edc79eeafa62e7473740473f8041e6fa3c27b79ed6957ffc62bee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:845b37c3-d178-4268-d472-74dc4681affb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogPrimitive_ae_hasDerivAt (b : ℝ) :
    ∀ᵐ t : ℝ, t ∈ uIcc (Real.log 2) b →
      HasDerivAt actualXiLogPrimitive (actualXiLogDensity t) t := by
  filter_upwards [(actualXiLogDensity_intervalIntegrable (Real.log 2) b).
    ae_hasDerivAt_integral] with t ht
  intro hmem
  exact ht hmem (Real.log 2) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variantba2b79df012edc79eeafa62e7473740473f8041e6fa3c27b79ed6957ffc62bee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variantba2b79df012edc79eeafa62e7473740473f8041e6fa3c27b79ed6957ffc62bee.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e16544656eb196e786ac307a156ff936180307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
