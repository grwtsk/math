# Function.bicompr.lawfulBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2caa2c20a1e4c92c5bb989c2c9abffe5594e9053702a9c35bda7640b4348d93e",
  "kind": "instance",
  "lexical_name": "Function.bicompr.lawfulBifunctor",
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
  "slug": "function-bicompr-lawfulbifunctor--208892ee3afecf7efa31fd98",
  "source": {
    "blob": "0cebab3a5a4b271b985f4d249920df7546ed5343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:208892ee3afecf7efa31fd98f51ece87ff6564c9ad82d4ef15733408e422c13e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2caa2c20a1e4c92c5bb989c2c9abffe5594e9053702a9c35bda7640b4348d93e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Function.bicompr.lawfulBifunctor [LawfulFunctor G] [LawfulBifunctor F] :
    LawfulBifunctor (bicompr G F) := by
  constructor <;> intros <;> simp [bimap, functor_norm]
#align function.bicompr.is_lawful_bifunctor Function.bicompr.lawfulBifunctor

end Bicompr
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cebab3a5a4b271b985f4d249920df7546ed5343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
