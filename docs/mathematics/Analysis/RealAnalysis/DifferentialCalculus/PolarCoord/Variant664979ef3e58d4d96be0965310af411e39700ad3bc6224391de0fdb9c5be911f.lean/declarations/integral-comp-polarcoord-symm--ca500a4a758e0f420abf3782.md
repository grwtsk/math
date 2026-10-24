# integral_comp_polarCoord_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8263ba2a-6921-8a00-2352-0f3da1ce1c4e",
  "kind": "theorem",
  "lexical_name": "integral_comp_polarCoord_symm",
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
  "slug": "integral-comp-polarcoord-symm--ca500a4a758e0f420abf3782",
  "source": {
    "blob": "561c8b0ace1e1f55bb6d61ba8a196ed8cc7bc915",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca500a4a758e0f420abf378267b9c1098bcf111cb0a24ce76194ff82c875ca52",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8263ba2a-6921-8a00-2352-0f3da1ce1c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_comp_polarCoord_symm {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E] (f : ℝ × ℝ → E) :
    (∫ p in polarCoord.target, p.1 • f (polarCoord.symm p)) = ∫ p, f p := by
  set B : ℝ × ℝ → ℝ × ℝ →L[ℝ] ℝ × ℝ := fun p =>
    LinearMap.toContinuousLinearMap (Matrix.toLin (Basis.finTwoProd ℝ) (Basis.finTwoProd ℝ)
      !![cos p.2, -p.1 * sin p.2; sin p.2, p.1 * cos p.2])
  have A : ∀ p ∈ polarCoord.symm.source, HasFDerivAt polarCoord.symm (B p) p := fun p _ =>
    hasFDerivAt_polarCoord_symm p
  have B_det : ∀ p, (B p).det = p.1 := by
    intro p
    conv_rhs => rw [← one_mul p.1, ← cos_sq_add_sin_sq p.2]
    simp only [neg_mul, LinearMap.det_toContinuousLinearMap, LinearMap.det_toLin,
      Matrix.det_fin_two_of, sub_neg_eq_add]
    ring
  symm
  calc
    ∫ p, f p = ∫ p in polarCoord.source, f p := by
      rw [← integral_univ]
      apply set_integral_congr_set_ae
      exact polarCoord_source_ae_eq_univ.symm
    _ = ∫ p in polarCoord.target, abs (B p).det • f (polarCoord.symm p) := by
      apply integral_target_eq_integral_abs_det_fderiv_smul volume A
    _ = ∫ p in polarCoord.target, p.1 • f (polarCoord.symm p) := by
      apply set_integral_congr polarCoord.open_target.measurableSet fun x hx => ?_
      rw [B_det, abs_of_pos]
      exact hx.1
#align integral_comp_polar_coord_symm integral_comp_polarCoord_symm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561c8b0ace1e1f55bb6d61ba8a196ed8cc7bc915` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
