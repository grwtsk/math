# effectiveEpiStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16d8288aa1552710b82f9874857ff716aba4eaa804241028d1fdcad5a1947903",
  "kind": "def",
  "lexical_name": "effectiveEpiStruct",
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
  "slug": "effectiveepistruct--8084d485a8226b345636634e",
  "source": {
    "blob": "fa7373eb17b5d87fafcdb9c9e9eb7bc7355b87d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 44,
    "path": "GRWTSK/Topology/EffectiveEpi/Variantd91100be207fe9577035a2d75526ab1d6dc2ec788fa975b1b12f8da3946a3f1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8084d485a8226b345636634ed8e2840bae895191828a2f8efd7a2cf3fc8df83c",
  "verification": {
    "reference": "docs/verification/Topology/EffectiveEpi/Variantd91100be207fe9577035a2d75526ab1d6dc2ec788fa975b1b12f8da3946a3f1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16d8288aa1552710b82f9874857ff716aba4eaa804241028d1fdcad5a1947903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiStruct {B X : CompHausLike P} (π : X ⟶ B) (hπ : Function.Surjective π) :
    EffectiveEpiStruct π where
  desc e h :=
    ofHom _ ((IsQuotientMap.of_surjective_continuous hπ π.hom.hom.continuous).lift e.hom.hom
      fun a b hab ↦
        CategoryTheory.congr_fun (h
          (ofHom _ ⟨fun _ ↦ a, continuous_const⟩)
          (ofHom _ ⟨fun _ ↦ b, continuous_const⟩)
        (by ext; exact hab)) a)
  fac e h :=
    InducedCategory.hom_ext (TopCat.hom_ext
      ((IsQuotientMap.of_surjective_continuous hπ π.hom.hom.continuous).lift_comp _ _))
  uniq e h g hm := by
    suffices g = ofHom _
        ((IsQuotientMap.of_surjective_continuous hπ π.hom.hom.continuous).liftEquiv ⟨e.hom.hom,
      fun a b hab ↦ CategoryTheory.congr_fun
        (h
          (ofHom _ ⟨fun _ ↦ a, continuous_const⟩)
          (ofHom _ ⟨fun _ ↦ b, continuous_const⟩)
          (by ext; exact hab))
        a⟩) by assumption
    apply ConcreteCategory.ext
    rw [hom_ofHom, ← Equiv.symm_apply_eq
      (IsQuotientMap.of_surjective_continuous hπ π.hom.hom.continuous).liftEquiv]
    ext
    simp only [IsQuotientMap.liftEquiv_symm_apply_coe, ContinuousMap.comp_apply, ← hm]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/EffectiveEpi/Variantd91100be207fe9577035a2d75526ab1d6dc2ec788fa975b1b12f8da3946a3f1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/EffectiveEpi/Variantd91100be207fe9577035a2d75526ab1d6dc2ec788fa975b1b12f8da3946a3f1d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa7373eb17b5d87fafcdb9c9e9eb7bc7355b87d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
