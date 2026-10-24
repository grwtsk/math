# exact_of_map_injectiveResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96594270e51832241dd47f57e03ab6af24256598",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79b9e12a-c383-e2b4-2a8f-d3cd70df5417",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ccf7161-65ff-7581-8bb8-04aa89076e30",
  "kind": "theorem",
  "lexical_name": "exact_of_map_injectiveResolution",
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
  "slug": "exact-of-map-injectiveresolution--a67bd8e2b03820a38499d8fc",
  "source": {
    "blob": "96594270e51832241dd47f57e03ab6af24256598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a67bd8e2b03820a38499d8fc975fe48c58e7ad43326428a815c0589d3ce86f84",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ccf7161-65ff-7581-8bb8-04aa89076e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_of_map_injectiveResolution (P : InjectiveResolution X) [PreservesFiniteLimits F] :
    Exact (F.map (P.ι.f 0))
      (((F.mapHomologicalComplex (ComplexShape.up ℕ)).obj P.cocomplex).dFrom 0) :=
  Preadditive.exact_of_iso_of_exact' (F.map (P.ι.f 0)) (F.map (P.cocomplex.d 0 1)) _ _ (Iso.refl _)
    (Iso.refl _)
    (HomologicalComplex.xNextIso ((F.mapHomologicalComplex _).obj P.cocomplex) rfl).symm (by simp)
    (by rw [Iso.refl_hom, Category.id_comp, Iso.symm_hom, HomologicalComplex.dFrom_eq] <;> congr )
    (preserves_exact_of_preservesFiniteLimits_of_mono _ P.exact₀)
#align category_theory.abelian.functor.exact_of_map_injective_resolution CategoryTheory.Abelian.Functor.exact_of_map_injectiveResolution

/-- Given `P : InjectiveResolution X`, a morphism `(F.rightDerived 0).obj X ⟶ F.obj X` given
`PreservesFiniteLimits F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96594270e51832241dd47f57e03ab6af24256598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
