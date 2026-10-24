# mass_lower_of_real_enclosures

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93566aa6-5c01-6232-7352-ee7c57b0b4f0",
  "kind": "theorem",
  "lexical_name": "mass_lower_of_real_enclosures",
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
  "slug": "mass-lower-of-real-enclosures--4e494015163f321a2568ec25",
  "source": {
    "blob": "a9343f6b16e6c0789a304307849e3b7e418b5df3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e494015163f321a2568ec25ad2d044a27f9b9d6c4748bd82e9285ece51cb779",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93566aa6-5c01-6232-7352-ee7c57b0b4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mass_lower_of_real_enclosures (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T)
    (zeroUpper correctionLower : ℝ)
    (hzero : (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1).re ≤ zeroUpper)
    (hcorr : correctionLower ≤ squareTrivialCorrection n) :
    squareRadius n - zeroUpper + correctionLower -
      canonicalTailBudget (squareCenter n) (squareRadius n) T ≤ squareTentMangoldt n := by
  have he := norm_square_source_sub_finite_le n hn T hT
  have hr := (Complex.abs_re_le_norm
    ((squareTentMangoldt n : ℂ) - ((squareRadius n : ℂ) -
      (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
      (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)))).trans he
  have hlo := (abs_le.mp hr).1
  simp only [Complex.sub_re, Complex.add_re, Complex.ofReal_re] at hlo
  change correctionLower ≤ rationalTentCorrection (squareCenter n) (squareRadius n) at hcorr
  linarith

/-- Strict positivity survives complete proper-prime-power subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9343f6b16e6c0789a304307849e3b7e418b5df3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
