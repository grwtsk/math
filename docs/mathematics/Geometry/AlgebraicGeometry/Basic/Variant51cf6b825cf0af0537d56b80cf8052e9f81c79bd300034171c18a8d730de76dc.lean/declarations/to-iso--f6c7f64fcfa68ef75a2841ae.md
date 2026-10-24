# to_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb87ef71-309e-d6ff-9188-bd6570ea1eb5",
  "kind": "theorem",
  "lexical_name": "to_iso",
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
  "slug": "to-iso--f6c7f64fcfa68ef75a2841ae",
  "source": {
    "blob": "22b1569af81b9358ba015aba3f8e97b03c814037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 321,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6c7f64fcfa68ef75a2841aec452fae75f8fe6f540187f241d35d8bb2e837cf4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb87ef71-309e-d6ff-9188-bd6570ea1eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_iso (f : X ⟶ Y) [h : IsOpenImmersion f] [h' : Epi f.base] : IsIso f := by
  -- Porting Note : was `apply (config := { instances := False }) ...`
  -- See https://github.com/leanprover/lean4/issues/2273
  have : ∀ (U : (Opens Y)ᵒᵖ), IsIso (f.c.app U)
  · intro U
    have : U = op (h.openFunctor.obj ((Opens.map f.base).obj (unop U))) := by
      induction U using Opposite.rec' with | h U => ?_
      cases U
      dsimp only [Functor.op, Opens.map]
      congr
      exact (Set.image_preimage_eq _ ((TopCat.epi_iff_surjective _).mp h')).symm
    convert @IsOpenImmersion.c_iso _ _ _ _ _ h ((Opens.map f.base).obj (unop U))
  have : IsIso f.base
  · let t : X ≃ₜ Y :=
      (Homeomorph.ofEmbedding _ h.base_open.toEmbedding).trans
        { toFun := Subtype.val
          invFun := fun x =>
            ⟨x, by rw [Set.range_iff_surjective.mpr ((TopCat.epi_iff_surjective _).mp h')]; trivial⟩
          left_inv := fun ⟨_, _⟩ => rfl
          right_inv := fun _ => rfl }
    convert IsIso.of_iso (TopCat.isoOfHomeo t)
  have : IsIso f.c := by apply NatIso.isIso_of_isIso_app
  apply isIso_of_components
#align algebraic_geometry.PresheafedSpace.is_open_immersion.to_iso AlgebraicGeometry.PresheafedSpace.IsOpenImmersion.to_iso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b1569af81b9358ba015aba3f8e97b03c814037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
