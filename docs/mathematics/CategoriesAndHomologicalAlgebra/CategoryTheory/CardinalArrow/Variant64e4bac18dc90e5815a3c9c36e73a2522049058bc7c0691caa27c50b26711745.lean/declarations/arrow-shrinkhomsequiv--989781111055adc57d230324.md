# Arrow.shrinkHomsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d413e02fe8d7b98d6e877559271ac18aa80c608a251c50ff92880ed7f92bdaa0",
  "kind": "def",
  "lexical_name": "Arrow.shrinkHomsEquiv",
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
  "slug": "arrow-shrinkhomsequiv--989781111055adc57d230324",
  "source": {
    "blob": "415c127f4dbdd5e45e029a980f7353c0bc31b777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:989781111055adc57d230324e83e063030d58a347d6b615a4fb84b8490bf1e52",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d413e02fe8d7b98d6e877559271ac18aa80c608a251c50ff92880ed7f92bdaa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Arrow.shrinkHomsEquiv (C : Type u) [Category.{v} C] [LocallySmall.{w} C] :
    Arrow.{w} (ShrinkHoms C) ≃ Arrow C where
  toFun := (ShrinkHoms.equivalence C).inverse.mapArrow.obj
  invFun := (ShrinkHoms.equivalence C).functor.mapArrow.obj
  left_inv _ := by simp
  right_inv _ := by simp

/-- The bijection `Arrow (Shrink C) ≃ Arrow C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `415c127f4dbdd5e45e029a980f7353c0bc31b777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
