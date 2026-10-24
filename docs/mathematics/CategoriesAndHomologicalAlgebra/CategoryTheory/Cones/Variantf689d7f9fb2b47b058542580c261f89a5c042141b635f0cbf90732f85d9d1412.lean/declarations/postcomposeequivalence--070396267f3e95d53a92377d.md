# postcomposeEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81aea4044002164acd111a0462594506c017212a4891c9653930f23b880c7c33",
  "kind": "def",
  "lexical_name": "postcomposeEquivalence",
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
  "slug": "postcomposeequivalence--070396267f3e95d53a92377d",
  "source": {
    "blob": "df2393b058e36207833c79e4bb73f8a8e6f356d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 401,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:070396267f3e95d53a92377d1bdb5542ed5bcd86309a7eba4814843b62844ca5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81aea4044002164acd111a0462594506c017212a4891c9653930f23b880c7c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcomposeEquivalence {G : J ⥤ C} (α : F ≅ G) : Cone F ≌ Cone G where
  functor := postcompose α.hom
  inverse := postcompose α.inv
  unitIso := NatIso.ofComponents fun s => ext (Iso.refl _)
  counitIso := NatIso.ofComponents fun s => ext (Iso.refl _)

/-- Whiskering on the left by `E : K ⥤ J` gives a functor from `Cone F` to `Cone (E ⋙ F)`.
-/
@[to_dual (attr := implicit_reducible, simps)
/-- Whiskering on the left by `E : K ⥤ J` gives a functor from `Cocone F` to `Cocone (E ⋙ F)`.
-/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df2393b058e36207833c79e4bb73f8a8e6f356d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
