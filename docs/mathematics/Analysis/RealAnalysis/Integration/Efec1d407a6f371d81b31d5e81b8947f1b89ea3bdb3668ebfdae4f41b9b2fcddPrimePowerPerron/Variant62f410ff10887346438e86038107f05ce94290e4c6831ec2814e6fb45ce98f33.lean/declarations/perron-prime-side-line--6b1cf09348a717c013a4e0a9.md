# perron_prime_side_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:428152c0-b1c9-badd-4800-96ab19c64bf7",
  "kind": "theorem",
  "lexical_name": "perron_prime_side_line",
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
  "slug": "perron-prime-side-line--6b1cf09348a717c013a4e0a9",
  "source": {
    "blob": "36e7f1bd8f52282a6d9feb17b0e3ebacbcd37123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b1cf09348a717c013a4e0a9fe7bd63ea7d24a88db084a0c164494fa3ea84f2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:428152c0-b1c9-badd-4800-96ab19c64bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem perron_prime_side_line (φ k : ℝ → ℂ) (hφ : Integrable φ)
    (c : ℝ) (hc : 1 < c)
    (hInv : ∀ y : ℝ, (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ)) =
        k y * (Real.exp ((c - 1 / 2) * y) : ℂ)) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * (-logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
        ∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
  have h1 (t : ℝ) : φ t * (-logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
      ∑' n : ℕ, φ t * LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
        ((c : ℂ) + (t : ℂ) * Complex.I) n := by
    have hre : 1 < ((c : ℂ) + (t : ℂ) * Complex.I).re := by simpa using hc
    have h2 := ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hre
    have he : -logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) =
        LSeries (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
          ((c : ℂ) + (t : ℂ) * Complex.I) := by
      rw [logDeriv, Pi.div_apply, h2]
      ring
    rw [he, LSeries, ← tsum_mul_left]
  rw [integral_congr_ae (Filter.Eventually.of_forall h1),
    perron_line_integral_swap φ hφ hc, ← tsum_mul_left]
  exact tsum_congr fun n ↦ perron_per_n_integral φ k c hInv n

end FormalResearch.RiemannHypothesis.PrimePowerPerron
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e7f1bd8f52282a6d9feb17b0e3ebacbcd37123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
