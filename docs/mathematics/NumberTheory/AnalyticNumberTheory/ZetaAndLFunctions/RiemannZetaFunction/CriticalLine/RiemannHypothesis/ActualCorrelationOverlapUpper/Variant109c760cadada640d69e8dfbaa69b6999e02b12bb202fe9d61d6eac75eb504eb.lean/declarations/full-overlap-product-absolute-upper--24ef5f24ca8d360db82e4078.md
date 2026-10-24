# full_overlap_product_absolute_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c42c00b8-7312-2bed-12e1-073853c18a84",
  "kind": "theorem",
  "lexical_name": "full_overlap_product_absolute_upper",
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
  "slug": "full-overlap-product-absolute-upper--24ef5f24ca8d360db82e4078",
  "source": {
    "blob": "c8d91fe07ae130a066310230c067400f412356a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOverlapUpper/Variant109c760cadada640d69e8dfbaa69b6999e02b12bb202fe9d61d6eac75eb504eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24ef5f24ca8d360db82e4078b1c0114651ef2d6b4353a8331e7049378420807a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOverlapUpper/Variant109c760cadada640d69e8dfbaa69b6999e02b12bb202fe9d61d6eac75eb504eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c42c00b8-7312-2bed-12e1-073853c18a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_overlap_product_absolute_upper {A y : ℝ} (hA : 1 ≤ A)
    (hy : 0 ≤ y) (x : ℝ) :
    |v A x * v A (x - (2 * A - y))| ≤ overlapCap A y := by
  have hpos : 0 < A := by linarith
  have hcap0 : 0 ≤ overlapCap A y := by unfold overlapCap; positivity
  by_cases hx : x ∈ Icc (-A) A
  · by_cases ht : x - (2 * A - y) ∈ Icc (-A) A
    · have hs0 : 0 ≤ A - x := by linarith [hx.2]
      have hsA : A - x ≤ 2 * A := by linarith [hx.1]
      have hr0 : 0 ≤ y - (A - x) := by linarith [ht.1]
      have hrA : y - (A - x) ≤ 2 * A := by linarith [ht.2]
      have hsy : A - x ≤ y := by linarith
      have hry : y - (A - x) ≤ y := by linarith
      have hl := actual_full_normalized_edge_absolute_upper hA hs0 hsA
      have hr := actual_full_normalized_edge_absolute_upper hA hr0 hrA
      have hs2 : (A - x) ^ 2 ≤ y ^ 2 := by nlinarith
      have hr2 : (y - (A - x)) ^ 2 ≤ y ^ 2 := by nlinarith
      have hpoly (s : ℝ) (hs : s ^ 2 ≤ y ^ 2) :
          24 * s ^ 2 * (64 + s ^ 2) / (A ^ 4 * Real.sqrt A) ≤
            24 * y ^ 2 * (64 + y ^ 2) / (A ^ 4 * Real.sqrt A) := by
        apply div_le_div_of_nonneg_right _ (by positivity)
        nlinarith [mul_nonneg (sub_nonneg.mpr hs) (add_nonneg (sq_nonneg y) (sq_nonneg s))]
      have hl' : |v A x| ≤ 24 * y ^ 2 * (64 + y ^ 2) / (A ^ 4 * Real.sqrt A) := by
        simpa using hl.trans (hpoly (A - x) hs2)
      have heq : x - (2 * A - y) = -(A - (y - (A - x))) := by ring
      rw [abs_mul, heq, actual_normalized_test_even hpos]
      have hr' := hr.trans (hpoly (y - (A - x)) hr2)
      have hm := mul_le_mul hl' hr' (abs_nonneg _) (by positivity)
      have hprice : (24 * y ^ 2 * (64 + y ^ 2) / (A ^ 4 * Real.sqrt A)) *
          (24 * y ^ 2 * (64 + y ^ 2) / (A ^ 4 * Real.sqrt A)) = overlapCap A y := by
        calc
          _ = 576 * y ^ 4 * (64 + y ^ 2) ^ 2 /
              ((A ^ 4) ^ 2 * (Real.sqrt A) ^ 2) := by ring
          _ = _ := by rw [Real.sq_sqrt hpos.le]; unfold overlapCap; congr 1; ring
      rw [hprice] at hm
      exact hm
    · have hz : v A (x - (2 * A - y)) = 0 := by
        rw [normalizedTest_eq_indicator A hpos]
        exact indicator_of_notMem ht _
      simpa [hz] using hcap0
  · have hz : v A x = 0 := by
      rw [normalizedTest_eq_indicator A hpos]
      exact indicator_of_notMem hx _
    simpa [hz] using hcap0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOverlapUpper/Variant109c760cadada640d69e8dfbaa69b6999e02b12bb202fe9d61d6eac75eb504eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOverlapUpper/Variant109c760cadada640d69e8dfbaa69b6999e02b12bb202fe9d61d6eac75eb504eb.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d91fe07ae130a066310230c067400f412356a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
