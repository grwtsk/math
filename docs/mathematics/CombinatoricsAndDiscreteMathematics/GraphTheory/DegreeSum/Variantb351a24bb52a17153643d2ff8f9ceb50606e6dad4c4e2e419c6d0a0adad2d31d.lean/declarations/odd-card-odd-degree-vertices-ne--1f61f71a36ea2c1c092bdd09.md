# odd_card_odd_degree_vertices_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a7a15a9053d450830a51dc5f0e13f7c294970dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f0d32a3-4bfa-daf2-5a19-135b60069066",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4996ec71-46a4-4660-d63b-15f5caa68fad",
  "kind": "theorem",
  "lexical_name": "odd_card_odd_degree_vertices_ne",
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
  "slug": "odd-card-odd-degree-vertices-ne--1f61f71a36ea2c1c092bdd09",
  "source": {
    "blob": "8a7a15a9053d450830a51dc5f0e13f7c294970dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f61f71a36ea2c1c092bdd0953298718f42bc1652a0fc611f09073efc14a4ff4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4996ec71-46a4-4660-d63b-15f5caa68fad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_card_odd_degree_vertices_ne [Fintype V] [DecidableEq V] [DecidableRel G.Adj] (v : V)
    (h : Odd (G.degree v)) : Odd (univ.filter fun w => w ≠ v ∧ Odd (G.degree w)).card := by
  rcases G.even_card_odd_degree_vertices with ⟨k, hg⟩
  have hk : 0 < k := by
    have hh : (filter (fun v : V => Odd (G.degree v)) univ).Nonempty := by
      use v
      simp only [true_and_iff, mem_filter, mem_univ]
      exact h
    rwa [← card_pos, hg, ← two_mul, zero_lt_mul_left] at hh
    exact zero_lt_two
  have hc : (fun w : V => w ≠ v ∧ Odd (G.degree w)) = fun w : V => Odd (G.degree w) ∧ w ≠ v := by
    ext w
    rw [and_comm]
  simp only [hc, filter_congr]
  rw [← filter_filter, filter_ne', card_erase_of_mem]
  · refine' ⟨k - 1, tsub_eq_of_eq_add <| hg.trans _⟩
    rw [add_assoc, one_add_one_eq_two, ← Nat.mul_succ, ← two_mul]
    congr
    exact (tsub_add_cancel_of_le <| Nat.succ_le_iff.2 hk).symm
  · simpa only [true_and_iff, mem_filter, mem_univ]
#align simple_graph.odd_card_odd_degree_vertices_ne SimpleGraph.odd_card_odd_degree_vertices_ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7a15a9053d450830a51dc5f0e13f7c294970dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
