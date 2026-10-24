# Nat.prime_iff_not_exists_mul_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b81beac-5d11-c70c-10e3-e77f5a375794",
  "kind": "theorem",
  "lexical_name": "Nat.prime_iff_not_exists_mul_eq'",
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
  "slug": "nat-prime-iff-not-exists-mul-eq--f7afbb616fa620a557c6eb6b",
  "source": {
    "blob": "dce484fbbb37759807ecf0c2069e303a8848841d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7afbb616fa620a557c6eb6b84283c8e05bbce46f0074a29edd7746bd855497e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b81beac-5d11-c70c-10e3-e77f5a375794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.prime_iff_not_exists_mul_eq' (p : ℕ) :
    Nat.Prime p ↔ 2 ≤ p ∧ ¬∃ m n, 2 ≤ m ∧ m < p ∧ 2 ≤ n ∧ n < p ∧ m * n = p := by
  rw [prime_iff_not_exists_mul_eq]
  refine and_congr_right fun hp ↦ not_congr <| exists_congr fun m ↦ exists_congr fun n ↦ ?_
  refine ⟨fun ⟨hmp, hnp, hmnp⟩ ↦ ⟨?_, hmp, ?_, hnp, hmnp⟩, by tauto⟩
  · by_contra hm; interval_cases m <;> lia
  · by_contra hn; interval_cases n <;> lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dce484fbbb37759807ecf0c2069e303a8848841d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
