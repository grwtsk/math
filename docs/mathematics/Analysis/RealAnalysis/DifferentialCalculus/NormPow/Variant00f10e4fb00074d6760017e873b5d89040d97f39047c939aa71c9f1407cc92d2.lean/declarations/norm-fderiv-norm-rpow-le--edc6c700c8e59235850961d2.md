# norm_fderiv_norm_rpow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec731a7d9ba868d41fbf109b51a137c5f0b8e71d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f85cb61b-9dc1-c115-c3f3-6b7c200a3786",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f82d5889-9e90-c6f1-ea7f-c5eef543c93f",
  "kind": "theorem",
  "lexical_name": "norm_fderiv_norm_rpow_le",
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
  "slug": "norm-fderiv-norm-rpow-le--edc6c700c8e59235850961d2",
  "source": {
    "blob": "ec731a7d9ba868d41fbf109b51a137c5f0b8e71d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edc6c700c8e59235850961d224db8af8c0f1b12db3f77baebc112baaa87fae2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f82d5889-9e90-c6f1-ea7f-c5eef543c93f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_fderiv_norm_rpow_le {f : F → E} (hf : Differentiable ℝ f) {x : F}
    {p : ℝ} (hp : 1 < p) :
    ‖fderiv ℝ (fun x ↦ ‖f x‖ ^ p) x‖ ≤ p * ‖f x‖ ^ (p - 1) * ‖fderiv ℝ f x‖ := by
  rw [hf.fderiv_norm_rpow hp, norm_smul, norm_mul]
  simp_rw [norm_rpow_of_nonneg (norm_nonneg _), norm_norm, norm_eq_abs,
    abs_eq_self.mpr <| zero_le_one.trans hp.le, mul_assoc]
  gcongr _ * ?_
  refine mul_le_mul_of_nonneg_left (ContinuousLinearMap.opNorm_comp_le ..) (by positivity)
    |>.trans_eq ?_
  rw [innerSL_apply_norm, ← mul_assoc, ← Real.rpow_add_one' (by positivity) (by linarith)]
  ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec731a7d9ba868d41fbf109b51a137c5f0b8e71d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
