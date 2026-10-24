# centered_ibp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94c3a724-fcf6-750c-73fa-971d4a085e2b",
  "kind": "theorem",
  "lexical_name": "centered_ibp",
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
  "slug": "centered-ibp--0bd4e9144738f7a64ea97498",
  "source": {
    "blob": "bb52c9810622fd903bc594b13b9615d4d1078eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 125,
    "path": "GRWTSK/NumberTheory/VonMangoldt/ComplexReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd4e9144738f7a64ea97498c3362a983e9928cfe2b65bf7adf229c462952756",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94c3a724-fcf6-750c-73fa-971d4a085e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_ibp {X : ℕ} (hX : 0 < X) :
    action X φ.value = φ.value 0*(mass0 X : ℂ) +
      (φ.value 1-φ.value 0)*(mass1 X : ℂ) -
      ∫ t, ((cumulative X t-DyadicDiscrepancy.center X : ℝ):ℂ)*φ.slope t ∂unitVolume := by
  have hr := GRWTSK.NumberTheory.VonMangoldt.CenteredReadout.centered_ibp (reTest φ) hX
  have hi := GRWTSK.NumberTheory.VonMangoldt.CenteredReadout.centered_ibp (imTest φ) hX
  have hR : (∫ t, ((cumulative X t-DyadicDiscrepancy.center X : ℝ):ℂ)*φ.slope t
      ∂unitVolume).re = ∫ t, (cumulative X t-DyadicDiscrepancy.center X) *
        (φ.slope t).re ∂unitVolume := by
    convert! (Complex.reCLM.integral_comp_comm (residual_product_integrable φ X)).symm using 1
    apply integral_congr_ae
    filter_upwards [] with t
    change _ = (((cumulative X t-DyadicDiscrepancy.center X : ℝ):ℂ)*φ.slope t).re
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  have hI : (∫ t, ((cumulative X t-DyadicDiscrepancy.center X : ℝ):ℂ)*φ.slope t
      ∂unitVolume).im = ∫ t, (cumulative X t-DyadicDiscrepancy.center X) *
        (φ.slope t).im ∂unitVolume := by
    convert! (Complex.imCLM.integral_comp_comm (residual_product_integrable φ X)).symm using 1
    apply integral_congr_ae
    filter_upwards [] with t
    change _ = (((cumulative X t-DyadicDiscrepancy.center X : ℝ):ℂ)*φ.slope t).im
    simp only [Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, zero_mul, add_zero]
  apply Complex.ext
  · rw [action_re]
    simpa only [reTest, Complex.sub_re, Complex.add_re, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero, hR] using hr
  · rw [action_im]
    simpa only [imTest, Complex.sub_im, Complex.add_im, Complex.mul_im,
      Complex.ofReal_re, Complex.ofReal_im, mul_zero, zero_mul, zero_add,
      add_zero, hI] using hi

/-- Useful without choosing a square-root branch or weakening the constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/ComplexReadout.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb52c9810622fd903bc594b13b9615d4d1078eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
