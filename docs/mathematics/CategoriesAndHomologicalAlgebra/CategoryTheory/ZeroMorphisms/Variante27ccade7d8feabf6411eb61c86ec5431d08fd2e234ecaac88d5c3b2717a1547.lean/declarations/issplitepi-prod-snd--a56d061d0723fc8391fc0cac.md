# isSplitEpi_prod_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b7e149605ee8369152fcd73fdb711f169b3fbaeeae0cabf4cfb4406a5c6d7dd",
  "kind": "instance",
  "lexical_name": "isSplitEpi_prod_snd",
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
  "slug": "issplitepi-prod-snd--a56d061d0723fc8391fc0cac",
  "source": {
    "blob": "e8d5026f46ed2c1e355c98bf00946d629ca113d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 574,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variante27ccade7d8feabf6411eb61c86ec5431d08fd2e234ecaac88d5c3b2717a1547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a56d061d0723fc8391fc0cac77028b205f28a03ca9f5b830b6d7f5bac0e39904",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variante27ccade7d8feabf6411eb61c86ec5431d08fd2e234ecaac88d5c3b2717a1547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b7e149605ee8369152fcd73fdb711f169b3fbaeeae0cabf4cfb4406a5c6d7dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isSplitEpi_prod_snd [HasZeroMorphisms C] {X Y : C} [HasLimit (pair X Y)] :
    IsSplitEpi (prod.snd : X ⨯ Y ⟶ Y) :=
  IsSplitEpi.mk' { section_ := prod.lift 0 (𝟙 Y) }


section

variable [HasZeroMorphisms C] [HasZeroObject C] {F : D ⥤ C}

/-- If a functor `F` is zero, then any cone for `F` with a zero point is limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variante27ccade7d8feabf6411eb61c86ec5431d08fd2e234ecaac88d5c3b2717a1547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variante27ccade7d8feabf6411eb61c86ec5431d08fd2e234ecaac88d5c3b2717a1547.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d5026f46ed2c1e355c98bf00946d629ca113d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
