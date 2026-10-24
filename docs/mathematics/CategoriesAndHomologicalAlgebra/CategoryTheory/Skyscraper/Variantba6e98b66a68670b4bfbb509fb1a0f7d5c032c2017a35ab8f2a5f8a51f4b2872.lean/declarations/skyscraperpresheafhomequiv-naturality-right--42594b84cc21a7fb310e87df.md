# skyscraperPresheafHomEquiv_naturality_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55d495c0-54e9-f1e1-0cf2-e483dc48ae24",
  "kind": "lemma",
  "lexical_name": "skyscraperPresheafHomEquiv_naturality_right",
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
  "slug": "skyscraperpresheafhomequiv-naturality-right--42594b84cc21a7fb310e87df",
  "source": {
    "blob": "c99739a74a56f4ccab0656a34b098800a84da55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variantba6e98b66a68670b4bfbb509fb1a0f7d5c032c2017a35ab8f2a5f8a51f4b2872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42594b84cc21a7fb310e87df256a741a0a7205b8caac5319da896fc900a91b28",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variantba6e98b66a68670b4bfbb509fb1a0f7d5c032c2017a35ab8f2a5f8a51f4b2872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d495c0-54e9-f1e1-0cf2-e483dc48ae24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma skyscraperPresheafHomEquiv_naturality_right
    (f : Φ.presheafFiber.obj P ⟶ M) (g : M ⟶ N) :
    Φ.skyscraperPresheafHomEquiv (f ≫ g) =
      Φ.skyscraperPresheafHomEquiv f ≫ Φ.skyscraperPresheafFunctor.map g := by
  ext
  dsimp
  ext
  dsimp
  rw [skyscraperPresheafHomEquiv_app_π]
  dsimp
  rw [Category.assoc, Pi.map_π, skyscraperPresheafHomEquiv_app_π_assoc]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variantba6e98b66a68670b4bfbb509fb1a0f7d5c032c2017a35ab8f2a5f8a51f4b2872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variantba6e98b66a68670b4bfbb509fb1a0f7d5c032c2017a35ab8f2a5f8a51f4b2872.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99739a74a56f4ccab0656a34b098800a84da55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
