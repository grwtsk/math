# eval_iterate_derivative_eq_iff_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eb9c7be31f2c96f41bc6a7e97e29256d9b76163",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25fae4e4-265f-bbdc-85e1-0acd76438ae2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:244a8451-1432-3774-885c-5cf150bc31bb",
  "kind": "theorem",
  "lexical_name": "eval_iterate_derivative_eq_iff_of_bounded",
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
  "slug": "eval-iterate-derivative-eq-iff-of-bounded--4b040dfbfde58407cf37c0c1",
  "source": {
    "blob": "2eb9c7be31f2c96f41bc6a7e97e29256d9b76163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 295,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b040dfbfde58407cf37c0c1afd18031010c916774bfaf8ea2c5172d04ef22ee",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:244a8451-1432-3774-885c-5cf150bc31bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_iterate_derivative_eq_iff_of_bounded {n : ℕ} {P : ℝ[X]}
    {k : ℕ} (hk₁ : 0 < k) (hk₂ : k ≤ n) {x : ℝ} (hx : 1 ≤ x)
    (hPdeg : P.degree ≤ n) (hPbnd : ∀ x ∈ Set.Icc (-1) 1, |P.eval x| ≤ 1) :
    (derivative^[k] P).eval x = (derivative^[k] (T ℝ n)).eval x ↔ P = T ℝ n := by
  convert!
    sumNodes_eq_sumNodes_T_iff (fun i hi => negOnePow_mul_iterateDerivativeC_pos hk₁ hk₂ hi hx)
      hPdeg hPbnd using 2
  · rw [sumNodes_eq_eval_iterate_derivative hk₂ x hPdeg]
  · rw [sumNodes_eq_eval_iterate_derivative hk₂ x (le_of_eq (degree_T ℝ n))]

end Polynomial.Chebyshev
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb9c7be31f2c96f41bc6a7e97e29256d9b76163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
