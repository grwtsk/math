# pickupKernel_norm_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "774e40eaeffa54c84e5eb25e6abe1889da780eb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/NumberTheory/Zeta/ReciprocalDecayBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f9b2e08-6f48-a3d3-d9a6-299530a611e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "774e40eaeffa54c84e5eb25e6abe1889da780eb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Zeta/ReciprocalDecayBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56c42b27-b333-ab13-2303-2e7573f1b979",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38e5ac9c-2c4e-115e-ea63-cce70f838fa0",
  "kind": "theorem",
  "lexical_name": "pickupKernel_norm_decay",
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
  "slug": "pickupkernel-norm-decay--c7d4e8182f1bef4f2cff4a63",
  "source": {
    "blob": "774e40eaeffa54c84e5eb25e6abe1889da780eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7d4e8182f1bef4f2cff4a6382076bb83b92c7ccc1769035e72311bc6eb919ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38e5ac9c-2c4e-115e-ea63-cce70f838fa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupKernel_norm_decay {c t : ℝ} (hc : 1 < c) (ht : 1 ≤ |t|) :
    ‖pickupKernel c t‖ ≤ absoluteDirichletBudget c * |t|^(-2:ℝ) := by
  let z : ℂ := (c-1/2:ℝ)+t*Complex.I
  have hzIm : z.im=t := by simp [z]
  have hplusIm : (z+1/2).im=t := by simp [z]
  have hplusRe : (z+1/2).re=c := by simp [z]
  have htpos : 0 < |t| := by linarith
  have hnz : |t| ≤ ‖z‖ := by simpa only [hzIm] using Complex.abs_im_le_norm z
  have hnplus : |t| ≤ ‖z+1/2‖ := by
    simpa only [hplusIm] using Complex.abs_im_le_norm (z+1/2)
  have hzBound := reciprocal_zeta_uniform_bound hc hplusRe
  have hprod : |t|^2 ≤ ‖z‖*‖z+1/2‖ := by
    simpa only [pow_two] using mul_le_mul hnz hnplus (abs_nonneg _) (norm_nonneg _)
  have hdpos : 0 < ‖z‖*‖z+1/2‖ := mul_pos (htpos.trans_le hnz) (htpos.trans_le hnplus)
  change ‖1/(z*(z+1/2)*riemannZeta (z+1/2))‖ ≤ _
  calc
    _ = ‖(riemannZeta (z+1/2))⁻¹‖/(‖z‖*‖z+1/2‖) := by
      simp only [one_div,mul_inv_rev,norm_mul,norm_inv]
      ring
    _ ≤ absoluteDirichletBudget c/(|t|^2) :=
      div_le_div₀ (absoluteDirichletBudget_nonnegative c) hzBound (by positivity) hprod
    _ = _ := by rw [Real.rpow_neg (abs_nonneg _),Real.rpow_two]; simp [div_eq_mul_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `774e40eaeffa54c84e5eb25e6abe1889da780eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
