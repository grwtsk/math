# pickupLaplace_eq_reciprocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b22682e66ee5b5d6940008b257670e1ddb10218",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5b1f602-6f82-afe8-fc05-f5cf4db42960",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c25177a-33f3-648b-69a3-c43c5ea34858",
  "kind": "theorem",
  "lexical_name": "pickupLaplace_eq_reciprocal",
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
  "slug": "pickuplaplace-eq-reciprocal--476166acfc77881e338974c2",
  "source": {
    "blob": "3b22682e66ee5b5d6940008b257670e1ddb10218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 292,
    "path": "GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:476166acfc77881e338974c2b5d24d6f915e58281f19326c8bed082d919ae6df",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c25177a-33f3-648b-69a3-c43c5ea34858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupLaplace_eq_reciprocal (z : ℂ) (hz : 1/2 < z.re) :
    pickupLaplace z = 1 / (z * (z + 1/2) * riemannZeta (z + 1/2)) := by
  have hpos : 0 < z.re := by linarith
  have hs : 1 < (z + 1/2).re := by simp; linarith
  have hswap := integral_tsum_of_summable_integral_norm
    (fun n => laplaceTerm_integrable z hpos n) (laplaceTerm_norm_summable z hz)
  have heq : (fun u : ℝ => ∑' n : ℕ, laplaceTerm z n u) =
      fun u : ℝ => Complex.exp (-z * (u : ℂ)) * completedPickup u := by
    funext u
    exact (laplaceTerm_eq_tsum z u).symm
  rw [heq] at hswap
  rw [pickupLaplace, ← hswap]
  simp_rw [laplaceTerm_integral z hpos]
  rw [tsum_div_const, moebiusDirichlet_eq_inv_zeta (z + 1/2) hs]
  simp only [div_eq_mul_inv, mul_inv_rev, one_mul]

end EulerP04RH.FEMI

#print axioms EulerP04RH.FEMI.completedPickup_eq_tsum
#print axioms EulerP04RH.FEMI.completedPickup_energy
#print axioms EulerP04RH.FEMI.atomKernel_laplace
#print axioms EulerP04RH.FEMI.laplaceTerm_norm_summable
#print axioms EulerP04RH.FEMI.pickupLaplace_integrable
#print axioms EulerP04RH.FEMI.pickupLaplace_eq_reciprocal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b22682e66ee5b5d6940008b257670e1ddb10218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
