# sectionPolynomial_roots_square_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "487c61fb096dea28af396fec804ac2d0ed675b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94145eff-d901-fd24-2004-325d59cce6a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20e5303b-9f53-a1c4-b529-d4b4502d3718",
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
  "slug": "sectionpolynomial-roots-square-sum--e33894460119bfad961709b6",
  "source": {
    "blob": "487c61fb096dea28af396fec804ac2d0ed675b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e33894460119bfad961709b6050ae7e0155dfd84860c6c05ca500186139763b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20e5303b-9f53-a1c4-b529-d4b4502d3718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–69.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `487c61fb096dea28af396fec804ac2d0ed675b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
