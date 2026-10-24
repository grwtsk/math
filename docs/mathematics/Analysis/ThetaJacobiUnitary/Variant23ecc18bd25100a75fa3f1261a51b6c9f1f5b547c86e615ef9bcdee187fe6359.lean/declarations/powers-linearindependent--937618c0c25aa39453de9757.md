# powers_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d94945c95a1b5961b1032f6beef3839008a1b38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:621f676e-75b8-dde3-e4de-72c0d7a2bb06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3b2ec99-86fc-4cd8-da1a-439a112f6445",
  "kind": "theorem",
  "lexical_name": "powers_linearIndependent",
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
  "slug": "powers-linearindependent--937618c0c25aa39453de9757",
  "source": {
    "blob": "8d94945c95a1b5961b1032f6beef3839008a1b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 63,
    "path": "GRWTSK/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937618c0c25aa39453de97576f0a5994efd37698df0a6218f6a96844ba9fb41c",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3b2ec99-86fc-4cd8-da1a-439a112f6445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powers_linearIndependent {t : ℝ} (ht : 0 ≤ t) :
    LinearIndependent ℂ (powerVector t ht) := by
  classical
  rw [linearIndependent_iff']
  intro s c hc n hn
  have hz : (fun x : ℝ => ∑ j ∈ s, c j * (x : ℂ) ^ j) =ᵐ[momentMeasure t] 0 := by
    have ha := finite_power_sum_ae s c ht
    rw [hc] at ha
    exact ha.symm.trans (Lp.coeFn_zero ℂ 2 (momentMeasure t))
  let pr : ℝ[X] := ∑ j ∈ s, Polynomial.monomial j (c j).re
  let pi : ℝ[X] := ∑ j ∈ s, Polynomial.monomial j (c j).im
  have hr : pr = 0 := real_polynomial_eq_zero_of_ae pr ht (by
    filter_upwards [hz] with x hx
    have h := congrArg Complex.re hx
    simpa [pr, Polynomial.eval_finsetSum, Polynomial.eval_monomial,
      map_sum, Complex.mul_re, ← Complex.ofReal_pow] using h)
  have hi : pi = 0 := real_polynomial_eq_zero_of_ae pi ht (by
    filter_upwards [hz] with x hx
    have h := congrArg Complex.im hx
    simpa [pi, Polynomial.eval_finsetSum, Polynomial.eval_monomial,
      map_sum, Complex.mul_im, ← Complex.ofReal_pow] using h)
  apply Complex.ext
  · have h := congrArg (fun p : ℝ[X] => p.coeff n) hr
    simpa [pr, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial, hn] using h
  · have h := congrArg (fun p : ℝ[X] => p.coeff n) hi
    simpa [pi, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial, hn] using h

/-- Countable orthonormal polynomial vectors, in ascending degree and positive normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d94945c95a1b5961b1032f6beef3839008a1b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
