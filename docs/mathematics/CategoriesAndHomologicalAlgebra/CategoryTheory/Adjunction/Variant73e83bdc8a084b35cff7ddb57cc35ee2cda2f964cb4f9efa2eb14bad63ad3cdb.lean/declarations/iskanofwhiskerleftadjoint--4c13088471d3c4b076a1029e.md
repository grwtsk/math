# isKanOfWhiskerLeftAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d5f25ecee9de8a10cb55366e35f370b3769b147b09986ce79d88180641c974d",
  "kind": "def",
  "lexical_name": "isKanOfWhiskerLeftAdjoint",
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
  "slug": "iskanofwhiskerleftadjoint--4c13088471d3c4b076a1029e",
  "source": {
    "blob": "99316716f3e6287db40df966675e5f2cc40e1671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c13088471d3c4b076a1029e4f9f1bde06b7db3ff8eec036bfffa6ac1a48a249",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d5f25ecee9de8a10cb55366e35f370b3769b147b09986ce79d88180641c974d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isKanOfWhiskerLeftAdjoint
    {f : a ⟶ b} {g : a ⟶ c} {t : LeftExtension f g} (H : LeftExtension.IsKan t)
      {x : B} {h : c ⟶ x} {u : x ⟶ c} (adj : h ⊣ u) :
        LeftExtension.IsKan (t.whisker h) :=
  let η' := adj.unit
  let H' : LeftLift.IsAbsKan (.mk _ η') := adj.isAbsoluteLeftKanLift
  .mk (fun s ↦
    let k := s.extension
    let θ := s.unit
    let sτ := LeftExtension.mk _ <| 𝟙 _ ⊗≫ g ◁ η' ⊗≫ θ ▷ u ⊗≫ 𝟙 _
    let τ : t.extension ⟶ k ≫ u := H.desc sτ
    let sσ := LeftLift.mk _ <| (ρ_ _).hom ≫ τ
    let σ : t.extension ≫ h ⟶ k := H'.desc sσ
    LeftExtension.homMk σ <| (H' g).hom_ext <| by
      have Hσ : t.extension ◁ η' ⊗≫ σ ▷ u  = 𝟙 _ ⊗≫ τ := by
        simpa [bicategoricalComp] using (H' _).fac (.mk _ <| (ρ_ _).hom ≫ τ)
      dsimp only [LeftLift.whisker_lift, StructuredArrow.mk_right, LeftLift.whisker_unit,
        StructuredArrow.mk_hom_eq_self, whisker_extension, whisker_unit]
      calc _
        _ = (g ◁ η' ≫ t.unit ▷ (h ≫ u)) ⊗≫ f ◁ σ ▷ u ⊗≫ 𝟙 _ := by
          bicategory
        _ = t.unit ▷ (𝟙 c) ⊗≫ f ◁ (t.extension ◁ η' ⊗≫ σ ▷ u) ⊗≫ 𝟙 _ := by
          rw [whisker_exchange]; bicategory
        _ = (ρ_ g).hom ≫ t.unit ≫ f ◁ H.desc sτ ≫ (α_ f s.extension u).inv := by
          rw [Hσ]
          dsimp only [τ]
          bicategory
        _ = _ := by
          rw [IsKan.fac_assoc]
          dsimp only [StructuredArrow.mk_right, StructuredArrow.mk_hom_eq_self, sτ]
          bicategory) <| by
    intro s' τ₀'
    let τ' : t.extension ≫ h ⟶ s'.extension := τ₀'.right
    have Hτ' : t.unit ▷ h ⊗≫ f ◁ τ' = s'.unit := by simpa [bicategoricalComp] using τ₀'.w.symm
    ext
    apply (H' _).hom_ext
    dsimp only [StructuredArrow.homMk_right]
    rw [(H' _).fac]
    apply (cancel_epi (ρ_ _).inv).mp
    apply H.hom_ext
    dsimp only [LeftLift.whisker_lift, StructuredArrow.mk_right, LeftLift.whisker_unit,
      StructuredArrow.mk_hom_eq_self]
    let σs' := LeftExtension.mk (s'.extension ≫ u)
      (𝟙 g ⊗≫ g ◁ η' ⊗≫ s'.unit ▷ u ⊗≫ 𝟙 (f ≫ s'.extension ≫ u))
    calc _
      _ = 𝟙 _ ⊗≫ (t.unit ▷ (𝟙 c) ≫ (f ≫ t.extension) ◁ η') ⊗≫ f ◁ τ' ▷ u := by
        bicategory
      _ = 𝟙 g ⊗≫ g ◁ η' ⊗≫ (t.unit ▷ h ⊗≫ f ◁ τ') ▷ u ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange]; bicategory
      _ = t.unit ≫ f ◁ H.desc σs' := by
        rw [Hτ', IsKan.fac]
        dsimp only [StructuredArrow.mk_hom_eq_self, σs']
      _ = _ := by
        bicategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99316716f3e6287db40df966675e5f2cc40e1671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
