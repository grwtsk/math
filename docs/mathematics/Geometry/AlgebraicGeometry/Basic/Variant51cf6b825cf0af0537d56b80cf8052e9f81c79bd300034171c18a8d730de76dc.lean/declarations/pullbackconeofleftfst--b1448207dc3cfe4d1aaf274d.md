# pullbackConeOfLeftFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78750a4972bb20d7afc5cffad96ccd54c797fcf3ed85b59bcc7ac184d9294c38",
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
  "slug": "pullbackconeofleftfst--b1448207dc3cfe4d1aaf274d",
  "source": {
    "blob": "22b1569af81b9358ba015aba3f8e97b03c814037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 360,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1448207dc3cfe4d1aaf274d4f6310666ca620aedddf23c5f9cbc74149036fff",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78750a4972bb20d7afc5cffad96ccd54c797fcf3ed85b59bcc7ac184d9294c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackConeOfLeftFst :
    Y.restrict (TopCat.snd_openEmbedding_of_left_openEmbedding hf.base_open g.base) ⟶ X where
  base := pullback.fst
  c :=
    { app := fun U =>
        hf.invApp (unop U) ≫
          g.c.app (op (hf.base_open.isOpenMap.functor.obj (unop U))) ≫
            Y.presheaf.map
              (eqToHom
                (by
                  simp only [IsOpenMap.functor, Subtype.mk_eq_mk, unop_op, op_inj_iff, Opens.map,
                    Subtype.coe_mk, Functor.op_obj]
                  apply LE.le.antisymm
                  · rintro _ ⟨_, h₁, h₂⟩
                    use (TopCat.pullbackIsoProdSubtype _ _).inv ⟨⟨_, _⟩, h₂⟩
                    -- Porting note : need a slight hand holding
                    change _ ∈ _ ⁻¹' _ ∧ _
                    simpa using h₁
                  · rintro _ ⟨x, h₁, rfl⟩
                    exact ⟨_, h₁, ConcreteCategory.congr_hom pullback.condition x⟩))
      naturality := by
        intro U V i
        induction U using Opposite.rec'
        induction V using Opposite.rec'
        simp only [Quiver.Hom.unop_op, Category.assoc, Functor.op_map, inv_naturality_assoc]
        -- Porting note : the following lemmas are not picked up by `simp`
        -- See https://github.com/leanprover-community/mathlib4/issues/5026
        erw [g.c.naturality_assoc, TopCat.Presheaf.pushforwardObj_map, ← Y.presheaf.map_comp,
          ← Y.presheaf.map_comp]
        congr 1 }
#align algebraic_geometry.PresheafedSpace.is_open_immersion.pullback_cone_of_left_fst AlgebraicGeometry.PresheafedSpace.IsOpenImmersion.pullbackConeOfLeftFst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b1569af81b9358ba015aba3f8e97b03c814037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
