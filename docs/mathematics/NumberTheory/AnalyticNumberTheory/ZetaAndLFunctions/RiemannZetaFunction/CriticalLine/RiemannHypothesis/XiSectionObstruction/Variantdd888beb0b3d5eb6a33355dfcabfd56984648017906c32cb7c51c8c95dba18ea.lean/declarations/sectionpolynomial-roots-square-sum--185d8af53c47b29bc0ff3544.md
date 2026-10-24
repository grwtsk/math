# sectionPolynomial_roots_square_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:263b069c-96b0-8715-b531-6ad96f7c9deb",
  "kind": "theorem",
  "lexical_name": "sectionPolynomial_roots_square_sum",
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
  "slug": "sectionpolynomial-roots-square-sum--185d8af53c47b29bc0ff3544",
  "source": {
    "blob": "fde7d2d557e699b2217bebe895aa8a507401ad67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 198,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:185d8af53c47b29bc0ff3544dd3857898a7a55e50ea87f09cdfb283936248ee4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:263b069c-96b0-8715-b531-6ad96f7c9deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sectionPolynomial_roots_square_sum (n : ℕ) :
    (((sectionPolynomial (n + 2)).roots.map (· ^ 2)).sum) =
      (((coefficient (n + 1) ^ 2 - 2 * coefficient n * coefficient (n + 2)) /
        coefficient (n + 2) ^ 2 : ℝ) : ℂ) := by
  have h1 := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 2)))
    (k := n + 1) (by rw [sectionPolynomial_natDegree]; omega)
  have h2 := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 2)))
    (k := n) (by rw [sectionPolynomial_natDegree]; omega)
  rw [sectionPolynomial_coeff _ _ (by omega), sectionPolynomial_natDegree,
    sectionPolynomial_leadingCoeff] at h1 h2
  simp only [show n + 2 - (n + 1) = 1 by omega, show n + 2 - n = 2 by omega,
    pow_one, neg_sq, one_pow, mul_neg_one, mul_one] at h1 h2
  have ha : (coefficient (n + 2) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2)).ne'
  rw [roots_square_sum]
  push_cast
  field_simp
  linear_combination h1 * ((sectionPolynomial (n + 2)).roots.esymm 1 *
    (coefficient (n + 2) : ℂ) - (coefficient (n + 1) : ℂ)) +
    2 * h2 * (coefficient (n + 2) : ℂ)

/-- For every section degree at least four the root-square sum has negative real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde7d2d557e699b2217bebe895aa8a507401ad67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
