# wideSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9420730ceb8fd8c154ca72bc82f69750cb86c9607b89eee1c8aa7a44159f4cc9",
  "kind": "def",
  "lexical_name": "wideSpan",
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
  "slug": "widespan--fb626097adea0225c7544e4f",
  "source": {
    "blob": "1382cc71c163e0f284846823b8421e4aff8ce7de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variantd1394716f21da33c6de5c23ca18314d8fc7fe9eca3fee543af625e4c213e91c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb626097adea0225c7544e4fced1545a3d3601312f580d1a6bae6e01a58ce925",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variantd1394716f21da33c6de5c23ca18314d8fc7fe9eca3fee543af625e4c213e91c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9420730ceb8fd8c154ca72bc82f69750cb86c9607b89eee1c8aa7a44159f4cc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wideSpan (B : C) (objs : J → C) (arrows : ∀ j : J, B ⟶ objs j) : WidePushoutShape J ⥤ C where
  obj j := Option.casesOn j B objs
  map f := by
    cases' f with _ j
    · apply 𝟙 _
    · exact arrows j
  map_comp := fun f g => by
    cases f
    · simp only [Eq.ndrec, hom_id, eq_rec_constant, Category.id_comp]; congr
    · cases g
      · simp only [Eq.ndrec, hom_id, eq_rec_constant, Category.comp_id]; congr
#align category_theory.limits.wide_pushout_shape.wide_span CategoryTheory.Limits.WidePushoutShape.wideSpan

/-- Every diagram is naturally isomorphic (actually, equal) to a `wideSpan` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variantd1394716f21da33c6de5c23ca18314d8fc7fe9eca3fee543af625e4c213e91c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variantd1394716f21da33c6de5c23ca18314d8fc7fe9eca3fee543af625e4c213e91c2.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1382cc71c163e0f284846823b8421e4aff8ce7de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
