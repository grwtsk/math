# quotient_lo_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51314cb4-2458-0aef-f27f-c4fe7fcbc0d6",
  "kind": "lemma",
  "lexical_name": "quotient_lo_upper_bound",
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
  "slug": "quotient-lo-upper-bound--40b70293691f0fe79dc59515",
  "source": {
    "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40b70293691f0fe79dc595158760cbabf339502c58b9daef99202abc35f93d8a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51314cb4-2458-0aef-f27f-c4fe7fcbc0d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotient_lo_upper_bound {fc : IntervalRat} {dI : IntervalRat.IntervalRatNonzero}
    (hdI_pos : 0 < dI.lo) :
    let Q := IntervalRat.mul fc (IntervalRat.invNonzero dI)
    Q.lo ≤ fc.lo / dI.lo := by
  intro Q
  have hdInv : IntervalRat.invNonzero dI = ⟨dI.hi⁻¹, dI.lo⁻¹, by
    have hlo : (0 : ℚ) < dI.lo := hdI_pos
    have hhi : (0 : ℚ) < dI.hi := lt_of_lt_of_le hlo dI.le
    exact inv_anti₀ hlo dI.le⟩ := by
    unfold IntervalRat.invNonzero
    simp only [hdI_pos, ↓reduceDIte]
  -- Q.lo = min of corners, which is ≤ fc.lo * dI.lo⁻¹
  show (IntervalRat.mul fc (IntervalRat.invNonzero dI)).lo ≤ fc.lo / dI.lo
  rw [hdInv]
  simp only [IntervalRat.mul, div_eq_mul_inv]
  -- fc.lo * dI.lo⁻¹ appears in min(...), so min ≤ fc.lo * dI.lo⁻¹
  exact le_trans (min_le_left _ _) (min_le_right _ _)

/-- For negative dI, the quotient Q has Q.hi ≥ fc.lo / dI.hi.
    This is because fc.lo * dI.hi⁻¹ is one of the four corners in Q = fc * inv(dI),
    and Q.hi = max of all corners.
    This bound is used for Newton contraction contradiction when f < 0 at both endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
