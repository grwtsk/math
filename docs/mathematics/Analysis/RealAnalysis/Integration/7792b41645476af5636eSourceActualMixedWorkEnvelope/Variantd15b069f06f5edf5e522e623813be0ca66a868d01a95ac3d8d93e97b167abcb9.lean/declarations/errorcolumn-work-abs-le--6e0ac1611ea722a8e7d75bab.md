# errorColumn_work_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ba7cbe3-2153-9c85-0505-ff76b30b531d",
  "kind": "theorem",
  "lexical_name": "errorColumn_work_abs_le",
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
  "slug": "errorcolumn-work-abs-le--6e0ac1611ea722a8e7d75bab",
  "source": {
    "blob": "e72383cf78b6b20ee76f0118d4f4940524979c65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variantd15b069f06f5edf5e522e623813be0ca66a868d01a95ac3d8d93e97b167abcb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e0ac1611ea722a8e7d75babad88fb7532d28f1f4f9fcac9f4abc986a461426f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variantd15b069f06f5edf5e522e623813be0ca66a868d01a95ac3d8d93e97b167abcb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ba7cbe3-2153-9c85-0505-ff76b30b531d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem errorColumn_work_abs_le {A k : ℝ} (hA : 1 ≤ A) (hk : 0 < k)
    (l b : ℝ) (hlb : l ≤ b) :
    |∫ t in l..b, mangoldtLogError t *
      (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        (∫ t in l..b, |mangoldtLogError t| * Real.exp (t / 2)) * cellMass k := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  calc
    _ ≤ ∫ t in l..b, |mangoldtLogError t *
        (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))| :=
      intervalIntegral.abs_integral_le_integral_abs hlb
    _ ≤ ∫ t in l..b,
        c * (|mangoldtLogError t| * Real.exp (t / 2)) * cellMass k := by
      apply intervalIntegral.integral_mono_on hlb
        (errorColumn_integrable (by linarith : 0 < A) l b k hlb).abs
        (((weightedErrorAbs_integrable l b hlb).const_mul c).mul_const (cellMass k))
      intro t _
      exact errorColumn_pointwise_abs_le hA hk t
    _ = _ := by
      rw [intervalIntegral.integral_mul_const, intervalIntegral.integral_const_mul]

/-- All actual signed cells are reconstructed before applying the absolute envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variantd15b069f06f5edf5e522e623813be0ca66a868d01a95ac3d8d93e97b167abcb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variantd15b069f06f5edf5e522e623813be0ca66a868d01a95ac3d8d93e97b167abcb9.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72383cf78b6b20ee76f0118d4f4940524979c65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
