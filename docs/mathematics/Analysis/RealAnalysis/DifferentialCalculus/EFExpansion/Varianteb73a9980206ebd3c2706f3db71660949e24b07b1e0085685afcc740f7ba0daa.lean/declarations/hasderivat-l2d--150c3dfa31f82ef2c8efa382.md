# hasDerivAt_L2D

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b868c8a8-abed-ce2c-30f2-b36bf5f44a32",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_L2D",
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
  "slug": "hasderivat-l2d--150c3dfa31f82ef2c8efa382",
  "source": {
    "blob": "9b07462fa708a42283cb7334515d99edaba3fc28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 326,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:150c3dfa31f82ef2c8efa3820102e82e68bbedc88520b9dd1fca265a34acd6ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b868c8a8-abed-ce2c-30f2-b36bf5f44a32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_L2D {s : ℂ} (hs1 : s ≠ 1) (hsi : (s / 2).im ≠ 0) (hsi' : ((3 - s) / 2).im ≠ 0) :
    HasDerivAt L2D ((1/8 : ℂ) * deriv Complex.digamma (s / 2) - (1/8 : ℂ) * deriv Complex.digamma ((3 - s) / 2)
      - (1/2 : ℂ) * ((1 - s) ^ 2)⁻¹) s := by
  have hmem := mem_integerComplement_of_im_ne_zero hsi
  have hmem' := mem_integerComplement_of_im_ne_zero hsi'
  have hψ : HasDerivAt (fun z => Complex.digamma (z / 2)) (deriv Complex.digamma (s / 2) * (1 / 2)) s := by
    have h1 := (Zeta23.Stirling.differentiableAt_digamma hmem).hasDerivAt
    have h2 : HasDerivAt (fun z : ℂ => z / 2) (1 / 2) s := by
      simpa using (hasDerivAt_id s).div_const (2:ℂ)
    exact h1.comp s h2
  have hψ' : HasDerivAt (fun z => Complex.digamma ((3 - z) / 2)) (deriv Complex.digamma ((3 - s) / 2) * (-(1 / 2))) s := by
    have h1 := (Zeta23.Stirling.differentiableAt_digamma hmem').hasDerivAt
    have h2 : HasDerivAt (fun z : ℂ => (3 - z) / 2) (-(1 / 2)) s := by
      have := ((hasDerivAt_const s (3:ℂ)).fun_sub (hasDerivAt_id s)).div_const (2:ℂ)
      exact this.congr_deriv (by ring)
    exact h1.comp s h2
  have hinv1 : HasDerivAt (fun z : ℂ => (1/2 : ℂ) / (1 - z)) ((1/2 : ℂ) * ((1 - s) ^ 2)⁻¹) s := by
    have hne : (1 - s) ≠ 0 := sub_ne_zero.mpr (Ne.symm hs1)
    have h := (hasDerivAt_inv hne).comp s ((hasDerivAt_const s (1:ℂ)).fun_sub (hasDerivAt_id s))
    have h' : HasDerivAt (fun z : ℂ => (1 - z)⁻¹) (((1 - s) ^ 2)⁻¹) s := by
      refine h.congr_deriv ?_; simp
    have := h'.const_mul (1/2 : ℂ)
    simpa [div_eq_mul_inv] using this
  have := (((hasDerivAt_const s (-(Real.log Real.pi : ℂ) / 2)).add (hψ.const_mul (1/4 : ℂ))).add
    (hψ'.const_mul (1/4 : ℂ))).sub hinv1
  exact this.congr_deriv (by ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07462fa708a42283cb7334515d99edaba3fc28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
