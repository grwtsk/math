# tailPoly_eval_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1e91cd9-b577-c4b4-f366-c7afb98b159b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55d0b077-7a7c-440f-8cc8-d4e19a1f974c",
  "kind": "theorem",
  "lexical_name": "tailPoly_eval_bounded",
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
  "slug": "tailpoly-eval-bounded--45ac9d8c434b66db502cf8e7",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1168,
    "line": 1147,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45ac9d8c434b66db502cf8e7d0a66579f939f4b929e5686f547c57023b136a87",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d0b077-7a7c-440f-8cc8-d4e19a1f974c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1147–1168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailPoly_eval_bounded (p : Polynomial ℚ) (n : ℕ) (domain : IntervalRat) (c : ℚ) (x : ℝ)
    (hx : x ∈ domain) :
    |Polynomial.aeval (x - c) (tailPoly p n)| ≤ boundPolyAbs (tailPoly p n) domain c := by
  set tail := tailPoly p n with htail_def
  set B := boundPolyAbs tail domain c with hB_def
  set r : ℚ := max (|domain.hi - c|) (|domain.lo - c|) with hr_def
  have hr_real : (r : ℝ) = max (|(domain.hi : ℝ) - c|) (|(domain.lo : ℝ) - c|) := by
    simp only [hr_def, Rat.cast_max, Rat.cast_abs, Rat.cast_sub]
  have habs_le_r : |x - c| ≤ r := by
    rw [hr_real]
    exact abs_sub_le_radius x c domain hx
  have h := aeval_abs_le_sum tail (x - c) r habs_le_r
  have hcoeff_abs : ∀ i, (|tail.coeff i| : ℝ) = |(tail.coeff i : ℝ)| := fun i => rfl
  calc |Polynomial.aeval (x - ↑c) tail|
      ≤ ∑ i ∈ Finset.range (tail.natDegree + 1), |(tail.coeff i : ℝ)| * (r : ℝ) ^ i := h
    _ = ∑ i ∈ Finset.range (tail.natDegree + 1), (|tail.coeff i| : ℝ) * (r : ℝ) ^ i := by
        apply Finset.sum_congr rfl; intro i _; rw [← hcoeff_abs]
    _ = (∑ i ∈ Finset.range (tail.natDegree + 1), |tail.coeff i| * r ^ i : ℚ) := by
        simp only [Rat.cast_sum, Rat.cast_mul, Rat.cast_abs, Rat.cast_pow]
    _ = (B : ℝ) := by rw [hB_def]; rfl

/-- Polynomial bound lemma: |P(y)| ≤ boundPolyAbs P domain c for y = x - c, x ∈ domain -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L1147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
