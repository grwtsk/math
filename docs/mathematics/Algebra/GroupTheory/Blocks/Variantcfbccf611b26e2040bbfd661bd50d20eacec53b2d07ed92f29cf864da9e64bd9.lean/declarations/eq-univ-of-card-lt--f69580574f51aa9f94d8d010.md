# eq_univ_of_card_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e018ae2-0c62-9b76-a82d-bae0c4aeb608",
  "kind": "theorem",
  "lexical_name": "eq_univ_of_card_lt",
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
  "slug": "eq-univ-of-card-lt--f69580574f51aa9f94d8d010",
  "source": {
    "blob": "bca0d1f038cd60072528a4a505ef572dad1f7c78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 705,
    "path": "GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f69580574f51aa9f94d8d01072534ab7e103e166a0a45ccfb67ff70fa1e7c48d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e018ae2-0c62-9b76-a82d-bae0c4aeb608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 705–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_univ_of_card_lt [hX : Finite X] (hB : IsBlock G B) (hB' : Nat.card X < Set.ncard B * 2) :
    B = Set.univ := by
  rcases Set.eq_empty_or_nonempty B with rfl | hB_ne
  · simp only [Set.ncard_empty, zero_mul, not_lt_zero'] at hB'
  have key := hB.ncard_block_mul_ncard_orbit_eq hB_ne
  rw [← key, mul_lt_mul_iff_of_pos_left (by rwa [Set.ncard_pos])] at hB'
  interval_cases (orbit G B).ncard
  · rw [mul_zero, eq_comm, Nat.card_eq_zero, or_iff_left hX.not_infinite] at key
    exact (IsEmpty.exists_iff.mp hB_ne).elim
  · rw [mul_one, ← Set.ncard_univ] at key
    rw [Set.eq_of_subset_of_ncard_le (Set.subset_univ B) key.ge]

@[deprecated (since := "2024-10-29")] alias eq_univ_card_lt := eq_univ_of_card_lt

/-- If a block has too many translates, then it is a (sub)singleton -/
@[to_additive "If a block has too many translates, then it is a (sub)singleton"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean#L705).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca0d1f038cd60072528a4a505ef572dad1f7c78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
