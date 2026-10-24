# AlgCat.coconeOfIsFiltered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25eaa3549b908821377236274917c10b6e3497ccf69bea46686e3c0e900647e8",
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
  "slug": "algcat-coconeofisfiltered--9b585e8065663b065c7a2b16",
  "source": {
    "blob": "456f2f2f33d3a278106802df135954c8194986aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant8ea89b8ed46a2ccbb11c929f0f470313767330d5f54c8a4085b967916368d2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b585e8065663b065c7a2b16a69371b79e503bd56b4cd3245a76e11bbcb8dba0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant8ea89b8ed46a2ccbb11c929f0f470313767330d5f54c8a4085b967916368d2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25eaa3549b908821377236274917c10b6e3497ccf69bea46686e3c0e900647e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–63.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant8ea89b8ed46a2ccbb11c929f0f470313767330d5f54c8a4085b967916368d2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant8ea89b8ed46a2ccbb11c929f0f470313767330d5f54c8a4085b967916368d2f1.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `456f2f2f33d3a278106802df135954c8194986aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
