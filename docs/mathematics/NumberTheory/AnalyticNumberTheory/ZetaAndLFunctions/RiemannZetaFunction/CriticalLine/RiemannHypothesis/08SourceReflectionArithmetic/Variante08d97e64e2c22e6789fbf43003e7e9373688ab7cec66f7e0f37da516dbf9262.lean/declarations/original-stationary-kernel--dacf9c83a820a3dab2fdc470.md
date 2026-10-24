# original_stationary_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3750e06d30d6b7975949f585299e1c4f54258495",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbc419e6-4904-193e-de07-7ac542b934bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:258ceafb-53ba-efe9-ca24-d796447164c8",
  "kind": "theorem",
  "lexical_name": "original_stationary_kernel",
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
  "slug": "original-stationary-kernel--dacf9c83a820a3dab2fdc470",
  "source": {
    "blob": "3750e06d30d6b7975949f585299e1c4f54258495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 268,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variante08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dacf9c83a820a3dab2fdc470ab7832fb85f71963d0259bf8d52b20402562cb28",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variante08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:258ceafb-53ba-efe9-ca24-d796447164c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_stationary_kernel (A : ℝ) (hA : 0 < A) (s : ℝ) :
    ⟪sourceL2 A hA, translation s (sourceL2 A hA)⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A s : ℂ) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x-s) : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [sourceL2_coe_ae A hA, translatedSource_coe_ae A hA s] with x hq ht
      rw [hq, ht, RCLike.inner_apply']
      simp
    _ = _ := integral_ofReal

/-- The actual oriented reflected dual kernel, rather than a stationary autocorrelation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variante08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variante08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3750e06d30d6b7975949f585299e1c4f54258495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
