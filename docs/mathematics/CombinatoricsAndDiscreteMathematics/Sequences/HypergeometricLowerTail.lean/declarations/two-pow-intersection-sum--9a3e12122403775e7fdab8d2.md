# two_pow_intersection_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5f18021-79d0-769a-4cd9-992dd9b875ae",
  "kind": "theorem",
  "lexical_name": "two_pow_intersection_sum",
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
  "slug": "two-pow-intersection-sum--9a3e12122403775e7fdab8d2",
  "source": {
    "blob": "d585c34e73d979b5517cc5c0ebba6107cf40c1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 112,
    "path": "GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a3e12122403775e7fdab8d256bdc42ce45833b1eae08cfd43e78bfdce785a66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5f18021-79d0-769a-4cd9-992dd9b875ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_pow_intersection_sum (S B : Finset α) (hB : B ⊆ S) (k : ℕ) :
    (∑ R ∈ S.powersetCard k, 2 ^ (R ∩ B).card) =
      ∑ j ∈ Finset.range (k + 1), B.card.choose j * (S.card - j).choose (k - j) := by
  have hrow (R : Finset α) (hR : R ∈ S.powersetCard k) :
      2 ^ (R ∩ B).card = ∑ j ∈ Finset.range (k + 1), (R ∩ B).card.choose j := by
    symm
    apply sum_choose_eq_two_pow_of_le
    exact (Finset.card_le_card Finset.inter_subset_left).trans (Finset.mem_powersetCard.mp hR).2.le
  calc
    _ = ∑ R ∈ S.powersetCard k, ∑ j ∈ Finset.range (k + 1), (R ∩ B).card.choose j :=
      Finset.sum_congr rfl hrow
    _ = ∑ j ∈ Finset.range (k + 1), ∑ R ∈ S.powersetCard k, (R ∩ B).card.choose j :=
      Finset.sum_comm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro j hj
      exact intersection_choose_sum S B hB k j (by simp only [Finset.mem_range] at hj; omega)

/-- The exponential moment of the number of sampled bad elements is at most
the corresponding binomial moment. This is proved for the fixed-size law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d585c34e73d979b5517cc5c0ebba6107cf40c1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
