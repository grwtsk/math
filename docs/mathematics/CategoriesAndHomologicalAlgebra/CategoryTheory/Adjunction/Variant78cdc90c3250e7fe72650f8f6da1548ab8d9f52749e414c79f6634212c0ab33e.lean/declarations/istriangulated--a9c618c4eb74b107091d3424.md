# IsTriangulated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50f3d56bf44f696355fc1eeeaa48e6832b15d65321c007131376e2160b52ea78",
  "kind": "class",
  "lexical_name": "IsTriangulated",
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
  "slug": "istriangulated--a9c618c4eb74b107091d3424",
  "source": {
    "blob": "57d83e2083fcd403a723cfe219c77c93c46cdc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant78cdc90c3250e7fe72650f8f6da1548ab8d9f52749e414c79f6634212c0ab33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9c618c4eb74b107091d3424a499f82984c2b97dee8880dc93730f888fce37b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant78cdc90c3250e7fe72650f8f6da1548ab8d9f52749e414c79f6634212c0ab33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50f3d56bf44f696355fc1eeeaa48e6832b15d65321c007131376e2160b52ea78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsTriangulated : Prop where
  commShift : adj.CommShift ℤ := by infer_instance
  leftAdjoint_isTriangulated : F.IsTriangulated := by infer_instance
  rightAdjoint_isTriangulated : G.IsTriangulated := by infer_instance

namespace IsTriangulated

attribute [instance] commShift leftAdjoint_isTriangulated rightAdjoint_isTriangulated

/-- Constructor for `Adjunction.IsTriangulated`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant78cdc90c3250e7fe72650f8f6da1548ab8d9f52749e414c79f6634212c0ab33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant78cdc90c3250e7fe72650f8f6da1548ab8d9f52749e414c79f6634212c0ab33e.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d83e2083fcd403a723cfe219c77c93c46cdc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
