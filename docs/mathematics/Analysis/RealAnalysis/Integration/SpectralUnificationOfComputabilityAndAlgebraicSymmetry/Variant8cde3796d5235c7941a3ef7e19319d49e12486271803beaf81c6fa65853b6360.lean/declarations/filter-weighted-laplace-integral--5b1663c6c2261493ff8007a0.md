# filter_weighted_laplace_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af1e7074-8368-a6c5-c316-1533f2666d72",
  "kind": "theorem",
  "lexical_name": "filter_weighted_laplace_integral",
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
  "slug": "filter-weighted-laplace-integral--5b1663c6c2261493ff8007a0",
  "source": {
    "blob": "ad2f4efc1ad4e425a07af9d93849077bd9b87d52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8cde3796d5235c7941a3ef7e19319d49e12486271803beaf81c6fa65853b6360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b1663c6c2261493ff8007a0bfacd2fd2a2d7da2f4c19124666dc8e6c0341ba1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8cde3796d5235c7941a3ef7e19319d49e12486271803beaf81c6fa65853b6360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af1e7074-8368-a6c5-c316-1533f2666d72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_weighted_laplace_integral (j q : ℕ) (b : ℝ) (hb : 0 < b) :
    (∫ u : ℝ in Ioi 0, u ^ q * Real.exp (-(b * u)) * monomialFilter j u) =
      (1 / 16 : ℝ) * (Nat.factorial (q + j) : ℝ) / b ^ (q + j + 1) -
        ((j * (j - 1) : ℕ) : ℝ) / 2 * (Nat.factorial (q + (j - 2)) : ℝ) /
          b ^ (q + (j - 2) + 1) +
        ((j * (j - 1) * (j - 2) * (j - 3) : ℕ) : ℝ) *
          (Nat.factorial (q + (j - 4)) : ℝ) / b ^ (q + (j - 4) + 1) := by
  have h0 := (monomial_laplace_integrable (q + j) b hb).const_mul (1 / 16 : ℝ)
  have h2 := (monomial_laplace_integrable (q + (j - 2)) b hb).const_mul
    (((j * (j - 1) : ℕ) : ℝ) / 2)
  have h4 := (monomial_laplace_integrable (q + (j - 4)) b hb).const_mul
    ((j * (j - 1) * (j - 2) * (j - 3) : ℕ) : ℝ)
  have heq : (fun u : ℝ ↦ u ^ q * Real.exp (-(b * u)) * monomialFilter j u) =
      (fun u ↦ (1 / 16 : ℝ) * (u ^ (q + j) * Real.exp (-(b * u))) -
        (((j * (j - 1) : ℕ) : ℝ) / 2) *
          (u ^ (q + (j - 2)) * Real.exp (-(b * u))) +
        ((j * (j - 1) * (j - 2) * (j - 3) : ℕ) : ℝ) *
          (u ^ (q + (j - 4)) * Real.exp (-(b * u)))) := by
    funext u
    simp only [monomialFilter, pow_add]
    ring
  have hs : IntegrableOn (fun u : ℝ ↦
      (1 / 16 : ℝ) * (u ^ (q + j) * Real.exp (-(b * u))) -
        (((j * (j - 1) : ℕ) : ℝ) / 2) *
          (u ^ (q + (j - 2)) * Real.exp (-(b * u)))) (Ioi 0) := h0.sub h2
  rw [heq, integral_add hs h4, integral_sub h0 h2]
  simp only [integral_const_mul, monomial_laplace_integral _ _ hb]
  ring

/-- The exact real Laplace response retains the double annihilation factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8cde3796d5235c7941a3ef7e19319d49e12486271803beaf81c6fa65853b6360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8cde3796d5235c7941a3ef7e19319d49e12486271803beaf81c6fa65853b6360.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad2f4efc1ad4e425a07af9d93849077bd9b87d52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
