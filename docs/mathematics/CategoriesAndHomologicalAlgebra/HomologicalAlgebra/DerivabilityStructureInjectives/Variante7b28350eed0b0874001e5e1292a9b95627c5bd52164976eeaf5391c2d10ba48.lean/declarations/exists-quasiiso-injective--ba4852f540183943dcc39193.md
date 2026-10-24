# exists_quasiIso_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6585aee6a4155a8620b3a5499806de3788d7997e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fa6785c-648b-028c-d700-47d4ad088b59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6b0487b-d2d3-30ab-04fa-2f2ec90286a7",
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
  "slug": "exists-quasiiso-injective--ba4852f540183943dcc39193",
  "source": {
    "blob": "6585aee6a4155a8620b3a5499806de3788d7997e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba4852f540183943dcc39193619ef674ab567d7c67019f5f296b59f371e27156",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b0487b-d2d3-30ab-04fa-2f2ec90286a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–82.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6585aee6a4155a8620b3a5499806de3788d7997e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
