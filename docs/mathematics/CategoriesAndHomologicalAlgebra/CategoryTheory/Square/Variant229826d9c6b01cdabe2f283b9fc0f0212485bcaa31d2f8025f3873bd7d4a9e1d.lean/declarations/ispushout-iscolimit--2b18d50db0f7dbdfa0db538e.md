# IsPushout.isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1a53590414b16ecffc816268c539b9504c51add41cc18649c77bc139dea0792",
  "kind": "def",
  "lexical_name": "IsPushout.isColimit",
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
  "slug": "ispushout-iscolimit--2b18d50db0f7dbdfa0db538e",
  "source": {
    "blob": "ddd0fc6d439189b4ae0e9d16b8944b4b6e4cf6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b18d50db0f7dbdfa0db538e267061a13f2edea82bf34f3a617e2124be0efda1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1a53590414b16ecffc816268c539b9504c51add41cc18649c77bc139dea0792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsPushout.isColimit (h : sq.IsPushout) :
    IsColimit sq.pushoutCocone :=
  CategoryTheory.IsPushout.isColimit h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddd0fc6d439189b4ae0e9d16b8944b4b6e4cf6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
