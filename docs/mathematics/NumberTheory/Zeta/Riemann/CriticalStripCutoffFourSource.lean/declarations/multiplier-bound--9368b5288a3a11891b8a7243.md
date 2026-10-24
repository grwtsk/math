# multiplier_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1f3462e-43f4-e6a6-bd65-5c9be777c1ae",
  "kind": "lemma",
  "lexical_name": "multiplier_bound",
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
  "slug": "multiplier-bound--9368b5288a3a11891b8a7243",
  "source": {
    "blob": "e7a1820ab8718eee5c0f8f3db51f16381d9804fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9368b5288a3a11891b8a72438209044d8e8f54cff19a6cd8caf041f596cd8643",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1f3462e-43f4-e6a6-bd65-5c9be777c1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multiplier_bound {s : ℂ} (hs : Band s) : ‖multiplier s‖ ≤ (132000000 : ℝ) := by
  rcases hs with ⟨hx, hx1, ht, ht1⟩
  have hx0 : 0 ≤ s.re := by linarith
  have ht0 : 0 ≤ s.im := by linarith
  have hty : s.im ^ 2 ≤ (196 : ℝ) := by
    have h := mul_le_mul ht1 ht1 ht0 (by norm_num : (0 : ℝ) ≤ 14)
    nlinarith
  have hxx : s.re ^ 2 ≤ (1 : ℝ) := by
    have h := mul_le_mul hx1 hx1 hx0 (by norm_num : (0 : ℝ) ≤ 1)
    nlinarith
  have hdx : (s.re - 1) ^ 2 ≤ (1 : ℝ) := by
    have h0 : 0 ≤ 1 - s.re := by linarith
    have h1 : 1 - s.re ≤ 1 := by linarith
    have h := mul_le_mul h1 h1 h0 (by norm_num : (0 : ℝ) ≤ 1)
    nlinarith
  have hbase : ‖s‖ ^ 2 ≤ (197 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith
  have hminus : ‖s - 1‖ ^ 2 ≤ (197 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.sub_re, Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero]
    nlinarith
  have hj (j : ℕ) : ‖s + (j : ℂ)‖ ^ 2 ≤ (1 + (j : ℝ)) ^ 2 + 196 := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.add_re, Complex.add_im, Complex.natCast_re, Complex.natCast_im, add_zero]
    have hn : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    have h := mul_le_mul (add_le_add_right hx1 (j : ℝ)) (add_le_add_right hx1 (j : ℝ))
      (add_nonneg hx0 hn) (by positivity : 0 ≤ 1 + (j : ℝ))
    nlinarith
  have hprod : ‖multiplier s‖ ^ 2 ≤ (197 : ℝ) * 197 * 200 * 205 * 212 * 221 * 232 := by
    simp only [multiplier, QuarticPrimitive.multiplier, CubicPrimitive.multiplier, norm_mul, mul_pow]
    gcongr
    · exact hbase
    · exact hminus
    · simpa using hj 1
    · simpa using hj 2
    · simpa using hj 3
    · simpa using hj 4
    · simpa using hj 5
  nlinarith [norm_nonneg (multiplier s)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7a1820ab8718eee5c0f8f3db51f16381d9804fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
