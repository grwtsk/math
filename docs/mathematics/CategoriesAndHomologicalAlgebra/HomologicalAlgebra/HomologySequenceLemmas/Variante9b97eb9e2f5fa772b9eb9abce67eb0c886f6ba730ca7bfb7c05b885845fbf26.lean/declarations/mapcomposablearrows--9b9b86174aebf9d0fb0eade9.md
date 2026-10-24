# mapComposableArrows₅

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25208fa1854da6185560f736375ca3b5839dcd1864093d84dd104b0bde032cbd",
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
  "slug": "mapcomposablearrows--9b9b86174aebf9d0fb0eade9",
  "source": {
    "blob": "83271b3b9013e6c56d5580a865be8c601c0e7c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variante9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b9b86174aebf9d0fb0eade922cc50b9ab2ba77c0e8dde496ddf9c6467fee86a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variante9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25208fa1854da6185560f736375ca3b5839dcd1864093d84dd104b0bde032cbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variante9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variante9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83271b3b9013e6c56d5580a865be8c601c0e7c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
