# mapComposableArrows₅

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7aca1a27518f7ffc30c1c76e6f2108cd3659ea89d807137597779c7c505a5f57",
  "kind": "def",
  "lexical_name": "mapComposableArrows₅",
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
  "slug": "mapcomposablearrows--c03955d0ae0d841bb9ad6fb6",
  "source": {
    "blob": "f657f41a1344af3edfada6da46b92a671c5c1ff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variantb78271cbcb2e54395c029e349a4f47429db3ca559fe2da73871e217bc552c2be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c03955d0ae0d841bb9ad6fb617baec7ff8608b0ee5495d5670f990ee0d52ff4b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variantb78271cbcb2e54395c029e349a4f47429db3ca559fe2da73871e217bc552c2be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7aca1a27518f7ffc30c1c76e6f2108cd3659ea89d807137597779c7c505a5f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapComposableArrows₅ (i j : ι) (hij : c.Rel i j) :
    composableArrows₅ hS₁ i j hij ⟶ composableArrows₅ hS₂ i j hij :=
  homMk₅ (homologyMap φ.τ₁ i) (homologyMap φ.τ₂ i) (homologyMap φ.τ₃ i)
    (homologyMap φ.τ₁ j) (homologyMap φ.τ₂ j) (homologyMap φ.τ₃ j)
    (naturality' (mapComposableArrows₂ φ i) 0 1)
    (naturality' (mapComposableArrows₂ φ i) 1 2)
    (δ_naturality φ hS₁ hS₂ i j hij)
    (naturality' (mapComposableArrows₂ φ j) 0 1)
    (naturality' (mapComposableArrows₂ φ j) 1 2)

include hS₁ hS₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variantb78271cbcb2e54395c029e349a4f47429db3ca559fe2da73871e217bc552c2be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variantb78271cbcb2e54395c029e349a4f47429db3ca559fe2da73871e217bc552c2be.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f657f41a1344af3edfada6da46b92a671c5c1ff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
