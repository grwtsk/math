# thetaPhi_deriv_mul_sub_pow_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:833d8f2c-32ab-581a-2a01-2e7fec51aaaa",
  "kind": "theorem",
  "lexical_name": "thetaPhi_deriv_mul_sub_pow_tendsto",
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
  "slug": "thetaphi-deriv-mul-sub-pow-tendsto--fc6c4fa2e0ae8984c34d5071",
  "source": {
    "blob": "e49b7daf657012e8244b3783350e26e6703cf5c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc6c4fa2e0ae8984c34d507162479f1186f643fd71c9790b645727ce09177bc3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:833d8f2c-32ab-581a-2a01-2e7fec51aaaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhi_deriv_mul_sub_pow_tendsto (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Tendsto (fun u => deriv thetaPhi u * (u - t) ^ k) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  apply squeeze_zero' (g := fun u => ‖deriv thetaPhi u * u ^ k‖)
  · exact Filter.Eventually.of_forall (fun _ => norm_nonneg _)
  · filter_upwards [eventually_ge_atTop t] with u hu
    rw [norm_mul, norm_mul, Real.norm_of_nonneg (pow_nonneg (sub_nonneg.mpr hu) _),
      Real.norm_of_nonneg (pow_nonneg (ht.trans hu) _)]
    exact mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (sub_nonneg.mpr hu) (by linarith) k) (norm_nonneg _)
  · exact tendsto_zero_iff_norm_tendsto_zero.mp (deriv_thetaPhi_poly_tendsto_atTop k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49b7daf657012e8244b3783350e26e6703cf5c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
