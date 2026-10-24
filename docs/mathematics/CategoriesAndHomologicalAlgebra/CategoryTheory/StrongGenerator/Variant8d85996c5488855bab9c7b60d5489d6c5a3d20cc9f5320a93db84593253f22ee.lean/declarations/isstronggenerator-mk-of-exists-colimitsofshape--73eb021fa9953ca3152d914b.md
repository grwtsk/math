# IsStrongGenerator.mk_of_exists_colimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57a1af621b1fb84ba9023d42d1f9abb241a8cffb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d85996c5488855bab9c7b60d5489d6c5a3d20cc9f5320a93db84593253f22ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8be45994-1b6e-961c-652d-96460fc424aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a3bf4e3-f264-8725-7b48-d5cb0b6f044b",
  "kind": "lemma",
  "lexical_name": "IsStrongGenerator.mk_of_exists_colimitsOfShape",
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
  "slug": "isstronggenerator-mk-of-exists-colimitsofshape--73eb021fa9953ca3152d914b",
  "source": {
    "blob": "57a1af621b1fb84ba9023d42d1f9abb241a8cffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant8d85996c5488855bab9c7b60d5489d6c5a3d20cc9f5320a93db84593253f22ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73eb021fa9953ca3152d914ba781b519aaeacd7c342da53fa5febf9ed285a646",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant8d85996c5488855bab9c7b60d5489d6c5a3d20cc9f5320a93db84593253f22ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a3bf4e3-f264-8725-7b48-d5cb0b6f044b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStrongGenerator.mk_of_exists_colimitsOfShape
    (hP : ∀ (X : C), ∃ (J : Type w) (_ : Category.{w'} J), P.colimitsOfShape J X) :
    P.IsStrongGenerator := by
  rw [isStrongGenerator_iff]
  refine ⟨IsSeparating.mk_of_exists_colimitsOfShape hP, fun X Y i _ hi ↦ ?_⟩
  suffices IsSplitEpi i by
    obtain ⟨r, fac⟩ := this
    exact ⟨r, by simp [← cancel_mono i, fac]⟩
  obtain ⟨J, _, ⟨p⟩⟩ := hP Y
  choose φ hφ using fun j ↦ hi _ (p.prop_diag_obj j) (p.ι.app j)
  let c : Cocone p.diag := Cocone.mk _
    { app := φ
      naturality j₁ j₂ f := by simp [← cancel_mono i, hφ] }
  refine ⟨p.isColimit.desc c, p.isColimit.hom_ext (fun j ↦ ?_)⟩
  dsimp at hφ ⊢
  rw [p.isColimit.fac_assoc, hφ, Category.comp_id]

end ObjectProperty

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant8d85996c5488855bab9c7b60d5489d6c5a3d20cc9f5320a93db84593253f22ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant8d85996c5488855bab9c7b60d5489d6c5a3d20cc9f5320a93db84593253f22ee.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57a1af621b1fb84ba9023d42d1f9abb241a8cffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
