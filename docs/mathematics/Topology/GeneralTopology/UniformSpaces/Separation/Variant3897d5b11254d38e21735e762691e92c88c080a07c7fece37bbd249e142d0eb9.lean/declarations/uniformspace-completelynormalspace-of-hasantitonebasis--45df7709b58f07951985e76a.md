# UniformSpace.completelyNormalSpace_of_hasAntitoneBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "697d1cc32a1c610b22348980acacfa6ed5a78480",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06e3cc73-ddd1-3663-636e-627fb190038d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a4338b8-f282-756f-6845-e4948afba8e0",
  "kind": "theorem",
  "lexical_name": "UniformSpace.completelyNormalSpace_of_hasAntitoneBasis",
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
  "slug": "uniformspace-completelynormalspace-of-hasantitonebasis--45df7709b58f07951985e76a",
  "source": {
    "blob": "697d1cc32a1c610b22348980acacfa6ed5a78480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45df7709b58f07951985e76a9b6414631f3488496552d6e2c8402504f1030c24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a4338b8-f282-756f-6845-e4948afba8e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformSpace.completelyNormalSpace_of_hasAntitoneBasis {ι : Type*} [LinearOrder ι]
    {B : ι → SetRel α α} (hB : (uniformity α).HasAntitoneBasis B) : CompletelyNormalSpace α where
  completely_normal s t hSt hsT := by
    let S (b : Bool) : Set α := b.casesOn (false := s) (true := t)
    have hx (b : Bool) (x : S b) : ∃ i, Disjoint (ball x.1 ((B i).comp (B i).inv)) (S (!b)) := by
      have hST : Disjoint (S b) (closure (S !b)) := b.casesOn (false := hsT) (true := hSt.symm)
      rw [← disjoint_nhdsSet_principal, disjoint_principal_right] at hST
      obtain ⟨U, hUu, hU⟩ := UniformSpace.mem_nhds_iff.1 (nhds_le_nhdsSet x.2 hST)
      obtain ⟨(V : SetRel α α), hV, hVs, hVU⟩ := comp_symm_mem_uniformity_sets hUu
      obtain ⟨i, hi⟩ := hB.mem_iff.1 hV
      refine ⟨i, subset_compl_iff_disjoint_right.1 (subset_trans (ball_mono ?_ x.1) hU)⟩
      exact subset_trans (SetRel.comp_subset_comp hi (V.inv_eq_self ▸ (SetRel.inv_mono hi))) hVU
    choose U hU using hx
    have hUS (b : Bool) : ⋃ x, ball x.1 (B (U b x)) ∈ nhdsSet (S b) := by
      rw [mem_nhdsSet_iff_forall]
      intro x hx
      apply mem_of_superset (ball_mem_nhds x (hB.mem (U b ⟨x, hx⟩)))
      exact subset_iUnion (fun x => ball x.1 (B (U b x))) ⟨x, hx⟩
    rw [Filter.disjoint_iff]
    refine ⟨_, hUS false, _, hUS true, ?_⟩
    have hdj (b : Bool) (x : S b) (y : S (!b)) (hxy : U b x ≤ U (!b) y) :
        Disjoint (ball x.1 (B (U b x))) (ball y.1 (B (U (!b) y))) := by
      rw [Set.disjoint_iff]
      intro z hz
      exact (hU b x).notMem_of_mem_left (mem_ball_comp hz.1 (hB.antitone hxy hz.2)) y.2
    simp_rw [disjoint_iUnion_left, disjoint_iUnion_right]
    intro x y
    exact (le_total (U false x) (U true y)).elim
      (fun h => hdj false x y h) (fun h => (hdj true y x h).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant3897d5b11254d38e21735e762691e92c88c080a07c7fece37bbd249e142d0eb9.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `697d1cc32a1c610b22348980acacfa6ed5a78480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
