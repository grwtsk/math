# HasSplitCoequalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98590af0e4d83f9cd9b680d52a99f113fcf8727fe34f3f022f7a41df4cc2e0db",
  "kind": "class",
  "lexical_name": "HasSplitCoequalizer",
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
  "slug": "hassplitcoequalizer--037d39c3635f59aa00c6ff9a",
  "source": {
    "blob": "37616032fb1d903f8f455590fe7dc9c314f972ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:037d39c3635f59aa00c6ff9a36c37767a220f269b536bc3bffb29732ac94d174",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98590af0e4d83f9cd9b680d52a99f113fcf8727fe34f3f022f7a41df4cc2e0db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasSplitCoequalizer : Prop where
  /-- There is some split coequalizer -/
  splittable : ∃ (Z : C) (h : Y ⟶ Z), Nonempty (IsSplitCoequalizer f g h)
#align category_theory.has_split_coequalizer CategoryTheory.HasSplitCoequalizer

/--
The pair `f,g` is a `G`-split pair if there is an `h : G Y ⟶ Z` so that `G f, G g, h` forms a split
coequalizer in `D`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37616032fb1d903f8f455590fe7dc9c314f972ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
