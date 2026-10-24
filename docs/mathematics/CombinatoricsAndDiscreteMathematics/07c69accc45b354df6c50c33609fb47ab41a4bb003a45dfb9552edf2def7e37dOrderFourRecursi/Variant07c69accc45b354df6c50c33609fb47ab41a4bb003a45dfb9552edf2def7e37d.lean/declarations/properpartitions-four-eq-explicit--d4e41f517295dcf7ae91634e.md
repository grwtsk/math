# properPartitions_four_eq_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e3db9c319ef295edd69a605e31d0a234b987bb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d70e2965-1a03-771f-1d1b-67dde22ff556",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49cf229b-556d-d9a5-31cf-f904f8549edc",
  "kind": "theorem",
  "lexical_name": "properPartitions_four_eq_explicit",
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
  "slug": "properpartitions-four-eq-explicit--d4e41f517295dcf7ae91634e",
  "source": {
    "blob": "3e3db9c319ef295edd69a605e31d0a234b987bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e41f517295dcf7ae91634e7d4af63551e26b75b918e0710eefd5b22f533a13",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49cf229b-556d-d9a5-31cf-f904f8549edc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPartitions_four_eq_explicit :
    properPartitions 4 (Nat.succ_pos 3) =
      properPartitionsFourExplicit := by
  apply Finset.Subset.antisymm
  · intro P hP
    have hr := selectedFourBlocks_reconstruct P hP
    have hc := selectedFourBlocks_complete
      (decide (({0} : Finset (Fin 4)) ∈ P.parts))
      (decide (({1} : Finset (Fin 4)) ∈ P.parts))
      (decide (({2} : Finset (Fin 4)) ∈ P.parts))
      (decide (({3} : Finset (Fin 4)) ∈ P.parts))
      (decide (({0, 1} : Finset (Fin 4)) ∈ P.parts))
      (decide (({0, 2} : Finset (Fin 4)) ∈ P.parts))
      (decide (({0, 3} : Finset (Fin 4)) ∈ P.parts))
      (decide (({1, 2} : Finset (Fin 4)) ∈ P.parts))
      (decide (({1, 3} : Finset (Fin 4)) ∈ P.parts))
      (decide (({2, 3} : Finset (Fin 4)) ∈ P.parts))
      (decide (({0, 1, 2} : Finset (Fin 4)) ∈ P.parts))
      (decide (({0, 1, 3} : Finset (Fin 4)) ∈ P.parts))
      (decide (({0, 2, 3} : Finset (Fin 4)) ∈ P.parts))
      (decide (({1, 2, 3} : Finset (Fin 4)) ∈ P.parts))
    have hm : P.parts ∈ properPartitionsFourExplicit.image Finpartition.parts := by
      rw [hr]
      apply hc
      rw [← hr]
      exact ⟨P.supIndep, P.sup_parts⟩
    obtain ⟨Q, hQ, hQP⟩ := Finset.mem_image.mp hm
    exact (Finpartition.ext hQP) ▸ hQ
  · intro P hP
    simp only [properPartitionsFourExplicit, Finset.mem_insert, Finset.mem_singleton] at hP
    rcases hP with rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl
    all_goals
      apply Finset.mem_erase.mpr
      refine ⟨?_, Finset.mem_univ _⟩
      intro heq
      have hp := congrArg Finpartition.parts heq
      exact absurd hp (by decide)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3db9c319ef295edd69a605e31d0a234b987bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
