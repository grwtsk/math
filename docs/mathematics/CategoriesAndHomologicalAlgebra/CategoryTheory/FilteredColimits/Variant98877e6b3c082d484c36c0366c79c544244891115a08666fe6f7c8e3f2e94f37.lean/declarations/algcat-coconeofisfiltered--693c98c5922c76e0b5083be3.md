# AlgCat.coconeOfIsFiltered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:882b6497bedf0345ada2ffb5b075befde5c1b364a649505273a6a9b3355e1c4c",
  "kind": "def",
  "lexical_name": "AlgCat.coconeOfIsFiltered",
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
  "slug": "algcat-coconeofisfiltered--693c98c5922c76e0b5083be3",
  "source": {
    "blob": "e5300d26e4801becb8d6f518755927e6c811823b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:693c98c5922c76e0b5083be3eaacfb6a4776c34b4f6e08aa71368375d5beb403",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:882b6497bedf0345ada2ffb5b075befde5c1b364a649505273a6a9b3355e1c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def AlgCat.coconeOfIsFiltered (hc : IsColimit c) (j : J) : Cocone F where
  pt :=
    letI : Algebra R c.pt := algebraOfIsFiltered hc j
    ↧c.pt
  ι.app k := by
    letI : Algebra R c.pt := algebraOfIsFiltered hc j
    refine AlgCat.ofHom { __ := (c.ι.app k).hom, commutes' r := ?_ }
    simp [RingHom.algebraMap_toAlgebra', ← c.w (IsFiltered.leftToMax j k),
      ← c.w (IsFiltered.rightToMax j k)]
  ι.naturality k k' f := by
    ext
    exact c.ι.naturality_apply _ _

set_option backward.defeqAttrib.useBackward true in
/-- The lifted cocone is colimiting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5300d26e4801becb8d6f518755927e6c811823b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
