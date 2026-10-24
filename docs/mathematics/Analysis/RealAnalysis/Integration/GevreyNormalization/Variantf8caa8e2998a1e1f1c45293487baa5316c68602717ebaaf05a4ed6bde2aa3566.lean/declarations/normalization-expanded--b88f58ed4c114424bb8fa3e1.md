# normalization_expanded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ea8f964-98ca-40c0-0485-ff48ebd2bb41",
  "kind": "theorem",
  "lexical_name": "normalization_expanded",
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
  "slug": "normalization-expanded--b88f58ed4c114424bb8fa3e1",
  "source": {
    "blob": "d85db46ce1fc9ce39a301794fe9bd70ed8e4d6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b88f58ed4c114424bb8fa3e183bcd255da017e0bfccedb4051eb15b82397dc7e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ea8f964-98ca-40c0-0485-ff48ebd2bb41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalization_expanded {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    normalization h A =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) -
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ, deriv (deriv h) x * h x) +
      (1 / 16) * (∫ x : ℝ, (h x) ^ 2) := by
  obtain ⟨h0, _, h2⟩ := profile_square_integrable hc hs
  have hm : Integrable (fun x ↦ deriv (deriv h) x * h x) :=
    ((continuous_second hc).mul hc.continuous).integrable_of_hasCompactSupport
      (hs.deriv.deriv.mul_right)
  have hscale : normalization h A =
      ∫ x : ℝ, (deriv (deriv h) x / A ^ 2 - h x / 4) ^ 2 := by
    unfold normalization
    simp_rw [dilationOperator_eq hc, div_pow, Real.sq_sqrt hA.le]
    rw [integral_div, Measure.integral_comp_div
      (fun y : ℝ ↦ (deriv (deriv h) y / A ^ 2 - h y / 4) ^ 2) A]
    simp [abs_of_pos hA, smul_eq_mul, hA.ne']
  rw [hscale]
  have hexpand : (fun x : ℝ ↦ (deriv (deriv h) x / A ^ 2 - h x / 4) ^ 2) =
      fun x ↦ (deriv (deriv h) x) ^ 2 / A ^ 4 -
        (deriv (deriv h) x * h x) / (2 * A ^ 2) + (h x) ^ 2 / 16 := by
    funext x
    ring
  rw [hexpand]
  rw [integral_add
    (f := fun x : ℝ ↦ (deriv (deriv h) x) ^ 2 / A ^ 4 -
      (deriv (deriv h) x * h x) / (2 * A ^ 2))
    (g := fun x : ℝ ↦ (h x) ^ 2 / 16)
    ((h2.div_const _).sub (hm.div_const _)) (h0.div_const _)]
  rw [integral_sub (f := fun x : ℝ ↦ (deriv (deriv h) x) ^ 2 / A ^ 4)
    (g := fun x : ℝ ↦ (deriv (deriv h) x * h x) / (2 * A ^ 2))
    (h2.div_const _) (hm.div_const _)]
  simp_rw [integral_div]
  ring

/-- Exact normalization of the separate family, with no assumed integration-by-parts premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85db46ce1fc9ce39a301794fe9bd70ed8e4d6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
