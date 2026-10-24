# effectiveEpiStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9455b66ab8011347b6037f61e5b221333e1646cf11a829ad44319a345e4b78f7",
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
  "slug": "effectiveepistruct--ec526afede43dcf559ca432f",
  "source": {
    "blob": "c014885ff7e9dcd3875ba6cdbe5721715b00849c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 40,
    "path": "GRWTSK/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec526afede43dcf559ca432f35429ad7d8bd92281a05cfdbcc1c313c2f92166e",
  "verification": {
    "reference": "docs/verification/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9455b66ab8011347b6037f61e5b221333e1646cf11a829ad44319a345e4b78f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiStruct {B X : CompHausLike P} (π : X ⟶ B) (hπ : Function.Surjective π) :
    EffectiveEpiStruct π where
  desc e h := ofHom _ ((IsQuotientMap.of_surjective_continuous hπ π.hom.continuous).lift e.hom
    fun a b hab ↦
      CategoryTheory.congr_fun (h
        (ofHom _ ⟨fun _ ↦ a, continuous_const⟩)
        (ofHom _ ⟨fun _ ↦ b, continuous_const⟩)
      (by ext; exact hab)) a)
  fac e h := TopCat.hom_ext ((IsQuotientMap.of_surjective_continuous hπ π.hom.continuous).lift_comp
    e.hom
    fun a b hab ↦ CategoryTheory.congr_fun (h
      (ofHom _ ⟨fun _ ↦ a, continuous_const⟩)
      (ofHom _ ⟨fun _ ↦ b, continuous_const⟩)
    (by ext; exact hab)) a)
  uniq e h g hm := by
    suffices g = ofHom _ ((IsQuotientMap.of_surjective_continuous hπ π.hom.continuous).liftEquiv
      ⟨e.hom,
      fun a b hab ↦ CategoryTheory.congr_fun
        (h
          (ofHom _ ⟨fun _ ↦ a, continuous_const⟩)
          (ofHom _ ⟨fun _ ↦ b, continuous_const⟩)
          (by ext; exact hab))
        a⟩) by assumption
    apply ConcreteCategory.ext
    rw [hom_ofHom,
      ← Equiv.symm_apply_eq (IsQuotientMap.of_surjective_continuous hπ π.hom.continuous).liftEquiv]
    ext
    simp only [IsQuotientMap.liftEquiv_symm_apply_coe, ContinuousMap.comp_apply, ← hm]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/EffectiveEpi/Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c014885ff7e9dcd3875ba6cdbe5721715b00849c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
