# centered_numerator_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eefe645e-510b-2f47-a8a1-649bc5537440",
  "kind": "theorem",
  "lexical_name": "centered_numerator_order",
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
  "slug": "centered-numerator-order--09c3b8e7f4485b426eaedfdf",
  "source": {
    "blob": "3ba017d5c33533a8fbd4ac80136ada69ed3a2d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant6500cf8f86e5932c6da20822a9cb7befd161a5fd94f452ac0719c09e22edcb6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c3b8e7f4485b426eaedfdf73ce0e547d270a940b32f5e7e90a64271107934d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant6500cf8f86e5932c6da20822a9cb7befd161a5fd94f452ac0719c09e22edcb6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefe645e-510b-2f47-a8a1-649bc5537440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem centered_numerator_order
    (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt (fun z : ℂ => actualRieszCriticalNumerator z -
      (actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z)
      ((ρ : ℂ) - 1 / 2) = -1 := by
  have hr : AnalyticAt ℂ (fun z : ℂ =>
      -(actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z)
      ((ρ : ℂ) - 1 / 2) := by fun_prop
  have ht : meromorphicOrderAt actualRieszCriticalNumerator ((ρ : ℂ) - 1 / 2) <
      meromorphicOrderAt (fun z : ℂ =>
        -(actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z)
        ((ρ : ℂ) - 1 / 2) := by
    rw [actualRieszCriticalNumerator_order_at_actual_zero ρ]
    have hn : (-1 : WithTop ℤ) < 0 := WithTop.coe_lt_coe.mpr (by norm_num)
    exact lt_of_lt_of_le hn hr.meromorphicOrderAt_nonneg
  have ho := meromorphicOrderAt_add_eq_left_of_lt hr.meromorphicAt ht
  have he : (fun z : ℂ => actualRieszCriticalNumerator z -
      (actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z) =
      actualRieszCriticalNumerator + (fun z : ℂ =>
        -(actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z) := by
    funext z
    simp only [Pi.add_apply]
    ring
  rw [he, ho, actualRieszCriticalNumerator_order_at_actual_zero ρ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant6500cf8f86e5932c6da20822a9cb7befd161a5fd94f452ac0719c09e22edcb6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant6500cf8f86e5932c6da20822a9cb7befd161a5fd94f452ac0719c09e22edcb6a.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ba017d5c33533a8fbd4ac80136ada69ed3a2d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
