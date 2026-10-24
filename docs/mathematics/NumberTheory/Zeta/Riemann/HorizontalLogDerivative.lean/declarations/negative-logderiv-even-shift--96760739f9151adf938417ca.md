# negative_logDeriv_even_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb120822-c2f7-307d-f4fc-5ca895252c7b",
  "kind": "theorem",
  "lexical_name": "negative_logDeriv_even_shift",
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
  "slug": "negative-logderiv-even-shift--96760739f9151adf938417ca",
  "source": {
    "blob": "673dcccd858866aa66b420141af02e3fbbf80070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96760739f9151adf938417ca144e5ac2052b6325daa538f158da77769850cd42",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb120822-c2f7-307d-f4fc-5ca895252c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_logDeriv_even_shift (s : ℂ) (hs : s.re ≤ -1) (hi : s.im ≠ 0)
    (k : ℕ) :
    -logDeriv riemannZeta (s - 2 * (k : ℂ)) = -logDeriv riemannZeta s +
      (∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹) +
      logDeriv riemannZeta (1 - (s - 2 * (k : ℂ))) - logDeriv riemannZeta (1 - s) := by
  have hs0 : s.re < 0 := by linarith
  have hsk : (s - 2 * (k : ℂ)).re < 0 := by
    simp only [Complex.sub_re, Complex.mul_re, show (2 : ℂ).re = 2 by rfl, Complex.natCast_re,
      show (2 : ℂ).im = 0 by rfl, Complex.natCast_im, mul_zero, sub_zero]
    linarith [Nat.cast_nonneg (α := ℝ) k]
  have hik : (s - 2 * (k : ℂ)).im ≠ 0 := by simpa using hi
  have hn := negative_logDeriv_reflection hsk (zeta_ne_zero_left_nonreal _ hsk hik)
  have h0 := negative_logDeriv_reflection hs0 (zeta_ne_zero_left_nonreal s hs0 hi)
  have hg := digamma_add_nat (1 - s) (by simp only [Complex.sub_re, Complex.one_re]; linarith)
    (2 * k)
  have hw : 1 - (s - 2 * (k : ℂ)) = 1 - s + ((2 * k : ℕ) : ℂ) := by
    push_cast
    ring
  rw [cotangent_even_shift] at hn
  rw [hw, hg] at hn
  rw [hn, h0, hw]
  ring

/-- A shift of k cells costs at most k, plus BOTH reflected right-half-plane bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673dcccd858866aa66b420141af02e3fbbf80070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
