# norm_horizontal_le_of_strip_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6d9a894-41ef-8e60-6b02-fe3076116588",
  "kind": "theorem",
  "lexical_name": "norm_horizontal_le_of_strip_bound",
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
  "slug": "norm-horizontal-le-of-strip-bound--51ea4db8675e17237cdf0ef9",
  "source": {
    "blob": "673dcccd858866aa66b420141af02e3fbbf80070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51ea4db8675e17237cdf0ef9288949a917e111c62ad4cc79f120fc7ea2779846",
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

Occurrence: `result:b6d9a894-41ef-8e60-6b02-fe3076116588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_horizontal_le_of_strip_bound (y B : ℝ) (hy : y ≠ 0)
    (hB : ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ B)
    (σ : ℝ) (hσ : σ ≤ 2) :
    ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      B + 2 * mangoldtLineMass + (2 - σ) / 2 := by
  by_cases hl : -1 ≤ σ
  · have hb := hB σ ⟨by linarith, hσ⟩
    linarith [mangoldtLineMass_nonneg]
  · obtain ⟨k, hkL, hkR, hk⟩ := exists_horizontal_anchor σ (le_of_not_ge hl)
    let s : ℂ := ((σ + 2 * (k : ℝ) : ℝ) : ℂ) + (y : ℂ) * Complex.I
    have hs : s.re ≤ -1 := by simpa [s] using hkR
    have hi : s.im ≠ 0 := by simpa [s] using hy
    have he : s - 2 * (k : ℂ) = (σ : ℂ) + (y : ℂ) * Complex.I := by
      dsimp [s]
      push_cast
      ring
    have hn := norm_even_shift_le s hs hi k
    rw [he] at hn
    have hb := hB (σ + 2 * (k : ℝ)) ⟨hkL.le, hkR.trans (by norm_num)⟩
    change ‖-logDeriv riemannZeta s‖ ≤ B at hb
    linarith

/-- Every point on an avoided nonzero horizontal line is a genuine nonzero zeta point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673dcccd858866aa66b420141af02e3fbbf80070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
