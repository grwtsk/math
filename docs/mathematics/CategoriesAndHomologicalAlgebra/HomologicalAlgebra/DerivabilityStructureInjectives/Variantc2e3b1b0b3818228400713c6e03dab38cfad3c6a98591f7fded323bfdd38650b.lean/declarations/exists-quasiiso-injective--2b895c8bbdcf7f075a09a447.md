# exists_quasiIso_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b408b56a-4724-3482-54f6-72230100a6bf",
  "kind": "lemma",
  "lexical_name": "exists_quasiIso_injective",
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
  "slug": "exists-quasiiso-injective--2b895c8bbdcf7f075a09a447",
  "source": {
    "blob": "f0013b3c9ea35c58b7eea99d6d03c123e1fbcd11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b895c8bbdcf7f075a09a4472ad1b9490b00c39a4c042a69dea6c6f955f6d42d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b408b56a-4724-3482-54f6-72230100a6bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_quasiIso_injective [EnoughInjectives C]
    (K : CochainComplex.Plus C) (n : ℤ) [K.obj.IsStrictlyGE n] :
    ∃ (L : CochainComplex.Plus (InjectiveObject C)) (_ : L.obj.IsStrictlyGE n)
      (i : K ⟶ (InjectiveObject.ι C).mapCochainComplexPlus.obj L),
        quasiIso C i := by
  obtain ⟨L, i, _, _, _⟩ := modelCategoryQuillen.exists_quasiIso_injective K.obj n
  let L' : CochainComplex (InjectiveObject C) ℤ :=
    HomologicalComplex.liftObjectProperty _ L inferInstance
  have hL' : L'.IsStrictlyGE n := by
    rwa [← isStrictlyGE_mapHomologicalComplex_obj_iff _ (InjectiveObject.ι _)]
  exact ⟨⟨L', n, hL'⟩, hL', ObjectProperty.homMk i, by assumption⟩

end CochainComplex.Plus

namespace DerivedCategory.Plus

variable [HasDerivedCategory C]

/-- Let `K` be an object in the bounded below derived category of an abelian category `C`
with enough injectives. Assume that `K` is cohomologically `≥ n`. Then, `K`
admits an "injective resolution", in the sense that there exists a cochain
complex `L` consisting of injective object and lying in degrees `≥ n`, such that `K`
is isomorphic to the image of `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0013b3c9ea35c58b7eea99d6d03c123e1fbcd11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
