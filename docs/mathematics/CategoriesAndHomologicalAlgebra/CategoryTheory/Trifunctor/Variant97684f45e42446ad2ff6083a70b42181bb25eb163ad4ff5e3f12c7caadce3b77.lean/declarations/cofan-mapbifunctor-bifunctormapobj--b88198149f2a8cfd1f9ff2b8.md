# cofan₃MapBifunctor₁₂BifunctorMapObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8efa09436f6a438917e06fbfde41f3857046b4c08494568839507f0a847d2e6",
  "kind": "def",
  "lexical_name": "cofan₃MapBifunctor₁₂BifunctorMapObj",
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
  "slug": "cofan-mapbifunctor-bifunctormapobj--b88198149f2a8cfd1f9ff2b8",
  "source": {
    "blob": "d7117dfca04fa26e8df627c5369cfe89b02aef0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 322,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b88198149f2a8cfd1f9ff2b871162f07fd1a7b494e2dd44df46c4ecb1830987b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8efa09436f6a438917e06fbfde41f3857046b4c08494568839507f0a847d2e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cofan₃MapBifunctor₁₂BifunctorMapObj (j : J) :
    ((((mapTrifunctor (bifunctorComp₁₂ F₁₂ G) I₁ I₂ I₃).obj X₁).obj X₂).obj
      X₃).CofanMapObjFun r j :=
  Cofan.mk (mapBifunctorMapObj G ρ₁₂.q (mapBifunctorMapObj F₁₂ ρ₁₂.p X₁ X₂) X₃ j)
    (fun ⟨⟨i₁, i₂, i₃⟩, (hi : r ⟨i₁, i₂, i₃⟩ = j)⟩ =>
      ιMapBifunctor₁₂BifunctorMapObj F₁₂ G ρ₁₂ X₁ X₂ X₃ i₁ i₂ i₃ j hi)

variable [H : HasGoodTrifunctor₁₂Obj F₁₂ G ρ₁₂ X₁ X₂ X₃]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The cofan `cofan₃MapBifunctor₁₂BifunctorMapObj` is a colimit, see the induced isomorphism
`mapBifunctorComp₁₂MapObjIso`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7117dfca04fa26e8df627c5369cfe89b02aef0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
