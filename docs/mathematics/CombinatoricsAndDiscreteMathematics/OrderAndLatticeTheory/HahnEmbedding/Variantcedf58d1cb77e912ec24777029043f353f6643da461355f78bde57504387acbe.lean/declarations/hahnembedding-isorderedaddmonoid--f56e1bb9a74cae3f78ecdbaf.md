# hahnEmbedding_isOrderedAddMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff7f61a7-89e5-13a0-c8ce-035b1ad012e1",
  "kind": "theorem",
  "lexical_name": "hahnEmbedding_isOrderedAddMonoid",
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
  "slug": "hahnembedding-isorderedaddmonoid--f56e1bb9a74cae3f78ecdbaf",
  "source": {
    "blob": "5a58d507042ee09de86b5ee1c77bfb78d4be4bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HahnEmbedding/Variantcedf58d1cb77e912ec24777029043f353f6643da461355f78bde57504387acbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f56e1bb9a74cae3f78ecdbaf0193a74d2593aff192ae9fa3bc3520be74b13c2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HahnEmbedding/Variantcedf58d1cb77e912ec24777029043f353f6643da461355f78bde57504387acbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff7f61a7-89e5-13a0-c8ce-035b1ad012e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hahnEmbedding_isOrderedAddMonoid :
    ∃ f : M →+o Lex ℝ⟦FiniteArchimedeanClass M⟧, Function.Injective f ∧
      ∀ a, .mk a = FiniteArchimedeanClass.withTopOrderIso M (ofLex (f a)).orderTop := by
  /-
  The desired embedding is the composition of three functions:

      Group type                                    `ArchimedeanClass` / `HahnSeries.orderTop` type

      `M`                                           `ArchimedeanClass M`
  `f₁` ↓+o                                           ↓o~
      `D-Hull M`                                    `ArchimedeanClass (D-Hull M)`
  `f₂` ↓+o                                           ↓o~
      `Lex ℝ⟦F-A-Class (D-Hull M)⟧`                 `WithTop (F-A-Class (D-Hull M))`
  `f₃` ↓+o(~)                                        ↓o~
      `Lex ℝ⟦F-A-Class M⟧`                          `WithTop (F-A-Class M)`
  -/
  let f₁ := DivisibleHull.coeOrderAddMonoidHom M
  have hf₁ : Function.Injective f₁ := DivisibleHull.coe_injective
  have hf₁class (a : M) : mk a = (DivisibleHull.archimedeanClassOrderIso M).symm (mk (f₁ a)) := by
    simp [f₁]
  obtain ⟨f₂', hf₂', hf₂class'⟩ := hahnEmbedding_isOrderedModule_rat (DivisibleHull M)
  let f₂ := OrderAddMonoidHom.mk f₂'.toAddMonoidHom hf₂'.monotone
  have hf₂ : Function.Injective f₂ := hf₂'.injective
  have hf₂class (a : DivisibleHull M) :
      mk a = (FiniteArchimedeanClass.withTopOrderIso (DivisibleHull M)) (ofLex (f₂ a)).orderTop :=
    hf₂class' a
  let f₃ : Lex ℝ⟦FiniteArchimedeanClass (DivisibleHull M)⟧ →+o Lex ℝ⟦FiniteArchimedeanClass M⟧ :=
    HahnSeries.embDomainOrderAddMonoidHom
    (FiniteArchimedeanClass.congrOrderIso (DivisibleHull.archimedeanClassOrderIso M).symm)
  have hf₃ : Function.Injective f₃ := HahnSeries.embDomainOrderAddMonoidHom_injective _
  have hf₃class (a : Lex ℝ⟦FiniteArchimedeanClass (DivisibleHull M)⟧) :
      (ofLex a).orderTop = OrderIso.withTopCongr
      ((FiniteArchimedeanClass.congrOrderIso (DivisibleHull.archimedeanClassOrderIso M)))
      (ofLex (f₃ a)).orderTop := by
    rw [← OrderIso.symm_apply_eq]
    simp [f₃, ← OrderIso.withTopCongr_symm]
  refine ⟨f₃.comp (f₂.comp f₁), hf₃.comp (hf₂.comp hf₁), ?_⟩
  intro a
  simp_rw [hf₁class, hf₂class, hf₃class, OrderAddMonoidHom.comp_apply]
  cases (ofLex (f₃ (f₂ (f₁ a)))).orderTop with
  | top => simp
  | coe x => simp [-DivisibleHull.archimedeanClassOrderIso_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HahnEmbedding/Variantcedf58d1cb77e912ec24777029043f353f6643da461355f78bde57504387acbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HahnEmbedding/Variantcedf58d1cb77e912ec24777029043f353f6643da461355f78bde57504387acbe.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a58d507042ee09de86b5ee1c77bfb78d4be4bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
