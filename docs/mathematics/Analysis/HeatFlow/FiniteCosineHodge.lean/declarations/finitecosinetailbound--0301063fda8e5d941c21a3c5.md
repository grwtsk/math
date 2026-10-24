# finiteCosineTailBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe527f9f-bc3d-d19a-4a6d-b383df146c46",
  "kind": "theorem",
  "lexical_name": "finiteCosineTailBound",
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
  "slug": "finitecosinetailbound--0301063fda8e5d941c21a3c5",
  "source": {
    "blob": "9f0c632413378e72cc78f91f0809a45b104e0740",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 313,
    "path": "GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0301063fda8e5d941c21a3c518d460d58caee7a1dc9b936cbf3f20b4a9c50ba2",
  "verification": {
    "reference": "docs/verification/Analysis/HeatFlow/FiniteCosineHodge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe527f9f-bc3d-d19a-4a6d-b383df146c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCosineTailBound
    (Φ : ℝ → ℝ) (s z U B : ℝ)
    (hU : 0 ≤ U) (hs : 0 ≤ s)
    (hmajor : ∀ u, U ≤ u → |Φ u| ≤ B)
    (hB : 0 ≤ B) :
    ∀ u, U ≤ u →
      |Real.exp (-(s * u ^ 2)) * Φ u * Real.cos (z * u)| ≤ B := by
  have _cutoff_nonneg := hU
  have _bound_nonneg := hB
  intro u hu
  have hheat : Real.exp (-(s * u ^ 2)) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    have : 0 ≤ u ^ 2 := sq_nonneg u
    nlinarith
  have hpos : 0 ≤ Real.exp (-(s * u ^ 2)) := (Real.exp_pos _).le
  calc
    |Real.exp (-(s * u ^ 2)) * Φ u * Real.cos (z * u)| =
        Real.exp (-(s * u ^ 2)) * |Φ u| * |Real.cos (z * u)| := by
          rw [abs_mul, abs_mul, abs_of_nonneg hpos]
    _ ≤ Real.exp (-(s * u ^ 2)) * |Φ u| := by
          exact mul_le_of_le_one_right
            (mul_nonneg hpos (abs_nonneg (Φ u))) (Real.abs_cos_le_one _)
    _ ≤ B := by
          calc
            Real.exp (-(s * u ^ 2)) * |Φ u| ≤ 1 * |Φ u| := by
              exact mul_le_mul_of_nonneg_right hheat (abs_nonneg _)
            _ ≤ B := by simpa using hmajor u hu


/-- A genuinely decaying majorant for the real finite heat integrand.
This remains conditional on a supplied exponential kernel bound and
does not assert that the actual theta kernel has yet been identified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HeatFlow/FiniteCosineHodge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f0c632413378e72cc78f91f0809a45b104e0740` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
