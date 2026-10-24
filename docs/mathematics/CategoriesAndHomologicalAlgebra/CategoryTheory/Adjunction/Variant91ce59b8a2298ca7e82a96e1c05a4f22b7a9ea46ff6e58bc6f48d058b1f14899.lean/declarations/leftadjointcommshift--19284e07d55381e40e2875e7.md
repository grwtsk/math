# leftAdjointCommShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:001286e43499ef7aaed6138ac1d5c4ecabe60ba8cac6d44f9aa6e228b49f28e3",
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
  "slug": "leftadjointcommshift--19284e07d55381e40e2875e7",
  "source": {
    "blob": "8f6a5a6ddc1f965514678695afbd2aed545e9251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 458,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19284e07d55381e40e2875e75a893d4013372ffd142148008d6e082e7aa8e748",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:001286e43499ef7aaed6138ac1d5c4ecabe60ba8cac6d44f9aa6e228b49f28e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftAdjointCommShift [G.CommShift A] : F.CommShift A where
  iso a := iso adj a
  zero := by
    refine CommShift.compatibilityUnit_unique_left adj _ _ (G.commShiftIso 0)
      (compatibilityUnit_iso adj 0) ?_
    rw [G.commShiftIso_zero]
    exact CommShift.compatibilityUnit_isoZero adj
  add a b := by
    refine CommShift.compatibilityUnit_unique_left adj _ _ (G.commShiftIso (a + b))
      (compatibilityUnit_iso adj (a + b)) ?_
    rw [G.commShiftIso_add]
    exact CommShift.compatibilityUnit_isoAdd adj _ _ _ _
      (compatibilityUnit_iso adj a) (compatibilityUnit_iso adj b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6a5a6ddc1f965514678695afbd2aed545e9251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
