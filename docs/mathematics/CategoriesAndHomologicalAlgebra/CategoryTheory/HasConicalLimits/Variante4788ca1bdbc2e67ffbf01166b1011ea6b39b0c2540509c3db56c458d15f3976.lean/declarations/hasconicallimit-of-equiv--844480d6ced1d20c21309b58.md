# HasConicalLimit.of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a89d6304472dfaf0a9fbd3d10c647840d20afacea4f20b0aed9e9921a1a8d35",
  "kind": "instance",
  "lexical_name": "HasConicalLimit.of_equiv",
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
  "slug": "hasconicallimit-of-equiv--844480d6ced1d20c21309b58",
  "source": {
    "blob": "44194be9a5dc3557d524ae91f9676e25d20cf227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:844480d6ced1d20c21309b5880baf13fe1661780c01e3fa8515454a7fcb12f97",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a89d6304472dfaf0a9fbd3d10c647840d20afacea4f20b0aed9e9921a1a8d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance HasConicalLimit.of_equiv (F : J ⥤ C) [HasConicalLimit V F]
    (G : J' ⥤ J) [G.IsEquivalence] : HasConicalLimit V (G ⋙ F) where

/-- If a `G ⋙ F` has a limit, and `G` is an equivalence, we can construct a limit of `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44194be9a5dc3557d524ae91f9676e25d20cf227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
