# traj_eq_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 583,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74a183f5-7c6b-8640-029f-ebd7eca5bceb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc95b8af-afb0-3638-4cee-e586afd56653",
  "kind": "theorem",
  "lexical_name": "traj_eq_prod",
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
  "slug": "traj-eq-prod--be8b40c8335debf512d1d110",
  "source": {
    "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 583,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be8b40c8335debf512d1d110d6160cf9bf9ec980caa671beccb602aa23e665c3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc95b8af-afb0-3638-4cee-e586afd56653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traj_eq_prod (a : ℕ) :
    traj κ a = (Kernel.id ×ₖ (traj κ a).map (Set.Ioi a).domRestrict).map (IicProdIoi a) := by
  refine (eq_traj' _ (a + 1) _ fun b hb ↦ ?_).symm
  rw [← map_comp_right]
  conv_lhs => enter [2]; change (IicProdIoc a b) ∘
    (Prod.map id (fun x i ↦ x ⟨i.1, Set.mem_Ioi.2 (mem_Ioc.1 i.2).1⟩))
  · rw [map_comp_right, ← map_prod_map, ← map_comp_right]
    · conv_lhs => enter [1, 2, 2]; change (Ioc a b).restrict
      rw [← restrict₂_comp_restrict Ioc_subset_Iic_self, ← frestrictLe, map_comp_right,
        traj_map_frestrictLe, map_id, ← partialTraj_eq_prod]
      all_goals fun_prop
    all_goals fun_prop
  all_goals fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55c556e1012c4fcc8a84a45c7cd0c3a401453c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
