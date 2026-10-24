# zeta_eq_chiFE_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5a9fd64-5494-9cb0-228e-afea8906910e",
  "kind": "theorem",
  "lexical_name": "zeta_eq_chiFE_mul",
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
  "slug": "zeta-eq-chife-mul--6d075116ece6c16af0e0b94e",
  "source": {
    "blob": "d9db56067d5f9e092171b27535c8c8cd1699b8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d075116ece6c16af0e0b94e9e4a92c88bca8977e587cd31f491fffccf9d660c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5a9fd64-5494-9cb0-228e-afea8906910e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_eq_chiFE_mul {s : ℂ} (hs : s.im ≠ 0) :
    riemannZeta s = chiFE s * riemannZeta (1 - s) := by
  have hs0 := ne_zero_of_im_ne_zero hs
  have hs1' : (1 - s) ≠ 0 := sub_ne_zero.mpr (ne_one_of_im_ne_zero hs).symm
  have hG := Gammaℝ_ne_zero_of_im_ne_zero hs
  have hG1 := Gammaℝ_ne_zero_of_im_ne_zero (im_one_sub_ne_zero hs)
  have h1 := Zeta23.RvM.completedRiemannZeta_eq_Gammaℝ_mul hs0 hG
  have h2 := Zeta23.RvM.completedRiemannZeta_eq_Gammaℝ_mul hs1' hG1
  have hΛ : completedRiemannZeta (1 - s) = completedRiemannZeta s := completedRiemannZeta_one_sub s
  -- Γℝ(s)ζ(s) = Λ(s) = Λ(1−s) = Γℝ(1−s)ζ(1−s)
  rw [chiFE_def]
  field_simp
  rw [h1, h2] at *
  linear_combination -hΛ

/-! ### §4. W off the real axis: analyticity, Schwarz reflection, the functional equation -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9db56067d5f9e092171b27535c8c8cd1699b8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
