# div_le_radius_compContinuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7d408a99fcdcd61c6bcaa74bdf429991ba7f897",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91a32d34-68d9-8403-02a7-490ee4f7af72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:656c2e03-cf16-78bf-8a5e-7155a1ac14d0",
  "kind": "theorem",
  "lexical_name": "div_le_radius_compContinuousLinearMap",
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
  "slug": "div-le-radius-compcontinuouslinearmap--4ccd2aa4f9c1d812fbac621e",
  "source": {
    "blob": "b7d408a99fcdcd61c6bcaa74bdf429991ba7f897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 352,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variantc83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ccd2aa4f9c1d812fbac621e3b48fb8ef51947a80dfba3047a2fa079a7918b69",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variantc83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:656c2e03-cf16-78bf-8a5e-7155a1ac14d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_le_radius_compContinuousLinearMap (p : FormalMultilinearSeries 𝕜 F G) (u : E →L[𝕜] F) :
    p.radius / ‖u‖ₑ ≤ (p.compContinuousLinearMap u).radius := by
  obtain (rfl | h_zero) := eq_zero_or_nnnorm_pos u
  · simp
  rw [ENNReal.div_le_iff (by simpa using h_zero) (by simp)]
  refine le_of_forall_nnreal_lt fun r hr ↦ ?_
  rw [← ENNReal.div_le_iff (by simpa using h_zero) (by simp), enorm_eq_nnnorm, ← coe_div h_zero.ne']
  obtain ⟨C, hC_pos, hC⟩ := p.norm_mul_pow_le_of_lt_radius hr
  refine le_radius_of_bound _ C fun n ↦ ?_
  calc
    ‖p.compContinuousLinearMap u n‖ * ↑(r / ‖u‖₊) ^ n ≤ ‖p n‖ * ‖u‖ ^ n * ↑(r / ‖u‖₊) ^ n := by
      gcongr
      exact nnnorm_compContinuousLinearMap_le p u n
    _ = ‖p n‖ * r ^ n := by
      simp only [NNReal.coe_div, coe_nnnorm, div_pow, mul_assoc]
      rw [mul_div_cancel₀]
      rw [← NNReal.coe_pos] at h_zero
      positivity
    _ ≤ C := hC n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variantc83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variantc83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7d408a99fcdcd61c6bcaa74bdf429991ba7f897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
