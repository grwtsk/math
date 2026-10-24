# pullbackConeOfLeftFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf3ca0bdac01b9c9dd945ea4679f6623e48c3c37630a9f76c99f4e610d26dad0",
  "kind": "def",
  "lexical_name": "pullbackConeOfLeftFst",
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
  "slug": "pullbackconeofleftfst--cd472c6668cb06289807217a",
  "source": {
    "blob": "2823eb6226890efa94548b285fde55731f8229d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 288,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd472c6668cb06289807217a8deec342b0d7fb92be69091beffda4d000d7f5af",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf3ca0bdac01b9c9dd945ea4679f6623e48c3c37630a9f76c99f4e610d26dad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackConeOfLeftFst :
    Y.restrict (TopCat.snd_isOpenEmbedding_of_left hf.base_open g.base) ⟶ X where
  base := pullback.fst _ _
  c :=
    { app := fun U =>
        hf.invApp _ (unop U) ≫
          g.c.app (op (hf.base_open.isOpenMap.functor.obj (unop U))) ≫
            Y.presheaf.map
              (eqToHom
                (by
                  simp only [IsOpenMap.functor, Subtype.mk_eq_mk, unop_op, op_inj_iff, Opens.map,
                    Subtype.coe_mk, Functor.op_obj]
                  apply LE.le.antisymm
                  · rintro _ ⟨_, h₁, h₂⟩
                    use (TopCat.pullbackIsoProdSubtype _ _).inv ⟨⟨_, _⟩, h₂⟩
                    -- Porting note: need a slight hand holding
                    -- used to be `simpa using h₁` before https://github.com/leanprover-community/mathlib4/pull/13170
                    change _ ∈ _ ⁻¹' _ ∧ _
                    simp only [TopCat.coe_of, restrict_carrier, Set.preimage_id', Set.mem_preimage,
                      SetLike.mem_coe]
                    constructor
                    · change _ ∈ U.unop at h₁
                      convert h₁
                      rw [TopCat.pullbackIsoProdSubtype_inv_fst_apply]
                    · rw [TopCat.pullbackIsoProdSubtype_inv_snd_apply]
                  · rintro _ ⟨x, h₁, rfl⟩
                    exact ⟨_, h₁, CategoryTheory.congr_fun pullback.condition x⟩))
      naturality := by
        intro U V i
        induction U
        induction V
        -- Note: this doesn't fire in `simp` because of reduction of the term via structure eta
        -- before discrimination tree key generation
        rw [inv_naturality_assoc]
        dsimp
        simp only [NatTrans.naturality_assoc, TopCat.Presheaf.pushforward_obj_map,
          Quiver.Hom.unop_op, ← Functor.map_comp, Category.assoc]
        rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2823eb6226890efa94548b285fde55731f8229d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
