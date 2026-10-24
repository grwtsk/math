# Γ₂N₂ToKaroubiIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ade685ae98b2258171a72d9206fe5696a8070e7a64b0e8aa3ff495340668bb1b",
  "kind": "def",
  "lexical_name": "Γ₂N₂ToKaroubiIso",
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
  "slug": "n-tokaroubiiso--1317a8acb7d8ec30f19e658d",
  "source": {
    "blob": "c046599f5f698c6ef4f51b8bcb9c1f0d1b731744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1317a8acb7d8ec30f19e658d42609f61341679e7f488820bc0456fc4ed041efd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ade685ae98b2258171a72d9206fe5696a8070e7a64b0e8aa3ff495340668bb1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Γ₂N₂ToKaroubiIso : toKaroubi (SimplicialObject C) ⋙ N₂ ⋙ Γ₂ ≅ N₁ ⋙ Γ₂ :=
  (Functor.associator _ _ _).symm ≪≫ isoWhiskerRight toKaroubiCompN₂IsoN₁ Γ₂

namespace Γ₂N₂

/-- The natural transformation `N₂ ⋙ Γ₂ ⟶ 𝟭 (SimplicialObject C)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c046599f5f698c6ef4f51b8bcb9c1f0d1b731744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
