# coprime_classification'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5be1ba662c7674a80f7812d8e40933b02bd9c4d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 622,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc42a108-f62e-30a0-e569-a738ff929e66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f5a6b57-b728-a61a-352d-2db48ca80f33",
  "kind": "theorem",
  "lexical_name": "coprime_classification'",
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
  "slug": "coprime-classification--7f52c280194194f02a887b6c",
  "source": {
    "blob": "5be1ba662c7674a80f7812d8e40933b02bd9c4d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 622,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f52c280194194f02a887b6c2bd74ad39979f6b07b6ee2c8c8aaadedce6ad240",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f5a6b57-b728-a61a-352d-2db48ca80f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_classification' {x y z : ℤ} (h : PythagoreanTriple x y z)
    (h_coprime : Int.gcd x y = 1) (h_parity : x % 2 = 1) (h_pos : 0 < z) :
    ∃ m n,
      x = m ^ 2 - n ^ 2 ∧
        y = 2 * m * n ∧
          z = m ^ 2 + n ^ 2 ∧
            Int.gcd m n = 1 ∧ (m % 2 = 0 ∧ n % 2 = 1 ∨ m % 2 = 1 ∧ n % 2 = 0) ∧ 0 ≤ m := by
  obtain ⟨m, n, ht1, ht2, ht3, ht4⟩ :=
    PythagoreanTriple.coprime_classification.mp (And.intro h h_coprime)
  cases' le_or_lt 0 m with hm hm
  · use m, n
    cases' ht1 with h_odd h_even
    · apply And.intro h_odd.1
      apply And.intro h_odd.2
      cases' ht2 with h_pos h_neg
      · apply And.intro h_pos (And.intro ht3 (And.intro ht4 hm))
      · exfalso
        revert h_pos
        rw [h_neg]
        exact imp_false.mpr (not_lt.mpr (neg_nonpos.mpr (add_nonneg (sq_nonneg m) (sq_nonneg n))))
    exfalso
    rcases h_even with ⟨rfl, -⟩
    rw [mul_assoc, Int.mul_emod_right] at h_parity
    exact zero_ne_one h_parity
  · use -m, -n
    cases' ht1 with h_odd h_even
    · rw [neg_sq m]
      rw [neg_sq n]
      apply And.intro h_odd.1
      constructor
      · rw [h_odd.2]
        ring
      cases' ht2 with h_pos h_neg
      · apply And.intro h_pos
        constructor
        · delta Int.gcd
          rw [Int.natAbs_neg, Int.natAbs_neg]
          exact ht3
        · rw [Int.neg_emod_two, Int.neg_emod_two]
          apply And.intro ht4
          linarith
      · exfalso
        revert h_pos
        rw [h_neg]
        exact imp_false.mpr (not_lt.mpr (neg_nonpos.mpr (add_nonneg (sq_nonneg m) (sq_nonneg n))))
    exfalso
    rcases h_even with ⟨rfl, -⟩
    rw [mul_assoc, Int.mul_emod_right] at h_parity
    exact zero_ne_one h_parity
#align pythagorean_triple.coprime_classification' PythagoreanTriple.coprime_classification'

/-- **Formula for Pythagorean Triples** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5be1ba662c7674a80f7812d8e40933b02bd9c4d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
