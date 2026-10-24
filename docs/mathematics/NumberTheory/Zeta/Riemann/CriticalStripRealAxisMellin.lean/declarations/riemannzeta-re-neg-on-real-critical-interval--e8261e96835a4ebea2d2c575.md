# riemannZeta_re_neg_on_real_critical_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:821a3b3f-2884-ea47-213c-25f637e7a847",
  "kind": "theorem",
  "lexical_name": "riemannZeta_re_neg_on_real_critical_interval",
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
  "slug": "riemannzeta-re-neg-on-real-critical-interval--e8261e96835a4ebea2d2c575",
  "source": {
    "blob": "5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 262,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8261e96835a4ebea2d2c575909028c8977d406924a87a9270cde508d91a5a7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:821a3b3f-2884-ea47-213c-25f637e7a847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_re_neg_on_real_critical_interval {s : ℝ}
    (hs : 0 < s) (hs1 : s < 1) : (riemannZeta (s : ℂ)).re < 0 := by
  have hH : 0 < (poleNormalizedZeta (s : ℂ)).re :=
    hs.trans_le (real_le_poleNormalized_re hs hs1.le)
  have hsne : (s : ℂ) ≠ 1 := by
    intro h
    have hreal := congrArg Complex.re h
    simp only [Complex.ofReal_re, Complex.one_re] at hreal
    linarith
  rw [poleNormalizedZeta_of_ne hsne] at hH
  simp only [Complex.mul_re, Complex.sub_re, Complex.ofReal_re, Complex.one_re,
    Complex.sub_im, Complex.ofReal_im, Complex.one_im, sub_self, zero_mul, sub_zero] at hH
  by_contra hnot
  have hnonneg : 0 ≤ (riemannZeta (s : ℂ)).re := le_of_not_gt hnot
  have hprod : (s - 1) * (riemannZeta (s : ℂ)).re ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr hs1.le) hnonneg
  exact (not_lt_of_ge hprod) hH

/-- No canonical nontrivial zeta zero lies on the real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
