# distinguished_iff_iso_trianglehOfDegreewiseSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7cb0b73-7021-77ee-8da5-d15b5f05c2d3",
  "kind": "lemma",
  "lexical_name": "distinguished_iff_iso_trianglehOfDegreewiseSplit",
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
  "slug": "distinguished-iff-iso-trianglehofdegreewisesplit--2660c14bb3a5d772a3625235",
  "source": {
    "blob": "03c89d79c4fc78ae315ac252e66861dd21590a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2660c14bb3a5d772a3625235550f8ad900241a158714ded345fea9121cb7e1fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7cb0b73-7021-77ee-8da5-d15b5f05c2d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma distinguished_iff_iso_trianglehOfDegreewiseSplit
    (T : Triangle (HomotopyCategory C (ComplexShape.up ℤ))) :
    (T ∈ distTriang _) ↔ ∃ (S : ShortComplex (CochainComplex C ℤ))
      (σ : ∀ n, (S.map (HomologicalComplex.eval C _ n)).Splitting),
      Nonempty (T ≅ CochainComplex.trianglehOfDegreewiseSplit S σ) := by
  constructor
  · intro hT
    obtain ⟨K, L, φ, ⟨e⟩⟩ := inv_rot_of_distTriang _ hT
    exact ⟨_, _, ⟨(triangleRotation _).counitIso.symm.app _ ≪≫ (rotate _).mapIso e ≪≫
      CochainComplex.mappingCone.trianglehRotateIsoTrianglehOfDegreewiseSplit φ⟩⟩
  · rintro ⟨S, σ, ⟨e⟩⟩
    rw [rotate_distinguished_triangle, rotate_distinguished_triangle]
    refine isomorphic_distinguished _ ?_ _
      ((rotate _ ⋙ rotate _).mapIso e ≪≫
        CochainComplex.trianglehOfDegreewiseSplitRotateRotateIso S σ)
    exact ⟨_, _, _, ⟨Iso.refl _⟩⟩

end HomotopyCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c89d79c4fc78ae315ac252e66861dd21590a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
