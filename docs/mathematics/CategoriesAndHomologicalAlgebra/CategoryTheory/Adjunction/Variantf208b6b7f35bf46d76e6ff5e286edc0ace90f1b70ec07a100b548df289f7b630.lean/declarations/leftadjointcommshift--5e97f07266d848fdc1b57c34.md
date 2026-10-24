# leftAdjointCommShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4663c7911de93935a474f7c628fb6f26853ff62ac7308428a2f3b1aab33f70fc",
  "kind": "def",
  "lexical_name": "leftAdjointCommShift",
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
  "slug": "leftadjointcommshift--5e97f07266d848fdc1b57c34",
  "source": {
    "blob": "6649e4a5cd3a05dc44fff0034451d62549787f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 476,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e97f07266d848fdc1b57c3450b0d44d0ffb08076e64975b534471853e360c30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4663c7911de93935a474f7c628fb6f26853ff62ac7308428a2f3b1aab33f70fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftAdjointCommShift [G.CommShift A] : F.CommShift A where
  commShiftIso a := iso adj a
  commShiftIso_zero := by
    refine CommShift.compatibilityUnit_unique_left adj _ _ (G.commShiftIso 0)
      (compatibilityUnit_iso adj 0) ?_
    rw [G.commShiftIso_zero]
    exact CommShift.compatibilityUnit_isoZero adj
  commShiftIso_add a b := by
    refine CommShift.compatibilityUnit_unique_left adj _ _ (G.commShiftIso (a + b))
      (compatibilityUnit_iso adj (a + b)) ?_
    rw [G.commShiftIso_add]
    exact CommShift.compatibilityUnit_isoAdd adj _ _ _ _
      (compatibilityUnit_iso adj a) (compatibilityUnit_iso adj b)

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6649e4a5cd3a05dc44fff0034451d62549787f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
