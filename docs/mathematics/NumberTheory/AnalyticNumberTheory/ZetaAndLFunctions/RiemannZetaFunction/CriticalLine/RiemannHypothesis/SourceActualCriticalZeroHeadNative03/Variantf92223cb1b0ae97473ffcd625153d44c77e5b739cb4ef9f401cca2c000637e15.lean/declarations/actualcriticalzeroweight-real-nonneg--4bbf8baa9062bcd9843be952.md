# actualCriticalZeroWeight_real_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42b59cc7-0d1d-1388-20ff-b37fb47c8cf1",
  "kind": "theorem",
  "lexical_name": "actualCriticalZeroWeight_real_nonneg",
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
  "slug": "actualcriticalzeroweight-real-nonneg--4bbf8baa9062bcd9843be952",
  "source": {
    "blob": "33ebaafba8f2eddc2f2cd4f5fe35d8aae51e56d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative03/Variantf92223cb1b0ae97473ffcd625153d44c77e5b739cb4ef9f401cca2c000637e15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bbf8baa9062bcd9843be9525e6a99caf83e52ebeb72dc82eac82881d2edfa03",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative03/Variantf92223cb1b0ae97473ffcd625153d44c77e5b739cb4ef9f401cca2c000637e15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42b59cc7-0d1d-1388-20ff-b37fb47c8cf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalZeroWeight_real_nonneg (A : ℝ)
    (ρ : (zetaZeros zetaSeam).carrier) (hA : 1 ≤ A) (hρ : (ρ : ℂ).re = 1 / 2) :
    (((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ).im = 0 ∧
    0 ≤ (((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ).re := by
  rw [actualInitialPrimeMellin_critical_eq_sourceSquare A ρ hA hρ]
  constructor
  · simp
  · simp only [Complex.mul_re, Complex.natCast_re, Complex.natCast_im,
      Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    exact mul_nonneg (Nat.cast_nonneg _) (Complex.normSq_nonneg _)

/-- The exact finite critical piece is its nonnegative actual multiplicity/Fourier mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative03/Variantf92223cb1b0ae97473ffcd625153d44c77e5b739cb4ef9f401cca2c000637e15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative03/Variantf92223cb1b0ae97473ffcd625153d44c77e5b739cb4ef9f401cca2c000637e15.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ebaafba8f2eddc2f2cd4f5fe35d8aae51e56d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
