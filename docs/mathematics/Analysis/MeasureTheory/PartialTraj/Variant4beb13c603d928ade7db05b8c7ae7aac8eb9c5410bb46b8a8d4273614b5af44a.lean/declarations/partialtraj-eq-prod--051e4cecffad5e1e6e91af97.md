# partialTraj_eq_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f24d4c905deecfb1b3a50c3d52d112a75e5492d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca2dcaa2-d0db-6f77-4c94-cb72cbd3a159",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bc0af64-8b3d-02b3-7f79-7d00701ef460",
  "kind": "lemma",
  "lexical_name": "partialTraj_eq_prod",
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
  "slug": "partialtraj-eq-prod--051e4cecffad5e1e6e91af97",
  "source": {
    "blob": "2f24d4c905deecfb1b3a50c3d52d112a75e5492d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 208,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:051e4cecffad5e1e6e91af976456a68bd4e426e0c501cb4ddbb50008528fdfa0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc0af64-8b3d-02b3-7f79-7d00701ef460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma partialTraj_eq_prod [∀ n, IsSFiniteKernel (κ n)] (a b : ℕ) :
    partialTraj κ a b =
    (Kernel.id ×ₖ (partialTraj κ a b).map (restrict₂ Ioc_subset_Iic_self)).map
    (IicProdIoc a b) := by
  obtain hba | hab := le_total b a
  · rw [partialTraj_le hba, IicProdIoc_le hba, map_comp_right, ← fst_eq, deterministic_map,
      fst_prod, id_map]
    all_goals fun_prop
  induction b, hab using Nat.le_induction with
  | base =>
    ext1 x
    rw [partialTraj_self, id_map, map_apply, prod_apply, IicProdIoc_self, ← Measure.fst,
    Measure.fst_prod]
    all_goals fun_prop
  | succ k h hk =>
    have : (IicProdIoc (X := X) k (k + 1)) ∘ (Prod.map (IicProdIoc a k) id) =
        (IicProdIoc (h.trans k.le_succ) ∘ (Prod.map id (IocProdIoc a k (k + 1)))) ∘
        prodAssoc := by
      ext x i
      simp only [IicProdIoc_def, MeasurableEquiv.IicProdIoc, MeasurableEquiv.coe_mk,
        Equiv.coe_fn_mk, Function.comp_apply, Prod.map_fst, Prod.map_snd, id_eq,
        Nat.succ_eq_add_one, IocProdIoc]
      split_ifs <;> try rfl
      lia
    nth_rw 1 [← partialTraj_comp_partialTraj h k.le_succ, hk, partialTraj_succ_self, comp_map,
      comap_map_comm, comap_prod, id_comap, ← id_map, map_prod_eq, ← map_comp_right, this,
      map_comp_right, id_prod_eq, prodAssoc_prod, map_comp_right, ← map_prod_map, map_id,
      ← map_comp, map_apply_eq_iff_map_symm_apply_eq, fst_prod_comp_id_prod, ← map_comp_right,
      ← coe_IicProdIoc (h.trans k.le_succ), symm_comp_self, map_id,
      deterministic_congr IicProdIoc_comp_restrict₂.symm, ← deterministic_comp_deterministic,
      comp_deterministic_eq_comap, ← comap_prod, ← map_comp, ← comp_map, ← hk,
      ← partialTraj_comp_partialTraj h k.le_succ, partialTraj_succ_self, map_comp, map_comp,
      ← map_comp_right, ← id_map, map_prod_eq, ← map_comp_right]
    · rfl
    all_goals fun_prop

variable [∀ n, IsMarkovKernel (κ n)]

/-- The pushforward of `partialTraj κ a (a + 1)` along the the point at time `a + 1` is `κ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f24d4c905deecfb1b3a50c3d52d112a75e5492d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
