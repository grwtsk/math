# PreservesCardinalPresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e12d13b832c749c10a33115e74663743ff34fe7abb5b9556dbdb83f4baf1e8a",
  "kind": "class",
  "lexical_name": "PreservesCardinalPresentable",
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
  "slug": "preservescardinalpresentable--e3ccbdd0494271876396bf46",
  "source": {
    "blob": "1b5b61483268739b4b3f8b1442ac0643da83216d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesCardinalPresentable/Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3ccbdd0494271876396bf464d82506f54bca3e307fcd565adce7de9ee7024a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesCardinalPresentable/Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e12d13b832c749c10a33115e74663743ff34fe7abb5b9556dbdb83f4baf1e8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PreservesCardinalPresentable
    (F : C ⥤ D) (κ : Cardinal.{w}) [Fact κ.IsRegular] : Prop where
  le_inverseImage_isCardinalPresentable (F κ) :
    isCardinalPresentable C κ ≤ (isCardinalPresentable D κ).inverseImage F

export PreservesCardinalPresentable (le_inverseImage_isCardinalPresentable)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesCardinalPresentable/Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesCardinalPresentable/Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b5b61483268739b4b3f8b1442ac0643da83216d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
