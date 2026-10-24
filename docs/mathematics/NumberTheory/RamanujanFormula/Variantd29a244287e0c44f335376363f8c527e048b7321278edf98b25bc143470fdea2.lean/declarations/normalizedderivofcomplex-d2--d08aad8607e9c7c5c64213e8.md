# normalizedDerivOfComplex_D2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e42ac0c-970a-523a-eada-a6820eb7d4e6",
  "kind": "lemma",
  "lexical_name": "normalizedDerivOfComplex_D2",
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
  "slug": "normalizedderivofcomplex-d2--d08aad8607e9c7c5c64213e8",
  "source": {
    "blob": "50c5fac775e91d742b8b8f90a5b25a50fdf84761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 80,
    "path": "GRWTSK/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08aad8607e9c7c5c64213e8be480c43fdbaaa278c24b9f52e2420add0825fb0",
  "verification": {
    "reference": "docs/verification/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e42ac0c-970a-523a-eada-a6820eb7d4e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma normalizedDerivOfComplex_D2 (γ : SL(2, ℤ)) :
    D (D2 γ) = fun z : ℍ ↦ -(γ 1 0 : ℂ) ^ 2 / denom γ z ^ 2 := by
  ext z
  have hcomp : (D2 γ ∘ ofComplex) =ᶠ[𝓝 (z : ℂ)]
      fun w ↦ 2 * π * I * (γ 1 0 : ℂ) * denom γ w ^ (-1 : ℤ) := by
    filter_upwards [isOpen_upperHalfPlaneSet.mem_nhds z.im_pos] with w hw
    simp [EisensteinSeries.D2, ofComplex_apply_of_im_pos hw, div_eq_mul_inv]
  simp only [normalizedDerivOfComplex, (((hasDerivAt_denom_zpow γ (-1) z).const_mul
    (2 * π * I * (γ 1 0 : ℂ))).congr_of_eventuallyEq hcomp).deriv]
  push_cast [show ((γ : GL (Fin 2) ℝ) 1 0 : ℝ) = (γ 1 0 : ℝ) by norm_cast]
  field_simp

/-- Although `E₂` is only quasi-modular, its weight-1 Serre derivative `∂₁ E₂ = D E₂ - E₂² / 12`
is invariant under the weight-4 slash action of `SL(2, ℤ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50c5fac775e91d742b8b8f90a5b25a50fdf84761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
