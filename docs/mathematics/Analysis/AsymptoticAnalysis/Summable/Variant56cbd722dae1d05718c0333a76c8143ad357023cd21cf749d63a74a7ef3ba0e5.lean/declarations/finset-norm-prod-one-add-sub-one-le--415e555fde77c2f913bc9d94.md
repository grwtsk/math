# Finset.norm_prod_one_add_sub_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7cb3d0f-78c4-192e-f70e-e44db06c7735",
  "kind": "lemma",
  "lexical_name": "Finset.norm_prod_one_add_sub_one_le",
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
  "slug": "finset-norm-prod-one-add-sub-one-le--415e555fde77c2f913bc9d94",
  "source": {
    "blob": "e4df3ae6fbf63fffc3feaa89f721ab08a8f319c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 150,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415e555fde77c2f913bc9d94931e4abd40f1ff2914b3ff1d8bc3bfa04c9a618f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7cb3d0f-78c4-192e-f70e-e44db06c7735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finset.norm_prod_one_add_sub_one_le (t : Finset ι) (f : ι → R) :
    ‖∏ i ∈ t, (1 + f i) - 1‖ ≤ Real.exp (∑ i ∈ t, ‖f i‖) - 1 := by
  classical
  induction t using Finset.induction_on with
  | empty => simp
  | insert x t hx IH =>
    rw [Finset.prod_insert hx, Finset.sum_insert hx, Real.exp_add,
      show (1 + f x) * ∏ i ∈ t, (1 + f i) - 1 =
        (∏ i ∈ t, (1 + f i) - 1) + f x * ∏ x ∈ t, (1 + f x) by ring]
    refine (norm_add_le_of_le IH (norm_mul_le _ _)).trans ?_
    generalize h : Real.exp (∑ i ∈ t, ‖f i‖) = A at ⊢ IH
    rw [sub_add_eq_add_sub, sub_le_sub_iff_right]
    transitivity A + ‖f x‖ * A
    · grw [norm_le_norm_sub_add (∏ x ∈ t, (1 + f x)) 1, IH, norm_one, sub_add_cancel]
    rw [← one_add_mul, add_comm]
    exact mul_le_mul_of_nonneg_right (Real.add_one_le_exp _) (h ▸ Real.exp_nonneg _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4df3ae6fbf63fffc3feaa89f721ab08a8f319c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
