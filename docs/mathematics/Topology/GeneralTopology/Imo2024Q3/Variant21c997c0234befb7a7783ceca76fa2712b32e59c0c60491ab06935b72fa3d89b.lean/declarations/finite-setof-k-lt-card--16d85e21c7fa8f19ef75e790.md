# finite_setOf_k_lt_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c891808-f63b-e004-effa-379809e83d86",
  "kind": "lemma",
  "lexical_name": "finite_setOf_k_lt_card",
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
  "slug": "finite-setof-k-lt-card--16d85e21c7fa8f19ef75e790",
  "source": {
    "blob": "3c11165dfa3919745c9b6bf989c565b8f58a342c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16d85e21c7fa8f19ef75e79049d392e7fe82a41cc61e6cebd57668e5565f4ed2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c891808-f63b-e004-effa-379809e83d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_setOf_k_lt_card : {m | ∀ hf : {i | a i = m}.Finite, k a < #hf.toFinset}.Finite := by
  rw [← Set.finite_image_iff]
  · refine Set.Finite.of_diff (hc.finite_setOf_apply_eq_k_add_one.subset fun i hi ↦ ?_)
      (Set.finite_Iic N)
    simp only [Set.mem_diff, Set.mem_image, Set.mem_setOf_eq, Set.mem_Iic, not_le] at hi
    rcases hi with ⟨⟨j, hjf, rfl⟩, hNi⟩
    rw [Set.mem_setOf_eq, hc.apply_nth_add_one_eq hjf (by omega)]
  · intro i hi j hj hij
    simp only [add_left_inj] at hij
    apply_fun a at hij
    rwa [Nat.nth_mem _ hi, Nat.nth_mem _ hj] at hij

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c11165dfa3919745c9b6bf989c565b8f58a342c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
