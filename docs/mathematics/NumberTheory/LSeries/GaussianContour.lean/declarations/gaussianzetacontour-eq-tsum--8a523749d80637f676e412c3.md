# gaussianZetaContour_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09b25c5b-ed94-4b66-6de4-b40aca53c177",
  "kind": "theorem",
  "lexical_name": "gaussianZetaContour_eq_tsum",
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
  "slug": "gaussianzetacontour-eq-tsum--8a523749d80637f676e412c3",
  "source": {
    "blob": "fb0b6dcfd5630a2687f0b8e34373e3afc39e124e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 115,
    "path": "GRWTSK/NumberTheory/LSeries/GaussianContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a523749d80637f676e412c34714302dfd1f344809a6fa85042fddbe4dda1b5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/LSeries/GaussianContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09b25c5b-ed94-4b66-6de4-b40aca53c177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussianZetaContour_eq_tsum (σ Z : ℝ) (hσ : 1 < σ) (hZ : 0 < Z) :
    gaussianZetaContour σ Z = ∑' n : ℕ, gaussianMellinProfile ((n+1 : ℝ)/Z) := by
  have heq (v : ℝ) :
      (Z : ℂ)^((σ : ℂ)+v*Complex.I) * Complex.exp (((σ : ℂ)+v*Complex.I)^2) *
        riemannZeta ((σ : ℂ)+v*Complex.I) = ∑' n : ℕ, gaussianZetaSummand σ Z n v := by
    rw [zeta_eq_tsum_one_div_nat_add_one_cpow (by simpa using hσ)]
    simp only [gaussianZetaSummand, Complex.cpow_neg, one_div, tsum_mul_left]
  unfold gaussianZetaContour
  simp_rw [heq]
  rw [← integral_tsum_of_summable_integral_norm
    (gaussianZetaSummand_integrable σ Z hZ)
    (gaussianZetaSummand_integral_norm_summable σ Z hσ hZ), ← tsum_mul_left]
  apply tsum_congr
  intro n
  exact gaussianZetaSummand_integral σ Z hZ n

end
end GRWTSK.NumberTheory.LSeries.GaussianContour
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/LSeries/GaussianContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LSeries/GaussianContour.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0b6dcfd5630a2687f0b8e34373e3afc39e124e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
