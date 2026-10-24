# RepresentablyFlat.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9786007f139ac2157fe912a04763de82428fa063f6e1b4f903e7c3356d39a16",
  "kind": "instance",
  "lexical_name": "RepresentablyFlat.comp",
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
  "slug": "representablyflat-comp--72a9e878fa017cac13adff05",
  "source": {
    "blob": "a88d1f4b8f7f4078045f3de3421ee85e8c03c964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72a9e878fa017cac13adff05c3de57c4244f7a9b460dfecdf9be062b1a7c3510",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9786007f139ac2157fe912a04763de82428fa063f6e1b4f903e7c3356d39a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RepresentablyFlat.comp (G : D ⥤ E) [RepresentablyFlat F]
    [RepresentablyFlat G] : RepresentablyFlat (F ⋙ G) := by
  refine ⟨fun X => IsCofiltered.of_cone_nonempty.{0} _ (fun {J} _ _ H => ?_)⟩
  obtain ⟨c₁⟩ := IsCofiltered.cone_nonempty (H ⋙ StructuredArrow.pre X F G)
  let H₂ : J ⥤ StructuredArrow c₁.pt.right F :=
    { obj := fun j => StructuredArrow.mk (c₁.π.app j).right
      map := fun {j j'} f =>
        StructuredArrow.homMk (H.map f).right (congrArg CommaMorphism.right (c₁.w f)) }
  obtain ⟨c₂⟩ := IsCofiltered.cone_nonempty H₂
  simp only [H₂] at c₂
  exact ⟨⟨StructuredArrow.mk (c₁.pt.hom ≫ G.map c₂.pt.hom),
    ⟨fun j => StructuredArrow.homMk (c₂.π.app j).right (by simp [← G.map_comp]),
     fun j j' f => by simpa using (c₂.w f).symm⟩⟩⟩

section

variable {F}

/-- Being a representably flat functor is closed under natural isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a88d1f4b8f7f4078045f3de3421ee85e8c03c964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
