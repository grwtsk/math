# equivalent_one_neg_one_weighted_sum_squared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c61d0a4c2ebb082de1e67fa2f892ff09c7798b56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbea624e-aa73-1bae-38e1-50c4407f80b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3564268-1970-29d7-07fb-894bf06280db",
  "kind": "theorem",
  "lexical_name": "equivalent_one_neg_one_weighted_sum_squared",
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
  "slug": "equivalent-one-neg-one-weighted-sum-squared--a527ab8451345ed7ab4822a6",
  "source": {
    "blob": "c61d0a4c2ebb082de1e67fa2f892ff09c7798b56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a527ab8451345ed7ab4822a6b451ef714dbdaeba1f9d018f4938740ee4c2b57e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3564268-1970-29d7-07fb-894bf06280db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivalent_one_neg_one_weighted_sum_squared {M : Type*} [AddCommGroup M] [Module ℝ M]
    [FiniteDimensional ℝ M] (Q : QuadraticForm ℝ M) (hQ : (associated (R₁ := ℝ) Q).Nondegenerate) :
    ∃ w : Fin (FiniteDimensional.finrank ℝ M) → ℝ,
      (∀ i, w i = -1 ∨ w i = 1) ∧ Equivalent Q (weightedSumSquares ℝ w) :=
  let ⟨w, ⟨hw₁⟩⟩ := Q.equivalent_weightedSumSquares_units_of_nondegenerate' hQ
  ⟨Real.sign ∘ ((↑) : ℝˣ → ℝ) ∘ w, fun i => sign_apply_eq_of_ne_zero (w i) (w i).ne_zero,
    ⟨hw₁.trans (isometryEquivSignWeightedSumSquares (((↑) : ℝˣ → ℝ) ∘ w))⟩⟩
#align quadratic_form.equivalent_one_neg_one_weighted_sum_squared QuadraticForm.equivalent_one_neg_one_weighted_sum_squared

/-- **Sylvester's law of inertia**: A real quadratic form is equivalent to a weighted
sum of squares with the weights being ±1 or 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61d0a4c2ebb082de1e67fa2f892ff09c7798b56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
