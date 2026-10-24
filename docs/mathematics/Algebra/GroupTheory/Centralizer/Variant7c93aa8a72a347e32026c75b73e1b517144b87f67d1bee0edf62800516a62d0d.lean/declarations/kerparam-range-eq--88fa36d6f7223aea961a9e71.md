# kerParam_range_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b31d5347353f78d4a7c8c5000b56cc15c29a8bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 540,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4abe3f6-d40e-d0ea-6788-d16fefee7b34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c72d093e-27c1-3a36-225e-05ad7bfec88b",
  "kind": "theorem",
  "lexical_name": "kerParam_range_eq",
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
  "slug": "kerparam-range-eq--88fa36d6f7223aea961a9e71",
  "source": {
    "blob": "0b31d5347353f78d4a7c8c5000b56cc15c29a8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 540,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88fa36d6f7223aea961a9e719ad4aebedcfe5ff342528c6e63c190743097022c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c72d093e-27c1-3a36-225e-05ad7bfec88b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kerParam_range_eq :
    (kerParam g).range = (toPermHom g).ker.map (Subgroup.subtype _) := by
  apply le_antisymm
  · rw [kerParam, MonoidHom.noncommCoprod_range, sup_le_iff, noncommPiCoprod_range, iSup_le_iff]
    simp only [zpowers_le]
    constructor
    · rintro - ⟨a, rfl⟩
      refine ⟨⟨ofSubtype a, ?_⟩, ?_, rfl⟩
      · rw [mem_centralizer_singleton_iff]
        exact Disjoint.commute (disjoint_iff_disjoint_support.mpr (ofSubtype_support_disjoint a))
      · exact Perm.ext fun x ↦ Subtype.ext (disjoint_iff_disjoint_support.mpr
          ((ofSubtype_support_disjoint a).mono_right
            (mem_cycleFactorsFinset_support_le x.2))).commute.mul_inv_cancel
    · intro i
      refine ⟨⟨i, mem_centralizer_singleton_iff.mpr (self_mem_cycle_factors_commute i.2)⟩, ?_, rfl⟩
      exact Perm.ext fun x ↦ Subtype.ext (cycleFactorsFinset_mem_commute' g i.2 x.2).mul_inv_cancel
  · rintro - ⟨p, hp, rfl⟩
    simp only [coe_subtype]
    set u : Perm (Function.fixedPoints g) :=
      subtypePerm p (fun x ↦ apply_mem_fixedPoints_iff_mem_of_mem_centralizer p.2)
    simp only [SetLike.mem_coe, mem_ker_toPermHom_iff, IsCycle.forall_commute_iff] at hp
    set v : (c : g.cycleFactorsFinset) → (Subgroup.zpowers c.val) :=
      fun c => ⟨ofSubtype
          (p.1.subtypePerm (Classical.choose (hp c.val c.prop))),
            Classical.choose_spec (hp c.val c.prop)⟩
    use (u, v)
    ext x
    rw [kerParam_apply]
    split_ifs with hx
    · rw [cycleOf_mem_cycleFactorsFinset_iff, mem_support] at hx
      rw [ofSubtype_apply_of_mem, subtypePerm_apply]
      rwa [mem_support, cycleOf_apply_self, ne_eq]
    · rw [cycleOf_mem_cycleFactorsFinset_iff, notMem_support] at hx
      rwa [ofSubtype_apply_of_mem, subtypePerm_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b31d5347353f78d4a7c8c5000b56cc15c29a8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
