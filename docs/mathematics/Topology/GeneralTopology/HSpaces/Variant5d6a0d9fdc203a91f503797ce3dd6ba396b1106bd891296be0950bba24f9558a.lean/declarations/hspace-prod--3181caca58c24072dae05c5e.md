# HSpace.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ee628792f19b28860e65ac718ce21554a56197200c60693c07c7978f8374eaa",
  "kind": "instance",
  "lexical_name": "HSpace.prod",
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
  "slug": "hspace-prod--3181caca58c24072dae05c5e",
  "source": {
    "blob": "207c245299bea9fd80a1128e1ae3d2e5a620fd7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3181caca58c24072dae05c5ea3e2f31789c67d5b172328e4aa85918508c7c3a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ee628792f19b28860e65ac718ce21554a56197200c60693c07c7978f8374eaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance HSpace.prod (X : Type u) (Y : Type v) [TopologicalSpace X] [TopologicalSpace Y] [HSpace X]
    [HSpace Y] : HSpace (X × Y) where
  hmul := ⟨fun p => (p.1.1 ⋀ p.2.1, p.1.2 ⋀ p.2.2), by
    -- porting note: was `continuity`
    exact ((map_continuous HSpace.hmul).comp ((continuous_fst.comp continuous_fst).prod_mk
        (continuous_fst.comp continuous_snd))).prod_mk ((map_continuous HSpace.hmul).comp
        ((continuous_snd.comp continuous_fst).prod_mk (continuous_snd.comp continuous_snd)))
  ⟩
  e := (HSpace.e, HSpace.e)
  hmul_e_e := by
    simp only [ContinuousMap.coe_mk, Prod.mk.inj_iff]
    exact ⟨HSpace.hmul_e_e, HSpace.hmul_e_e⟩
  eHmul := by
    let G : I × X × Y → X × Y := fun p => (HSpace.eHmul (p.1, p.2.1), HSpace.eHmul (p.1, p.2.2))
    have hG : Continuous G :=
      (Continuous.comp HSpace.eHmul.1.1.2
            (continuous_fst.prod_mk (continuous_fst.comp continuous_snd))).prod_mk
        (Continuous.comp HSpace.eHmul.1.1.2
          (continuous_fst.prod_mk (continuous_snd.comp continuous_snd)))
    use! ⟨G, hG⟩
    · rintro ⟨x, y⟩
      exacts [Prod.mk.inj_iff.mpr ⟨HSpace.eHmul.1.2 x, HSpace.eHmul.1.2 y⟩]
    · rintro ⟨x, y⟩
      exact Prod.mk.inj_iff.mpr ⟨HSpace.eHmul.1.3 x, HSpace.eHmul.1.3 y⟩
    · rintro t ⟨x, y⟩ h
      replace h := Prod.mk.inj_iff.mp (Set.mem_singleton_iff.mp h)
      exact
        ⟨Prod.mk.inj_iff.mpr
            ⟨HomotopyRel.eq_fst HSpace.eHmul t (Set.mem_singleton_iff.mpr h.1),
              HomotopyRel.eq_fst HSpace.eHmul t (Set.mem_singleton_iff.mpr h.2)⟩,
          Prod.mk.inj_iff.mpr ⟨(HSpace.eHmul.2 t x h.1).2, (HSpace.eHmul.2 t y h.2).2⟩⟩
  hmulE := by
    let G : I × X × Y → X × Y := fun p => (HSpace.hmulE (p.1, p.2.1), HSpace.hmulE (p.1, p.2.2))
    have hG : Continuous G :=
      (Continuous.comp HSpace.hmulE.1.1.2
            (continuous_fst.prod_mk (continuous_fst.comp continuous_snd))).prod_mk
        (Continuous.comp HSpace.hmulE.1.1.2
          (continuous_fst.prod_mk (continuous_snd.comp continuous_snd)))
    use! ⟨G, hG⟩
    · rintro ⟨x, y⟩
      exacts [Prod.mk.inj_iff.mpr ⟨HSpace.hmulE.1.2 x, HSpace.hmulE.1.2 y⟩]
    · rintro ⟨x, y⟩
      exact Prod.mk.inj_iff.mpr ⟨HSpace.hmulE.1.3 x, HSpace.hmulE.1.3 y⟩
    · rintro t ⟨x, y⟩ h
      replace h := Prod.mk.inj_iff.mp (Set.mem_singleton_iff.mp h)
      exact
        ⟨Prod.mk.inj_iff.mpr
            ⟨HomotopyRel.eq_fst HSpace.hmulE t (Set.mem_singleton_iff.mpr h.1),
              HomotopyRel.eq_fst HSpace.hmulE t (Set.mem_singleton_iff.mpr h.2)⟩,
          Prod.mk.inj_iff.mpr ⟨(HSpace.hmulE.2 t x h.1).2, (HSpace.hmulE.2 t y h.2).2⟩⟩
#align H_space.prod HSpace.prod


namespace TopologicalGroup

/-- The definition `to_H_space` is not an instance because its `@additive` version would
lead to a diamond since a topological field would inherit two `H_space` structures, one from the
`mul_one_class` and one from the `add_zero_class`. In the case of a group, we make
`topological_group.H_space` an instance."-/
@[to_additive
      "The definition `to_H_space` is not an instance because it comes together with a
      multiplicative version which would lead to a diamond since a topological field would inherit
      two `H_space` structures, one from the `mul_one_class` and one from the `add_zero_class`.
      In the case of an additive group, we make `topological_group.H_space` an instance."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `207c245299bea9fd80a1128e1ae3d2e5a620fd7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
