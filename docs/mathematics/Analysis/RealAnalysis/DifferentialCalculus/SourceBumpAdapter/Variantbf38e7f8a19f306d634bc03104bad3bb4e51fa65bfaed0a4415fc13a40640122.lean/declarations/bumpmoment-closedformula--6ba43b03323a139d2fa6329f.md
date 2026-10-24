# bumpMoment_closedFormula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b6d6820963d885a5f9835b2fe67cc438b283e2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5567356-9692-3aae-f185-bf258c0544e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34e4d5e4-e4c1-6daf-c65c-ef0dff65192c",
  "kind": "theorem",
  "lexical_name": "bumpMoment_closedFormula",
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
  "slug": "bumpmoment-closedformula--6ba43b03323a139d2fa6329f",
  "source": {
    "blob": "2b6d6820963d885a5f9835b2fe67cc438b283e2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba43b03323a139d2fa6329f8c53619240ed7352a8b83a724e8c63cf35660e6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34e4d5e4-e4c1-6daf-c65c-ef0dff65192c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_closedFormula (z : ℂ) (hz : z ≠ 0) :
    bumpMoment 0 z = 384 *
      (Complex.exp z * transformPolynomial z -
        Complex.exp (-z) * transformPolynomial (-z)) / z ^ 9 := by
  have hi : IntervalIntegrable (fun x : ℝ =>
      z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) volume (-1) 1 := by
    apply Continuous.intervalIntegrable
    fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => bumpPrimitive_hasDerivAt z x) hi
  have hleft : (∫ x : ℝ in (-1)..1,
      z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) =
      z ^ 9 * bumpMoment 0 z := by
    simp only [bumpMoment, pow_zero, one_mul, ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro x _
    ring
  rw [hleft] at h
  simp only [Complex.ofReal_one, Complex.ofReal_neg, mul_one, mul_neg] at h
  rw [ZeroTransform.primitive_endpoint_pos 1 z, ZeroTransform.primitive_endpoint_neg 1 z] at h
  simp only [one_mul] at h
  apply (eq_div_iff (pow_ne_zero 9 hz)).mpr
  linear_combination h

/-- The exact normalized source integral supplies its value at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6d6820963d885a5f9835b2fe67cc438b283e2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
