# fractionalMellin_ofReal_im_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5f89fa5-b0b7-b920-7a6a-3b94a7edc651",
  "kind": "theorem",
  "lexical_name": "fractionalMellin_ofReal_im_zero",
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
  "slug": "fractionalmellin-ofreal-im-zero--a4bc9710c2cb894a087551ee",
  "source": {
    "blob": "09b537df0518dd3a70d50cafa8d9959127ce1382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4bc9710c2cb894a087551ee42224f1c5d2a2ba0567e59f9db87be262edaf307",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5f89fa5-b0b7-b920-7a6a-3b94a7edc651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalMellin_ofReal_im_zero {σ : ℝ} (hσ : 0 < σ) :
    (fractionalMellin (σ : ℂ)).im = 0 := by
  have hi := fractionalMellin_integrable (s := (σ : ℂ)) (by simpa using hσ)
  rw [fractionalMellin_eq_integral, ← integral_im hi]
  apply integral_eq_zero_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have ht0 : 0 ≤ t := (zero_lt_one.trans ht).le
  have hpow : (t : ℂ) ^ (-((σ : ℂ) + 1)) =
      ((t ^ (-(σ + 1)) : ℝ) : ℂ) := by
    simpa only [Complex.ofReal_neg, Complex.ofReal_add, Complex.ofReal_one] using
      (Complex.ofReal_cpow ht0 (-(σ + 1))).symm
  rw [hpow]
  simp only [Complex.mul_im, Complex.sub_re, Complex.sub_im, Complex.ofReal_im,
    Complex.natCast_im, sub_self, mul_zero, zero_mul, add_zero]

/-- A uniform derivative estimate, including the boundary Re(s)=1/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b537df0518dd3a70d50cafa8d9959127ce1382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
