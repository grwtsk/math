# mul_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70e158cd-ea90-613e-9789-649f885ca9e1",
  "kind": "theorem",
  "lexical_name": "mul_smul'",
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
  "slug": "mul-smul--cd80e2b9881130fd4db3c609",
  "source": {
    "blob": "22daf53a0fd50f501b9f8b554564291fc3c8fb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 178,
    "path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd80e2b9881130fd4db3c609912606c29a301d5da4511254ed26c9d756fa7683",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70e158cd-ea90-613e-9789-649f885ca9e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_smul' (g h : GL (Fin 2) ℝ) (z : ℍ) :
    smulAux (g * h) z = smulAux g (smulAux h z) := by
  ext : 1
  simp only [smulAux, coe_mk, smulAux', map_div₀, σ_num, σ_denom, σ_mul]
  generalize hu : σ g (σ h z) = u
  have hu : u.im ≠ 0 := by simpa only [← hu, σ_im_ne_zero] using z.im_ne_zero
  have hu' : (num h u / denom h u).im ≠ 0 := by
    rw [moebius_im]
    exact div_ne_zero (mul_ne_zero h.det_ne_zero hu) (normSq_denom_ne_zero _ hu)
  rw [div_eq_div_iff (denom_ne_zero_of_im _ hu) (denom_ne_zero_of_im _ hu'),
    denom, mul_div, div_add' _ _ _ (denom_ne_zero_of_im _ hu), mul_div]
  conv_rhs => rw [num]
  rw [mul_div, div_add' _ _ _ (denom_ne_zero_of_im _ hu), div_mul_eq_mul_div]
  congr 1
  simp only [num, denom, Units.val_mul, mul_apply, Fin.sum_univ_succ,
    Finset.univ_unique, Fin.default_eq_zero, Finset.sum_singleton, Fin.succ_zero_eq_one,
    Complex.ofReal_add, Complex.ofReal_mul]
  ring

/-- Action of `GL (Fin 2) ℝ` on the upper half-plane, with `GL(2, ℝ)⁺` acting by Moebius
transformations in the usual way, extended to all of `GL (Fin 2) ℝ` using complex conjugation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22daf53a0fd50f501b9f8b554564291fc3c8fb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
