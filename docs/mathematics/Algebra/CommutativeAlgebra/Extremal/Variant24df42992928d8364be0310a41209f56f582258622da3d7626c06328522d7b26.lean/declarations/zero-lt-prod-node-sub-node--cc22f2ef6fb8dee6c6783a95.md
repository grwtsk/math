# zero_lt_prod_node_sub_node

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eb9c7be31f2c96f41bc6a7e97e29256d9b76163",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43e687fd-cb88-cd61-e397-037b580b6820",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b8cd1e2-398e-2124-43d0-f9015fab98c7",
  "kind": "lemma",
  "lexical_name": "zero_lt_prod_node_sub_node",
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
  "slug": "zero-lt-prod-node-sub-node--cc22f2ef6fb8dee6c6783a95",
  "source": {
    "blob": "2eb9c7be31f2c96f41bc6a7e97e29256d9b76163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc22f2ef6fb8dee6c6783a95833ce723fe2d8c2c1547775d2218f7fe77b4cb0e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b8cd1e2-398e-2124-43d0-f9015fab98c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zero_lt_prod_node_sub_node {n i : ℕ} (hi : i ≤ n) :
    0 < (-1) ^ i * ∏ j ∈ (Finset.range (n + 1)).erase i, (node n i - node n j) := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [Nat.le_zero.mp hi]
  have h₁ : 0 < ∏ j ∈ Finset.range i, ((-1) * (node n i - node n j)) :=
    Finset.prod_pos (fun j hj => mul_pos_of_neg_of_neg neg_one_lt_zero <| sub_neg.mpr <|
    node_lt hi (Finset.mem_range.mp hj))
  rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_range] at h₁
  have h₂ : 0 < ∏ j ∈ Finset.Ioc i n, (node n i - node n j) :=
    Finset.prod_pos (fun j hj => sub_pos.mpr <|
      node_lt (Finset.mem_Ioc.mp hj).2 (Finset.mem_Ioc.mp hj).1)
  have union : (Finset.range (n + 1)).erase i = (Finset.range i) ∪ Finset.Ioc i n := by grind
  have disjoint : Disjoint (Finset.range i) (Finset.Ioc i n) := by grind [Finset.disjoint_iff_ne]
  rw [union, Finset.prod_union disjoint, ← mul_assoc]
  exact mul_pos h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb9c7be31f2c96f41bc6a7e97e29256d9b76163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
