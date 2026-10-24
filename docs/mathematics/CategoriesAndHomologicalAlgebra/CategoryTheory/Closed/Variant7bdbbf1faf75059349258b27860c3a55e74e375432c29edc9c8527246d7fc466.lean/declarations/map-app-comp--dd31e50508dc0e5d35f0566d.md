# map_app_comp_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f108d4a-f957-9fad-2d09-58c131cd78f7",
  "kind": "lemma",
  "lexical_name": "map_app_comp_π",
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
  "slug": "map-app-comp--dd31e50508dc0e5d35f0566d",
  "source": {
    "blob": "56704e6e0b4b4cf54a67f0718484f729a7cb5c3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd31e50508dc0e5d35f0566d43d3a29c0d3488f4284fab8b1b4608c5b3500a0c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f108d4a-f957-9fad-2d09-58c131cd78f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_app_comp_π (ℌ : DayConvolutionInternalHom F G H)
    {G' : C ⥤ V} {H' : C ⥤ V} (f : G ⟶ G')
    (ℌ' : DayConvolutionInternalHom F G' H') (c : C) (j : C) :
    (ℌ.map f ℌ').app c ≫ ℌ'.π c j =
    ℌ.π c j ≫ (ihom <| F.obj j).map (f.app <| j ⊗ c) := by
  dsimp [map]
  rw [← Wedge.mk_ι
      (F := dayConvolutionInternalHomDiagramFunctor F |>.obj _ |>.obj c)
      (H'.obj c) (ℌ'.π c) (ℌ'.hπ c),
    Wedge.IsLimit.lift_ι (ℌ'.isLimitWedge c)]

section ev

variable [DayConvolution F H] (ℌ : DayConvolutionInternalHom F G H)

set_option backward.defeqAttrib.useBackward true in
/-- Given `ℌ : DayConvolutionInternalHom F H`, if we think of `H.obj G`
as the internal hom `[F, G]`, then this is the transformation
corresponding to the component at `G` of the "evaluation" natural morphism
`F ⊛ [F, _] ⟶ 𝟭`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56704e6e0b4b4cf54a67f0718484f729a7cb5c3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
