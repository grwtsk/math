# source_mul_sourceGreenConvolution_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f959b248-e297-7a72-a23f-2799a8fc45d3",
  "kind": "theorem",
  "lexical_name": "source_mul_sourceGreenConvolution_integral",
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
  "slug": "source-mul-sourcegreenconvolution-integral--5adff398a394860316e8dffa",
  "source": {
    "blob": "630c714d5649b5dd7133cb9996b2d37aaccd5333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 270,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5adff398a394860316e8dffa7fc66d409cc96f216998449911d012efd0ac64e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f959b248-e297-7a72-a23f-2799a8fc45d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_mul_sourceGreenConvolution_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A x * sourceGreenConvolution A x) =
      ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  have hi : Integrable (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x *
      causalSourceTail A (-x)) :=
    ((normalizedTest_contDiff A hA).continuous.mul
      ((causalSourceTail_contDiff hA).continuous.comp continuous_neg))
        |>.integrable_of_hasCompactSupport ((normalizedTest_hasCompactSupport A hA).mul_right)
  simp_rw [sourceGreenConvolution_eq_tails hA, mul_add]
  rw [integral_add (source_mul_causalSourceTail_integrable hA) hi,
    source_mul_reflected_tail_integral hA, source_mul_causalSourceTail_integral hA]
  ring

/-- The independent correlation pairing equals the independently defined convolution pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630c714d5649b5dd7133cb9996b2d37aaccd5333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
