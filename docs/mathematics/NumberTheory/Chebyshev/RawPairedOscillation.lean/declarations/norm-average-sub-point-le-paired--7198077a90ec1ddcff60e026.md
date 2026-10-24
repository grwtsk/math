# norm_average_sub_point_le_paired

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96cb14fe-8a8e-7062-0c6b-6b5cb3e71612",
  "kind": "theorem",
  "lexical_name": "norm_average_sub_point_le_paired",
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
  "slug": "norm-average-sub-point-le-paired--7198077a90ec1ddcff60e026",
  "source": {
    "blob": "744cc7362b252c481c9716dd105112d0754db501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 39,
    "path": "GRWTSK/NumberTheory/Chebyshev/RawPairedOscillation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7198077a90ec1ddcff60e026945dbe11ee6b3e8f51b6a5c758e7a5b1851f5587",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RawPairedOscillation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96cb14fe-8a8e-7062-0c6b-6b5cb3e71612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_average_sub_point_le_paired (x h T : ℝ) (hh : 0 < h) (ha : 1 < x-h) :
    ‖rawAverage x h T-rawClassicalHead x T‖ ≤ pairedOscillation x h T := by
  have hraw : ContinuousOn (fun t => rawClassicalHead t T) (uIcc (x-h) (x+h)) := by
    intro t ht
    rw [uIcc_of_le (by linarith)] at ht
    exact (continuousAt_rawClassicalHead t T (ha.trans_le ht.1)).continuousWithinAt
  have hi : IntervalIntegrable (fun t => rawClassicalHead t T) volume (x-h) (x+h) :=
    hraw.intervalIntegrable
  have hr : IntervalIntegrable (fun t => rawClassicalHead (2*x-t) T) volume (x-h) (x+h) := by
    apply ContinuousOn.intervalIntegrable
    intro t ht
    rw [uIcc_of_le (by linarith)] at ht
    exact ((continuousAt_rawClassicalHead (2*x-t) T (by linarith [ht.2])).comp (by fun_prop)).continuousWithinAt
  have href := intervalIntegral.integral_comp_sub_left (f := fun t => rawClassicalHead t T)
    (a := x-h) (b := x+h) (2*x)
  have hl : 2*x-(x+h) = x-h := by ring
  have hu : 2*x-(x-h) = x+h := by ring
  rw [hl,hu] at href
  have he : rawAverage x h T-rawClassicalHead x T =
      (∫ t in (x-h)..(x+h), rawClassicalHead t T+rawClassicalHead (2*x-t) T-
        2*rawClassicalHead x T)/((4*h:ℝ):ℂ) := by
    rw [intervalIntegral.integral_sub (hi.add hr) intervalIntegrable_const,
      intervalIntegral.integral_add hi hr,href,intervalIntegral.integral_const]
    have hd : x+h-(x-h) = 2*h := by ring
    rw [hd]
    unfold rawAverage
    simp only [Complex.real_smul]
    have hhC : (h:ℂ) ≠ 0 := by exact_mod_cast hh.ne'
    push_cast
    field_simp [hhC]
    ring
  rw [he,norm_div,Complex.norm_real,Real.norm_eq_abs,abs_of_pos (by positivity : 0 < 4*h)]
  exact div_le_div_of_nonneg_right
    (intervalIntegral.norm_integral_le_integral_norm (by linarith : x-h ≤ x+h)) (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RawPairedOscillation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RawPairedOscillation.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744cc7362b252c481c9716dd105112d0754db501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
