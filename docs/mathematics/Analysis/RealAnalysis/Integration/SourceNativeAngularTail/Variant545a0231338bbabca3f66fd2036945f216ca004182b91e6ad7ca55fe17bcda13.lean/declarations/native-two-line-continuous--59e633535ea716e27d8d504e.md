# native_two_line_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2fe3363-17d1-0c2a-6ed4-626cd0a7e6d1",
  "kind": "theorem",
  "lexical_name": "native_two_line_continuous",
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
  "slug": "native-two-line-continuous--59e633535ea716e27d8d504e",
  "source": {
    "blob": "c6274aeb7208914809b686600312510be00275c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant545a0231338bbabca3f66fd2036945f216ca004182b91e6ad7ca55fe17bcda13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59e633535ea716e27d8d504ecd3b4e00fa6303d07e806ff576aeb8db5000f887",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant545a0231338bbabca3f66fd2036945f216ca004182b91e6ad7ca55fe17bcda13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2fe3363-17d1-0c2a-6ed4-626cd0a7e6d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_two_line_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) := by
  have heq : (fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) =
      (fun t : ℝ ↦ dividedTransform A (((2 : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) ^ 2 /
        (sourceNormalization A : ℂ)) := by
    funext t
    exact nativeMellin_eq_dividedTransform A hA _ (shifted_two_ne_zero t)
  rw [heq]
  have hAp : 0 < A := by linarith
  have hscale : (A ^ (17 / 2 : ℝ) : ℝ) ≠ 0 := ne_of_gt (Real.rpow_pos_of_pos hAp _)
  have hscaleC : ((A ^ (17 / 2 : ℝ) : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hscale
  have hden : ∀ t : ℝ,
      ((A ^ (17 / 2 : ℝ) : ℝ) : ℂ) *
        (((2 : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) ^ 9 ≠ 0 := by
    intro t
    exact mul_ne_zero hscaleC (pow_ne_zero _ (shifted_two_ne_zero t))
  unfold dividedTransform transformPolynomial
  fun_prop

/-- The exact combined angular integrand has genuine continuity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant545a0231338bbabca3f66fd2036945f216ca004182b91e6ad7ca55fe17bcda13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant545a0231338bbabca3f66fd2036945f216ca004182b91e6ad7ca55fe17bcda13.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6274aeb7208914809b686600312510be00275c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
