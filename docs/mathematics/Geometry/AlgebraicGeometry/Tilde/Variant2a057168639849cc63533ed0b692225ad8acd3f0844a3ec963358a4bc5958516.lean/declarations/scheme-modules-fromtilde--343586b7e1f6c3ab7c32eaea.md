# Scheme.Modules.fromTildeΓ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ec892a9f8d161353c29ce0d71e0bff70772727631809a74393310d2b87ac87c",
  "kind": "def",
  "lexical_name": "Scheme.Modules.fromTildeΓ",
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
  "slug": "scheme-modules-fromtilde--343586b7e1f6c3ab7c32eaea",
  "source": {
    "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 264,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:343586b7e1f6c3ab7c32eaea776fa25816dcd099d55cad661efb714a4134efd7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ec892a9f8d161353c29ce0d71e0bff70772727631809a74393310d2b87ac87c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Scheme.Modules.fromTildeΓ (M : (Spec R).Modules) :
    tilde ((modulesSpecToSheaf.obj M).presheaf.obj (.op ⊤)) ⟶ M :=
  SpecModulesToSheafFullyFaithful.preimage
    ⟨TopCat.Sheaf.restrictHomEquivHom _ _ isBasis_basic_opens
    { app (f : Rᵒᵖ) := by
        refine (ModuleCat.ofHom (IsLocalizedModule.lift (.powers (M := R) f.unop)
          (tilde.toOpen _ (PrimeSpectrum.basicOpen f.unop)).hom
          ((modulesSpecToSheaf.obj M).obj.map (homOfLE le_top).op).hom ?_):)
        rw [Subtype.forall]
        change Submonoid.powers _ ≤ (IsUnit.submonoid _).comap _
        simp only [inducedFunctor_obj, Submonoid.powers_le, Submonoid.mem_comap]
        exact M.isUnit_algebraMap_end_of_le_basicOpen f.unop le_rfl
      naturality {f g : Rᵒᵖ} i := by
        let N := (modulesSpecToSheaf.obj M).presheaf.obj (.op ⊤)
        ext1
        apply IsLocalizedModule.ext (.powers (M := R) f.unop)
          (tilde.toOpen _ (PrimeSpectrum.basicOpen (R := R) f.unop)).hom
        · rw [Subtype.forall]
          change Submonoid.powers _ ≤ (IsUnit.submonoid _).comap _
          simp only [Submonoid.powers_le, Submonoid.mem_comap, IsUnit.mem_submonoid_iff]
          obtain ⟨n, a, e⟩ : ∃ n, f.unop ∣ g.unop ^ n := by
            simpa only [Ideal.mem_radical_iff, Ideal.mem_span_singleton] using
              (basicOpen_le_basicOpen_iff _ _).mp (i.1.hom.le)
          refine ((Commute.isUnit_mul_iff (b := algebraMap R _ a) (.map (.all _ _) _)).mp ?_).1
          rw [← map_mul, ← e, map_pow]
          exact (M.isUnit_algebraMap_end_of_le_basicOpen g.unop le_rfl).pow n
        · dsimp [← ModuleCat.hom_comp]
          rw [tilde.toOpen_res_assoc]
          ext x
          dsimp
          simp only [IsLocalizedModule.lift_apply, ← ModuleCat.comp_apply, ← Functor.map_comp]
          rfl }⟩

set_option backward.isDefEq.respectTransparency false in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b414ff838619701683daafb0d6146a5314aebc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
