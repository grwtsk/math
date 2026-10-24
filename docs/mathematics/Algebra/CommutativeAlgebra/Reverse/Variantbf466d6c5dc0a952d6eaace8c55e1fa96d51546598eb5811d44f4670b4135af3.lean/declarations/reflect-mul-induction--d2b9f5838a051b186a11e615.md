# reflect_mul_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b93c1279c6580109a0e439c9bd019e18f7b7cc04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3cb1b5e-c1fa-f75e-694e-158fda24ddab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8297318-886d-6b1d-a2df-81cc62673607",
  "kind": "theorem",
  "lexical_name": "reflect_mul_induction",
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
  "slug": "reflect-mul-induction--d2b9f5838a051b186a11e615",
  "source": {
    "blob": "b93c1279c6580109a0e439c9bd019e18f7b7cc04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 174,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b9f5838a051b186a11e6156f6967ecae9768d4951e87ea04736d730d7d236f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8297318-886d-6b1d-a2df-81cc62673607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflect_mul_induction (cf cg : ℕ) :
    ∀ N O : ℕ,
      ∀ f g : R[X],
        f.support.card ≤ cf.succ →
          g.support.card ≤ cg.succ →
            f.natDegree ≤ N →
              g.natDegree ≤ O → reflect (N + O) (f * g) = reflect N f * reflect O g := by
  induction' cf with cf hcf
  --first induction (left): base case
  · induction' cg with cg hcg
    -- second induction (right): base case
    · intro N O f g Cf Cg Nf Og
      rw [← C_mul_X_pow_eq_self Cf, ← C_mul_X_pow_eq_self Cg]
      simp_rw [mul_assoc, X_pow_mul, mul_assoc, ← pow_add (X : R[X]), reflect_C_mul,
        reflect_monomial, add_comm, revAt_add Nf Og, mul_assoc, X_pow_mul, mul_assoc, ←
        pow_add (X : R[X]), add_comm]
    -- second induction (right): induction step
    · intro N O f g Cf Cg Nf Og
      by_cases g0 : g = 0
      · rw [g0, reflect_zero, mul_zero, mul_zero, reflect_zero]
      rw [← eraseLead_add_C_mul_X_pow g, mul_add, reflect_add, reflect_add, mul_add, hcg, hcg] <;>
        try assumption
      · exact le_add_left card_support_C_mul_X_pow_le_one
      · exact le_trans (natDegree_C_mul_X_pow_le g.leadingCoeff g.natDegree) Og
      · exact Nat.lt_succ_iff.mp (gt_of_ge_of_gt Cg (eraseLead_support_card_lt g0))
      · exact le_trans eraseLead_natDegree_le_aux Og
  --first induction (left): induction step
  · intro N O f g Cf Cg Nf Og
    by_cases f0 : f = 0
    · rw [f0, reflect_zero, zero_mul, zero_mul, reflect_zero]
    rw [← eraseLead_add_C_mul_X_pow f, add_mul, reflect_add, reflect_add, add_mul, hcf, hcf] <;>
      try assumption
    · exact le_add_left card_support_C_mul_X_pow_le_one
    · exact le_trans (natDegree_C_mul_X_pow_le f.leadingCoeff f.natDegree) Nf
    · exact Nat.lt_succ_iff.mp (gt_of_ge_of_gt Cf (eraseLead_support_card_lt f0))
    · exact le_trans eraseLead_natDegree_le_aux Nf
#align polynomial.reflect_mul_induction Polynomial.reflect_mul_induction

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b93c1279c6580109a0e439c9bd019e18f7b7cc04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
