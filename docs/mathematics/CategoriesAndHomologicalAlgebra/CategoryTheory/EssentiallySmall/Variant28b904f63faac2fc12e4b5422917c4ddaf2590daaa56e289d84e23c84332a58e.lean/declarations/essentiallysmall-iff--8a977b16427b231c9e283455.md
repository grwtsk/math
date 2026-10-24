# essentiallySmall_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebb9711d-d13b-3e19-2845-c5a09ae60f86",
  "kind": "theorem",
  "lexical_name": "essentiallySmall_iff",
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
  "slug": "essentiallysmall-iff--8a977b16427b231c9e283455",
  "source": {
    "blob": "51bf8b05a4e919a0525acbbc8c81dd942d647ec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a977b16427b231c9e283455dacf29b006faa5539867b543f2a7a9dc6406bbea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebb9711d-d13b-3e19-2845-c5a09ae60f86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem essentiallySmall_iff (C : Type u) [Category.{v} C] :
    EssentiallySmall.{w} C ↔ Small.{w} (Skeleton C) ∧ LocallySmall.{w} C := by
  -- This theorem is the only bit of real work in this file.
  fconstructor
  · intro h
    fconstructor
    · rcases h with ⟨S, 𝒮, ⟨e⟩⟩
      refine ⟨⟨Skeleton S, ⟨?_⟩⟩⟩
      exact e.skeletonEquiv
    · infer_instance
  · rintro ⟨⟨S, ⟨e⟩⟩, L⟩
    let e' := (ShrinkHoms.equivalence C).skeletonEquiv.symm
    letI : Category S := InducedCategory.category (e'.trans e).symm
    refine ⟨⟨S, this, ⟨?_⟩⟩⟩
    refine (ShrinkHoms.equivalence C).trans <|
      (skeletonEquivalence (ShrinkHoms C)).symm.trans
        ((inducedFunctor (e'.trans e).symm).asEquivalence.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51bf8b05a4e919a0525acbbc8c81dd942d647ec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
