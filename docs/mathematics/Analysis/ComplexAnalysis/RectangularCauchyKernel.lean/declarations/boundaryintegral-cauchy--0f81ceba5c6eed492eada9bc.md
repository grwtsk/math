# boundaryIntegral_cauchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1356b1f4-7b64-8a48-b987-6ca2fb9618a4",
  "kind": "theorem",
  "lexical_name": "boundaryIntegral_cauchy",
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
  "slug": "boundaryintegral-cauchy--0f81ceba5c6eed492eada9bc",
  "source": {
    "blob": "04a5862bf8ecf094317d1cfa2f0e02a615a1ab11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 96,
    "path": "GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f81ceba5c6eed492eada9bc255cf4cc7e7ea4e716fcc5d04c8e82a327b5b1d2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1356b1f4-7b64-8a48-b987-6ca2fb9618a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryIntegral_cauchy (p : ℂ) (l r T : ℝ)
    (hl : l < p.re) (hr : p.re < r) (ht : |p.im| < T) :
    boundaryIntegral (fun z => (z - p)⁻¹) l r T =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  let L := p.re - l
  let R := r - p.re
  let D := T + p.im
  let U := T - p.im
  have hL : 0 < L := sub_pos.mpr hl
  have hR : 0 < R := sub_pos.mpr hr
  have hD : 0 < D := by dsimp [D]; linarith [(abs_lt.mp ht).1]
  have hU : 0 < U := by dsimp [U]; linarith [(abs_lt.mp ht).2]
  have eL : l - p.re = -L := by dsimp [L]; ring
  have eD : -T - p.im = -D := by dsimp [D]; ring
  have hnD : -T - p.im ≠ 0 := by rw [eD]; exact neg_ne_zero.mpr (ne_of_gt hD)
  have hnU : T - p.im ≠ 0 := ne_of_gt hU
  have hnL : l - p.re ≠ 0 := ne_of_lt (sub_neg.mpr hl)
  have hnR : r - p.re ≠ 0 := ne_of_gt hR
  have hRD := arctan_reciprocal_corner R D hR hD
  have hLD := arctan_reciprocal_corner L D hL hD
  have hRU := arctan_reciprocal_corner R U hR hU
  have hLU := arctan_reciprocal_corner L U hL hU
  unfold boundaryIntegral
  rw [horizontal_cauchy p l r (-T) hnD, horizontal_cauchy p l r T hnU,
    I_mul_vertical_cauchy p r T hnR, I_mul_vertical_cauchy p l T hnL]
  rw [eL, eD]
  change
    (((Real.log (R ^ 2 + (-D) ^ 2) / 2 - Real.log ((-L) ^ 2 + (-D) ^ 2) / 2 : ℝ) : ℂ) -
      ((Real.arctan (R / (-D)) - Real.arctan ((-L) / (-D)) : ℝ) : ℂ) * Complex.I) -
    (((Real.log (R ^ 2 + U ^ 2) / 2 - Real.log ((-L) ^ 2 + U ^ 2) / 2 : ℝ) : ℂ) -
      ((Real.arctan (R / U) - Real.arctan ((-L) / U) : ℝ) : ℂ) * Complex.I) +
    (((Real.log (U ^ 2 + R ^ 2) / 2 - Real.log ((-D) ^ 2 + R ^ 2) / 2 : ℝ) : ℂ) +
      ((Real.arctan (U / R) - Real.arctan ((-D) / R) : ℝ) : ℂ) * Complex.I) -
    (((Real.log (U ^ 2 + (-L) ^ 2) / 2 - Real.log ((-D) ^ 2 + (-L) ^ 2) / 2 : ℝ) : ℂ) +
      ((Real.arctan (U / (-L)) - Real.arctan ((-D) / (-L)) : ℝ) : ℂ) * Complex.I) = _
  simp only [neg_sq, neg_div, div_neg, Real.arctan_neg]
  rw [add_comm (U ^ 2) (R ^ 2), add_comm (D ^ 2) (R ^ 2),
    add_comm (U ^ 2) (L ^ 2), add_comm (D ^ 2) (L ^ 2)]
  apply Complex.ext
  · simp; ring
  · simp
    linarith [hRD, hLD, hRU, hLU]

/-- An exterior point has zero integral, by analyticity on the filled rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a5862bf8ecf094317d1cfa2f0e02a615a1ab11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
