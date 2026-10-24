# contraction_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84c70a09-a17b-4c1b-dc8f-113b9c83901f",
  "kind": "theorem",
  "lexical_name": "contraction_bound",
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
  "slug": "contraction-bound--fd7a3dd0cbc7895e2890d9ff",
  "source": {
    "blob": "321418f59e2f15f55b09b7377513426b4f1eb407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 97,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalNewtonDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd7a3dd0cbc7895e2890d9ff251a9994f58de01e07ffef060d520dd501dd7a19",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalNewtonDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84c70a09-a17b-4c1b-dc8f-113b9c83901f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contraction_bound {f : ℂ → ℂ} {c : Coordinates} {R : ℚ} {p : Data}
    (hc : check R p = true) (he : Estimates f c R p)
    (ha : ∀ z ∈ closedBall (toComplex c) (R : ℝ), AnalyticAt ℂ f z)
    {z : ℂ} (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖1 - toComplex p.inverse * deriv f z‖ ≤ (contraction R p : ℝ) := by
  obtain ⟨hR, _, hD, hL, _, _⟩ := (check_iff_valid R p).mp hc
  have hR' : (0 : ℝ) ≤ R := by exact_mod_cast hR.le
  have hv := derivative_variation hR'
    (fun u hu => (ha u hu).deriv.differentiableAt.hasDerivAt) he.2.2 hz
  have hd : ‖deriv f z - toComplex p.derivative‖ ≤
      (p.derivativeError : ℝ) + (p.secondBound : ℝ) * (R : ℝ) := by
    have ht : ‖deriv f z - toComplex p.derivative‖ ≤
        ‖deriv f z - deriv f (toComplex c)‖ +
          ‖deriv f (toComplex c) - toComplex p.derivative‖ := by
      simpa only [dist_eq_norm] using dist_triangle (deriv f z) (deriv f (toComplex c)) (toComplex p.derivative)
    exact ht.trans (by linarith [he.2.1])
  have hd0 : (0 : ℝ) ≤ (p.derivativeError : ℝ) + (p.secondBound : ℝ) * (R : ℝ) :=
    (norm_nonneg _).trans hd
  calc
    _ = ‖(1 - toComplex p.inverse * toComplex p.derivative) +
        toComplex p.inverse * (toComplex p.derivative - deriv f z)‖ := by congr 1; ring
    _ ≤ ‖1 - toComplex p.inverse * toComplex p.derivative‖ +
        ‖toComplex p.inverse * (toComplex p.derivative - deriv f z)‖ := norm_add_le _ _
    _ ≤ (magnitude (sub one (mul p.inverse p.derivative)) : ℝ) +
        (magnitude p.inverse : ℝ) * ((p.derivativeError : ℝ) + (p.secondBound : ℝ) * (R : ℝ)) := by
      apply add_le_add
      · simpa only [toComplex_sub, toComplex_one, toComplex_mul] using
          norm_le_magnitude (sub one (mul p.inverse p.derivative))
      · rw [norm_mul, norm_sub_rev]
        exact mul_le_mul (norm_le_magnitude _) hd (norm_nonneg _) (by exact_mod_cast magnitude_nonneg p.inverse)
    _ = _ := by simp only [contraction, Rat.cast_add, Rat.cast_mul]

/-- The actual estimates and rational guards yield a unique zero with analytic order one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalNewtonDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalNewtonDisk.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `321418f59e2f15f55b09b7377513426b4f1eb407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
