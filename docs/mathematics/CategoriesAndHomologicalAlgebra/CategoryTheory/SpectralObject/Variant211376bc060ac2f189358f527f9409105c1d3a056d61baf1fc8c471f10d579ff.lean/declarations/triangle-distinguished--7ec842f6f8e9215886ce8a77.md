# triangle_distinguished

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd24f0c3-4c39-16f0-a43b-8758754bff4e",
  "kind": "lemma",
  "lexical_name": "triangle_distinguished",
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
  "slug": "triangle-distinguished--7ec842f6f8e9215886ce8a77",
  "source": {
    "blob": "f71dff53ece6549db1c18e2e695a6063b79b463a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant211376bc060ac2f189358f527f9409105c1d3a056d61baf1fc8c471f10d579ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ec842f6f8e9215886ce8a7712824ea84a83a33ca0b7b74aa5f513eb0314630b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant211376bc060ac2f189358f527f9409105c1d3a056d61baf1fc8c471f10d579ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd24f0c3-4c39-16f0-a43b-8758754bff4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma triangle_distinguished : X.triangle f g ∈ distTriang C :=
  X.ω₂_obj_distinguished (mk₂ f g)

section

variable {f g} {i' j' k' : ι} {f' : i' ⟶ j'} {g' : j' ⟶ k'}

/-- Given a spectral object `X` indexed by `ι` in a triangulated category,
this is the morphisms of distinguished triangles `X.triangle f g ⟶ X.triangle f' g'`
induced by a morphism `mk₂ f g ⟶ mk₂ f' g'` in `ComposableArrows ι 2`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant211376bc060ac2f189358f527f9409105c1d3a056d61baf1fc8c471f10d579ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant211376bc060ac2f189358f527f9409105c1d3a056d61baf1fc8c471f10d579ff.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71dff53ece6549db1c18e2e695a6063b79b463a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
