# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:420d5de12b28fb9e16b78d3d5b77acbee1403be5e3b6ad2c5ef77926bbf3cbb2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6bfe8a925cd1394fe4b8afef",
  "source": {
    "blob": "6c031727184968281b5401dde4872708d20ca4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variant12fc9b87c4f8a9114a3fe16d3c331cc11b47fcc119711f75b569079147c7ebfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bfe8a925cd1394fe4b8afeffda89637c8862956a26d849ffaa69185e2cf219c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variant12fc9b87c4f8a9114a3fe16d3c331cc11b47fcc119711f75b569079147c7ebfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:420d5de12b28fb9e16b78d3d5b77acbee1403be5e3b6ad2c5ef77926bbf3cbb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance :
    (quotient C).IsLocalization
      ((homotopyEquivalences C (.up ℤ)).inverseImage (CochainComplex.Plus.ι C)) :=
  Functor.isLocalization_of_essSurj_of_full_of_exists_cylinders _ _
    (fun _ _ f hf ↦ by
      simpa [← isIso_iff_of_reflects_iso _ (HomotopyCategory.Plus.ι C),
        ← inverseImage_quotient_isomorphisms] using! hf) (by
    rintro K L f₀ f₁ hf
    obtain ⟨f₀, rfl⟩ := ObjectProperty.homMk_surjective f₀
    obtain ⟨f₁, rfl⟩ := ObjectProperty.homMk_surjective f₁
    replace hf := homotopyOfEq f₀ f₁ ((HomotopyCategory.Plus.ι _).congr_map hf)
    exact ⟨K.precylinder, Precylinder.LeftHomotopy.fullSubcategoryEquiv.symm
      { h := cylinder.desc _ _ hf }, ⟨cylinder.homotopyEquiv _ (fun n ↦ ⟨n - 1, by simp⟩), rfl⟩⟩)

open HomologicalComplex in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variant12fc9b87c4f8a9114a3fe16d3c331cc11b47fcc119711f75b569079147c7ebfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variant12fc9b87c4f8a9114a3fe16d3c331cc11b47fcc119711f75b569079147c7ebfe.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c031727184968281b5401dde4872708d20ca4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
