# IsFundamentalGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fa7a89b60e174ec74ce1ce17e36e185b3c8ad29607e6846009333e80666555a",
  "kind": "class",
  "lexical_name": "IsFundamentalGroup",
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
  "slug": "isfundamentalgroup--9edeaea54fcbe91341ee0a48",
  "source": {
    "blob": "4427f23db89bac18eeb6fe13501d962b290fba3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9edeaea54fcbe91341ee0a48f2fac2fb6a0f9d3e942b2e61f3dd3c424f8c69ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fa7a89b60e174ec74ce1ce17e36e185b3c8ad29607e6846009333e80666555a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsFundamentalGroup [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G] : Prop
    extends IsNaturalSMul F G where
  transitive_of_isGalois (X : C) [IsGalois X] : MulAction.IsPretransitive G (F.obj X)
  continuous_smul (X : C) : ContinuousSMul G (F.obj X)
  non_trivial' (g : G) : (∀ (X : C) (x : F.obj X), g • x = x) → g = 1

namespace IsFundamentalGroup

attribute [instance] continuous_smul transitive_of_isGalois

variable {G} [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G] [IsFundamentalGroup F G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4427f23db89bac18eeb6fe13501d962b290fba3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
