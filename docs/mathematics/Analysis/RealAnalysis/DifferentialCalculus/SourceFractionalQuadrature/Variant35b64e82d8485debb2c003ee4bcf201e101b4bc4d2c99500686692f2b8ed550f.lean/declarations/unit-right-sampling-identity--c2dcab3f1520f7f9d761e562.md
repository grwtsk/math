# unit_right_sampling_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "409dccfb05d17d2ea55881e39766fdbe29417749",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1718b360-2352-5999-2202-c4d11823407d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b793de6-2ea3-7ef3-1363-3205a88c1e11",
  "kind": "theorem",
  "lexical_name": "unit_right_sampling_identity",
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
  "slug": "unit-right-sampling-identity--c2dcab3f1520f7f9d761e562",
  "source": {
    "blob": "409dccfb05d17d2ea55881e39766fdbe29417749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2dcab3f1520f7f9d761e562bf4e8a218e9a33230d5c9031848a74e626187bfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b793de6-2ea3-7ef3-1363-3205a88c1e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_right_sampling_identity (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (k : ℕ) :
    f (k + 1 : ℝ) - (∫ u in (k : ℝ)..(k + 1 : ℝ), f u) =
      ∫ u in (k : ℝ)..(k + 1 : ℝ), Int.fract u * deriv f u := by
  have h := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (k : ℝ)) (b := (k + 1 : ℝ))
    (u := fun u : ℝ => u - k) (v := f)
    (u' := fun _ : ℝ => (1 : ℝ)) (v' := deriv f)
    (fun u _ => (hasDerivAt_id u).sub_const (k : ℝ))
    (fun u _ => ((hf.differentiable (by norm_num)) u).hasDerivAt)
    (continuous_const.intervalIntegrable _ _)
    ((hf.continuous_deriv (by norm_num)).intervalIntegrable _ _)
  simp only [sub_self, add_sub_cancel_left, zero_mul, one_mul, sub_zero] at h
  have he : (∫ u in (k : ℝ)..(k + 1 : ℝ), (u - k) * deriv f u) =
      ∫ u in (k : ℝ)..(k + 1 : ℝ), Int.fract u * deriv f u := by
    apply intervalIntegral.integral_congr_Ioo_of_le (by linarith)
    intro u hu
    dsimp only
    rw [fract_eq_sub_of_unit_cell k hu]
  rw [he] at h
  linarith

/-- The finite identity keeps the last sample at `N+1` and the entire cell below one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `409dccfb05d17d2ea55881e39766fdbe29417749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
