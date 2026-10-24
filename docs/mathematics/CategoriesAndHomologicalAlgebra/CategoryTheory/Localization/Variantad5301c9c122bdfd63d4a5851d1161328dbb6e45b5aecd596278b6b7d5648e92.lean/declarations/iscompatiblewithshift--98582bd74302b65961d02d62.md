# IsCompatibleWithShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d164b75b23bc19d1b34617d608b249aa8e924746329d8c5672b3a9953a5955e",
  "kind": "class",
  "lexical_name": "IsCompatibleWithShift",
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
  "slug": "iscompatiblewithshift--98582bd74302b65961d02d62",
  "source": {
    "blob": "b0162f9929b9bb912004f088fe06061f882d2e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98582bd74302b65961d02d62fd0414b5bb2a9583da990cae365b044595eb96e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d164b75b23bc19d1b34617d608b249aa8e924746329d8c5672b3a9953a5955e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsCompatibleWithShift : Prop where
  /-- the condition that for all `a : A`, the morphism property `W` is not changed when
  we take its inverse image by the shift functor by `a` -/
  condition : ∀ (a : A), W.inverseImage (shiftFunctor C a) = W

variable [W.IsCompatibleWithShift A] [W.IsCompatibleWithShift G]

namespace IsCompatibleWithShift

variable {A}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0162f9929b9bb912004f088fe06061f882d2e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
