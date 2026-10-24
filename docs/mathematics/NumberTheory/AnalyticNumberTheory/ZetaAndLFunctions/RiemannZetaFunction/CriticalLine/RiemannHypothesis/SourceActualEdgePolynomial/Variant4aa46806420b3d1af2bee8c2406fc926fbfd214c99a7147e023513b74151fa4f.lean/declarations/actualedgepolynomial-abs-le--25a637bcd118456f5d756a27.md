# actualEdgePolynomial_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d73ab704-87c6-a5cd-c6c0-ac9b1202aebf",
  "kind": "theorem",
  "lexical_name": "actualEdgePolynomial_abs_le",
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
  "slug": "actualedgepolynomial-abs-le--25a637bcd118456f5d756a27",
  "source": {
    "blob": "d4e8ae10516eed1fc7b0554ac1bd1351a222c2af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant4aa46806420b3d1af2bee8c2406fc926fbfd214c99a7147e023513b74151fa4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a637bcd118456f5d756a27ef099febf2eb5016b30fbb5bfaefb84e227fa995",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant4aa46806420b3d1af2bee8c2406fc926fbfd214c99a7147e023513b74151fa4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d73ab704-87c6-a5cd-c6c0-ac9b1202aebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEdgePolynomial_abs_le {A u : ℝ} (hA : 0 < A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    |actualEdgePolynomial A u| ≤ 192 * u ^ 2 + 4 * u ^ 4 := by
  have hr0 : 0 ≤ u / A := div_nonneg hu hA.le
  have hr2 : u / A ≤ 2 := (div_le_iff₀ hA).2 (by linarith)
  have hs0 : 0 ≤ (1 - u / A) ^ 2 := sq_nonneg _
  have hs1 : (1 - u / A) ^ 2 ≤ 1 := by nlinarith
  have hz0 : 0 ≤ (2 - u / A) ^ 2 := sq_nonneg _
  have hz4 : (2 - u / A) ^ 2 ≤ 4 := by nlinarith
  have hb : |7 * (1 - u / A) ^ 2 - 1| ≤ 6 := by
    rw [abs_le]
    constructor <;> nlinarith
  have hsum := abs_sub (8 * (7 * (1 - u / A) ^ 2 - 1))
    (u ^ 2 * (2 - u / A) ^ 2 / 4)
  rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 8),
    abs_of_nonneg (by positivity : 0 ≤ u ^ 2 * (2 - u / A) ^ 2 / 4)] at hsum
  have hi : |8 * (7 * (1 - u / A) ^ 2 - 1) -
      u ^ 2 * (2 - u / A) ^ 2 / 4| ≤ 48 + u ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_left hz4 (sq_nonneg u)]
  unfold actualEdgePolynomial
  rw [abs_mul, abs_mul, abs_of_nonneg (sq_nonneg u),
    abs_of_nonneg (sq_nonneg (2 - u / A))]
  calc
    _ ≤ (u ^ 2 * (2 - u / A) ^ 2) * (48 + u ^ 2) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ (u ^ 2 * 4) * (48 + u ^ 2) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hz4 (sq_nonneg u)) (by positivity)
    _ = _ := by ring

/-- The literal signed test has a genuine full support-edge absolute budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant4aa46806420b3d1af2bee8c2406fc926fbfd214c99a7147e023513b74151fa4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgePolynomial/Variant4aa46806420b3d1af2bee8c2406fc926fbfd214c99a7147e023513b74151fa4f.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e8ae10516eed1fc7b0554ac1bd1351a222c2af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
