# degree_reduce_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbde1e40ab04d6b09aa95d4c81c7a5c46be46ef9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b3cde03-c387-c47e-7f0f-b87127c60d05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ceb0a45f-97a8-53bb-ac2b-dfe15d445efc",
  "kind": "theorem",
  "lexical_name": "degree_reduce_lt",
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
  "slug": "degree-reduce-lt--1d970eed898750746f686cef",
  "source": {
    "blob": "dbde1e40ab04d6b09aa95d4c81c7a5c46be46ef9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 92,
    "path": "GRWTSK/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d970eed898750746f686cefdc48b171b41b40d0fff21fd42ed616a7c29f9a9d",
  "verification": {
    "reference": "docs/verification/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceb0a45f-97a8-53bb-ac2b-dfe15d445efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_reduce_lt {f b : MvPolynomial σ R} (hb : IsUnit (m.leadingCoeff b))
    (hbf : m.degree b ≤ m.degree f) (hf : m.degree f ≠ 0) :
    m.degree (m.reduce hb f) ≺[m] m.degree f := by
  have H : m.degree f =
      m.degree ((monomial (m.degree f - m.degree b)) (hb.unit⁻¹ * m.leadingCoeff f)) +
        m.degree b := by
    classical
    rw [degree_monomial, ite_eq_right]
    · ext d
      rw [tsub_add_cancel_of_le hbf]
    · simp only [Units.mul_right_eq_zero, leadingCoeff_eq_zero_iff]
      intro hf0
      apply hf
      simp [hf0]
  have H' : (m.reduce hb f).coeff (m.degree f) = 0 := by
    simp only [reduce, coeff_sub, sub_eq_zero]
    nth_rewrite 3 [H]
    rw [coeff_mul_of_degree_add (m := m), leadingCoeff_monomial, mul_comm, ← mul_assoc,
      IsUnit.mul_val_inv, one_mul, ← leadingCoeff]
  rw [lt_iff_le_and_ne]
  constructor
  · classical
    apply le_trans degree_sub_le
    simp only [sup_le_iff, le_refl, true_and]
    apply le_of_le_of_eq degree_mul_le
    rw [m.toSyn.injective.eq_iff]
    exact H.symm
  · intro K
    simp only [EmbeddingLike.apply_eq_iff_eq] at K
    nth_rewrite 1 [← K] at H'
    rw [← leadingCoeff, leadingCoeff_eq_zero_iff] at H'
    rw [H', degree_zero] at K
    exact hf K.symm

/-- Division by a family of multivariate polynomials
whose leading coefficients are invertible with respect to a monomial order -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbde1e40ab04d6b09aa95d4c81c7a5c46be46ef9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
