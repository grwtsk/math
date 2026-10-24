# coeff_mul_degree_add_degree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f9454995c7dd335d080f531a44379cfce352228",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cd42439-2730-8b15-4043-336a7b5052a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2c0e8b3-2de4-e06c-6717-5aa1dba39adb",
  "kind": "theorem",
  "lexical_name": "coeff_mul_degree_add_degree",
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
  "slug": "coeff-mul-degree-add-degree--41f1b58c03433c8081c0ece8",
  "source": {
    "blob": "0f9454995c7dd335d080f531a44379cfce352228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 273,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Operations/Variant9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41f1b58c03433c8081c0ece81e17a1feafa6508dd6cd8c487f0694eaa30bcb5c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Operations/Variant9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2c0e8b3-2de4-e06c-6717-5aa1dba39adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_degree_add_degree (p q : R[X]) :
    coeff (p * q) (natDegree p + natDegree q) = leadingCoeff p * leadingCoeff q :=
  calc
    coeff (p * q) (natDegree p + natDegree q) =
        ∑ x ∈ antidiagonal (natDegree p + natDegree q), coeff p x.1 * coeff q x.2 :=
      coeff_mul _ _ _
    _ = coeff p (natDegree p) * coeff q (natDegree q) := by
      refine Finset.sum_eq_single (natDegree p, natDegree q) ?_ ?_
      · rintro ⟨i, j⟩ h₁ h₂
        rw [mem_antidiagonal] at h₁
        by_cases H : natDegree p < i
        · rw [coeff_eq_zero_of_degree_lt
              (lt_of_le_of_lt degree_le_natDegree (WithBot.coe_lt_coe.2 H)),
            zero_mul]
        · rw [not_lt_iff_eq_or_lt] at H
          rcases H with H | H
          · subst H
            rw [add_left_cancel_iff] at h₁
            dsimp at h₁
            subst h₁
            exact (h₂ rfl).elim
          · suffices natDegree q < j by
              rw [coeff_eq_zero_of_degree_lt
                  (lt_of_le_of_lt degree_le_natDegree (WithBot.coe_lt_coe.2 this)),
                mul_zero]
            by_contra! H'
            exact
              ne_of_lt (Nat.lt_of_lt_of_le (Nat.add_lt_add_right H j) (Nat.add_le_add_left H' _))
                h₁
      · intro H
        exfalso
        apply H
        rw [mem_antidiagonal]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Operations/Variant9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Operations/Variant9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f9454995c7dd335d080f531a44379cfce352228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
