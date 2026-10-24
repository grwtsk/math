# LaxMonoidalFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8b174f6acd616dfe885f6af0104ef7d94ffada49c307655a507026ed75b66b7",
  "kind": "structure",
  "lexical_name": "LaxMonoidalFunctor",
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
  "slug": "laxmonoidalfunctor--bd45f5c444a9f0354e169565",
  "source": {
    "blob": "4768e5d6759a6280e62bf274247f99fb1695ce68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1320,
    "line": 1310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8d702ac54faf563e8ab3f7c0541941208fe2d49fe37f0a4b99ee71c5aef712a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd45f5c444a9f0354e1695655d478b0568098e0154f23d176530344d95c339b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8d702ac54faf563e8ab3f7c0541941208fe2d49fe37f0a4b99ee71c5aef712a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8b174f6acd616dfe885f6af0104ef7d94ffada49c307655a507026ed75b66b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1310–1320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LaxMonoidalFunctor extends C ⥤ D where
  laxMonoidal : toFunctor.LaxMonoidal := by infer_instance

namespace LaxMonoidalFunctor

attribute [instance] laxMonoidal

variable {C D}

/-- Constructor for `LaxMonoidalFunctor C D`. -/
@[simps toFunctor]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8d702ac54faf563e8ab3f7c0541941208fe2d49fe37f0a4b99ee71c5aef712a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8d702ac54faf563e8ab3f7c0541941208fe2d49fe37f0a4b99ee71c5aef712a6.lean#L1310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4768e5d6759a6280e62bf274247f99fb1695ce68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
