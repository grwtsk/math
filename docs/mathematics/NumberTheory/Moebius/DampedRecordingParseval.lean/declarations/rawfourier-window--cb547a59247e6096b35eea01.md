# rawFourier_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5bb1466-74f9-1db4-564f-a52087dc69a5",
  "kind": "theorem",
  "lexical_name": "rawFourier_window",
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
  "slug": "rawfourier-window--cb547a59247e6096b35eea01",
  "source": {
    "blob": "a6b99ae65b8872800dbbf9ecdf285a1a6e377f73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb547a59247e6096b35eea01a78e4e8d1fd60c940e454ca61f7a864189c0c021",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DampedRecordingParseval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5bb1466-74f9-1db4-564f-a52087dc69a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawFourier_window {σ T : ℝ} (hT : 0 ≤ T) (ξ : ℝ) :
    PPNC.rawFourier (window σ T) ξ =
      noteWindowLaplace wholePickup ((σ : ℂ) + (ξ : ℂ) * Complex.I) T := by
  rw [PPNC.rawFourier_eq_integral]
  unfold window noteWindowLaplace
  rw [max_eq_right hT, intervalIntegral.integral_of_le hT,
    ← integral_Icc_eq_integral_Ioc]
  have hindicator :
      (fun u : ℝ =>
        (Icc (0 : ℝ) T).indicator
            (fun v => (Real.exp (-σ * v) * wholePickup v : ℂ)) u *
          Complex.exp (-(u * ξ : ℂ) * Complex.I)) =
      (Icc (0 : ℝ) T).indicator (fun u =>
        (Real.exp (-σ * u) * wholePickup u : ℂ) *
          Complex.exp (-(u * ξ : ℂ) * Complex.I)) := by
    funext u
    by_cases hu : u ∈ Icc (0 : ℝ) T <;> simp [hu]
  rw [hindicator, integral_indicator measurableSet_Icc]
  apply integral_congr_ae
  filter_upwards [] with u
  simp only [Complex.ofReal_mul, Complex.ofReal_exp]
  have he :
      Complex.exp (((-σ : ℝ) : ℂ) * (u : ℂ)) *
          Complex.exp (-(u * ξ : ℂ) * Complex.I) =
        Complex.exp (-((σ : ℂ) + (ξ : ℂ) * Complex.I) * u) := by
    rw [← Complex.exp_add]
    congr 1
    push_cast
    ring
  calc
    Complex.exp (((-σ : ℝ) : ℂ) * (u : ℂ)) * (wholePickup u : ℂ) *
        Complex.exp (-(u * ξ : ℂ) * Complex.I) =
      (Complex.exp (((-σ : ℝ) : ℂ) * (u : ℂ)) *
        Complex.exp (-(u * ξ : ℂ) * Complex.I)) * (wholePickup u : ℂ) := by ring
    _ = _ := by rw [he]

/-- The squared norm of the compact recording is exactly the actual weighted
physical energy on `[0,T]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DampedRecordingParseval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6b99ae65b8872800dbbf9ecdf285a1a6e377f73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
