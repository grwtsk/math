# one_add_mul_le_pow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cbaae42-2f97-4780-7a94-4860e46ed042",
  "kind": "lemma",
  "lexical_name": "one_add_mul_le_pow'",
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
  "slug": "one-add-mul-le-pow--e5b6b883daac3ede337df091",
  "source": {
    "blob": "4963936c3e86f6c3976c92562431e044f7000033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 26,
    "path": "GRWTSK/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5b6b883daac3ede337df091ac576866011dd3bc32845ad101595b6000641ea3",
  "verification": {
    "reference": "docs/verification/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbaae42-2f97-4780-7a94-4860e46ed042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_add_mul_le_pow' (Hsq : 0 ≤ a * a) (Hsq' : 0 ≤ (1 + a) * (1 + a)) (H : 0 ≤ 2 + a) :
    ∀ n : ℕ, 1 + n * a ≤ (1 + a) ^ n
  | 0 => by simp
  | 1 => by simp
  | n + 2 =>
    have : 0 ≤ n * (a * a * (2 + a)) + a * a :=
      add_nonneg (mul_nonneg n.cast_nonneg (mul_nonneg Hsq H)) Hsq
    calc
      _ ≤ 1 + ↑(n + 2) * a + (n * (a * a * (2 + a)) + a * a) := le_add_of_nonneg_right this
      _ = (1 + a) * (1 + a) * (1 + n * a) := by
          simp only [Nat.cast_add, add_mul, mul_add, one_mul, mul_one, ← one_add_one_eq_two,
            Nat.cast_one, add_assoc, add_right_inj]
          simp only [← add_assoc, add_comm _ (↑n * a)]
          simp only [add_assoc, (n.cast_commute (_ : R)).left_comm]
          simp only [add_comm, add_left_comm]
      _ ≤ (1 + a) * (1 + a) * (1 + a) ^ n :=
        mul_le_mul_of_nonneg_left (one_add_mul_le_pow' Hsq Hsq' H _) Hsq'
      _ = (1 + a) ^ (n + 2) := by simp only [pow_succ', mul_assoc]

end OrderedSemiring

section LinearOrderedRing
variable [Ring R] [LinearOrder R] [IsStrictOrderedRing R] {a : R} {n : ℕ}

/-- **Bernoulli's inequality** for `n : ℕ`, `-2 ≤ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4963936c3e86f6c3976c92562431e044f7000033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
