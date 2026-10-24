# truncGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68a0dbaf06a7f3fbc05dbb64c23d290d9af116ec1e4f6a653cb5927e273fa6b4",
  "kind": "def",
  "lexical_name": "truncGE",
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
  "slug": "truncge--82b9be0628e72672de05c7bf",
  "source": {
    "blob": "75e493ba5831951e5acbb88c3323bcea99d9fabc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantc1cee0ca1ccdfb1054faaae26b9427e4c4da2f9da77b518f3b5ef349b7a1d621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82b9be0628e72672de05c7bf2c2dccdc0b800cf763e86dc5b322306040649a2e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantc1cee0ca1ccdfb1054faaae26b9427e4c4da2f9da77b518f3b5ef349b7a1d621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68a0dbaf06a7f3fbc05dbb64c23d290d9af116ec1e4f6a653cb5927e273fa6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def truncGE : HomologicalComplex C c' := (K.truncGE' e).extend e

/-- The isomorphism `(K.truncGE e).X i' ≅ K.X i'` when `e.f i = i'`
and `e.BoundaryGE i` does not hold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantc1cee0ca1ccdfb1054faaae26b9427e4c4da2f9da77b518f3b5ef349b7a1d621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantc1cee0ca1ccdfb1054faaae26b9427e4c4da2f9da77b518f3b5ef349b7a1d621.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75e493ba5831951e5acbb88c3323bcea99d9fabc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
