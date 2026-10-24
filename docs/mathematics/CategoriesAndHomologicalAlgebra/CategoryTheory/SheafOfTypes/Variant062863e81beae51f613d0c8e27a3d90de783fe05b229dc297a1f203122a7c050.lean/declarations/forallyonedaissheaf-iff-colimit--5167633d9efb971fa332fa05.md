# forallYonedaIsSheaf_iff_colimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fad4b08d-c200-f561-5155-9ec0aaf4965f",
  "kind": "theorem",
  "lexical_name": "forallYonedaIsSheaf_iff_colimit",
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
  "slug": "forallyonedaissheaf-iff-colimit--5167633d9efb971fa332fa05",
  "source": {
    "blob": "268f9c1f5276189c603b1987bfa1cb0111258b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 891,
    "line": 850,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5167633d9efb971fa332fa05dc73116bb5d3875542c251acaf6b9f7a8a6dff9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad4b08d-c200-f561-5155-9ec0aaf4965f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–891.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forallYonedaIsSheaf_iff_colimit (S : Sieve X) :
    (∀ W : C, Presieve.IsSheafFor (yoneda.obj W) (S : Presieve X)) ↔
      Nonempty (IsColimit S.arrows.cocone) := by
  constructor
  · intro H
    refine Nonempty.intro ?_
    exact
    { desc := fun s => H s.pt (yonedaFamilyOfElements_fromCocone S.arrows s)
        (yonedaFamily_fromCocone_compatible S s) |>.choose
      fac := by
        intro s f
        replace H := H s.pt (yonedaFamilyOfElements_fromCocone S.arrows s)
          (yonedaFamily_fromCocone_compatible S s)
        have ht := H.choose_spec.1 f.obj.hom f.property
        aesop_cat
      uniq := by
        intro s Fs HFs
        replace H := H s.pt (yonedaFamilyOfElements_fromCocone S.arrows s)
          (yonedaFamily_fromCocone_compatible S s)
        apply H.choose_spec.2 Fs
        exact fun _ f hf => HFs ⟨Over.mk f, hf⟩ }
  · intro H W x hx
    replace H := Classical.choice H
    let s := compatibleYonedaFamily_toCocone S W x hx
    use H.desc s
    constructor
    · exact fun _ f hf => (H.fac s) ⟨Over.mk f, hf⟩
    · exact fun g hg => H.uniq s g (fun ⟨⟨f, _, hom⟩, hf⟩ => hg hom hf)

end Sieve

namespace Equalizer

variable {C : Type u₁} [Category.{v₁} C] (P : Cᵒᵖ ⥤ Type max v₁ u₁) {X : C} (R : Presieve X)
  (S : Sieve X)

noncomputable section

/--
The middle object of the fork diagram given in Equation (3) of [MM92], as well as the fork diagram
of <https://stacks.math.columbia.edu/tag/00VM>.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `268f9c1f5276189c603b1987bfa1cb0111258b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
