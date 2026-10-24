# thetaPhiTerm_norm_le_compactBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e7eb9e4-970c-5ba9-6672-91c6a69b57b6",
  "kind": "theorem",
  "lexical_name": "thetaPhiTerm_norm_le_compactBound",
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
  "slug": "thetaphiterm-norm-le-compactbound--2297d2a249b865cb4aa7e21a",
  "source": {
    "blob": "b823b902d8e4a8e71c302746717defe739ed7e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variantbf6d25c5f2f2e767206de5e70bd87ddfd42216a3419f6ccc55b8a2b4086e7356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2297d2a249b865cb4aa7e21a0eff415e72b275a278981e0e63df9d380c80fe4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variantbf6d25c5f2f2e767206de5e70bd87ddfd42216a3419f6ccc55b8a2b4086e7356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e7eb9e4-970c-5ba9-6672-91c6a69b57b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiTerm_norm_le_compactBound {a b t : ℝ} (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTerm m t‖ ≤ thetaPhiCompactBound a b m := by
  rw [thetaPhiTerm_eq_gaussians]
  refine (norm_sub_le _ _).trans ?_
  have h4 : 0 ≤ HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  have h2 : 0 ≤ HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  rw [Real.norm_of_nonneg (by positivity), Real.norm_of_nonneg (by positivity)]
  have hG : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
      Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * a)) := by
    apply Real.exp_le_exp.mpr
    apply mul_le_mul_of_nonpos_left (Real.exp_le_exp.mpr (by linarith [ht.1]))
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr Real.pi_pos.le) (sq_nonneg _)
  have hF (k : ℕ) : HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * t)) m ≤
      HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * a)) m :=
    mul_le_mul_of_nonneg_left hG (by positivity)
  unfold thetaPhiCompactBound
  apply add_le_add
  · exact mul_le_mul (by gcongr; exact ht.2) (hF 4) h4 (by positivity)
  · exact mul_le_mul (by gcongr; exact ht.2) (hF 2) h2 (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variantbf6d25c5f2f2e767206de5e70bd87ddfd42216a3419f6ccc55b8a2b4086e7356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variantbf6d25c5f2f2e767206de5e70bd87ddfd42216a3419f6ccc55b8a2b4086e7356.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b823b902d8e4a8e71c302746717defe739ed7e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
