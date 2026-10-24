# endpoint_quotient_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f24f0a24-7d43-34dd-8ebe-603c0a941689",
  "kind": "theorem",
  "lexical_name": "endpoint_quotient_error",
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
  "slug": "endpoint-quotient-error--83446cdc5767bb56a8531fb8",
  "source": {
    "blob": "69e8ee54d817d84dbf1b96a7a821e0ae8b8c84c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 110,
    "path": "GRWTSK/Analysis/Complex/TentKernelEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83446cdc5767bb56a8531fb8a2366748466df66333e15b19e8f29984faf8b5aa",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f24f0a24-7d43-34dd-8ebe-603c0a941689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_quotient_error (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (c A X B : ℂ) (eA eX eB d : ℝ) (hd : 0 < d)
    (hden : d ≤ h * ‖c‖ * ‖c + 1‖)
    (hA : ‖logPower (x - h) (c + 1) - A‖ ≤ eA)
    (hX : ‖logPower x (c + 1) - X‖ ≤ eX)
    (hB : ‖logPower (x + h) (c + 1) - B‖ ≤ eB) :
    ‖tentKernel x h c - (B - 2 * X + A) / ((h : ℂ) * c * (c + 1))‖ ≤
      (eB + 2 * eX + eA) / d := by
  have hc : c ≠ 0 := by intro he; rw [he] at hden; simp at hden; linarith
  have hc1 : c + 1 ≠ 0 := by intro he; rw [he, norm_zero, mul_zero] at hden; linarith
  have hN : ‖(logPower (x + h) (c + 1) - 2 * logPower x (c + 1) +
      logPower (x - h) (c + 1)) - (B - 2 * X + A)‖ ≤ eB + 2 * eX + eA := by
    have he : (logPower (x + h) (c + 1) - 2 * logPower x (c + 1) +
        logPower (x - h) (c + 1)) - (B - 2 * X + A) =
        (logPower (x + h) (c + 1) - B) - 2 * (logPower x (c + 1) - X) +
          (logPower (x - h) (c + 1) - A) := by ring
    rw [he]
    have htri := (norm_add_le
      ((logPower (x + h) (c + 1) - B) - 2 * (logPower x (c + 1) - X))
      (logPower (x - h) (c + 1) - A)).trans
        (add_le_add_left (norm_sub_le (logPower (x + h) (c + 1) - B)
          (2 * (logPower x (c + 1) - X))) _)
    rw [norm_mul] at htri
    norm_num only [Complex.norm_ofNat] at htri
    linarith
  have hE : 0 ≤ eB + 2 * eX + eA := (norm_nonneg _).trans hN
  rw [tentKernel_eq_quotient x h hh ha c hc hc1, ← sub_div,
    norm_div, norm_mul, norm_mul, Complex.norm_of_nonneg hh.le]
  exact (div_le_div_of_nonneg_right hN (by positivity)).trans
    (div_le_div_of_nonneg_left hE hd hden)

/-- The actual parameter is bound to its center, not identified with it.
Fields certify primitive inputs, not an already evaluated kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelEnclosure.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e8ee54d817d84dbf1b96a7a821e0ae8b8c84c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
