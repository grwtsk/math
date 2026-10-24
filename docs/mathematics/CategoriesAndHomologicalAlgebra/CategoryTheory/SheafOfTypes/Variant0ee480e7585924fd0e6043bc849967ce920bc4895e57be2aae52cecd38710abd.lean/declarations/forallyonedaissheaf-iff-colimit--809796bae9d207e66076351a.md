# forallYonedaIsSheaf_iff_colimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6edd08d9-9bd0-5ebc-b916-97823c1cd468",
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
  "slug": "forallyonedaissheaf-iff-colimit--809796bae9d207e66076351a",
  "source": {
    "blob": "2a5c95f50a9fe5cc4a6b7e702a6a22d4100f10c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:809796bae9d207e66076351a58bc17baf92204a73360e5b1b90ffea4295da14b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6edd08d9-9bd0-5ebc-b916-97823c1cd468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–234.

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
    let s := compatibleYonedaFamily_toCocone S.arrows W x hx
    use H.desc s
    constructor
    · exact fun _ f hf => (H.fac s) ⟨Over.mk f, hf⟩
    · exact fun g hg => H.uniq s g (fun ⟨⟨f, _, hom⟩, hf⟩ => hg hom hf)

end Sieve

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a5c95f50a9fe5cc4a6b7e702a6a22d4100f10c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
