# CompStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29ff44dac70bdb6ed52cfdd834f2e21397aa12695df308dfd133848df9767f2e",
  "kind": "structure",
  "lexical_name": "CompStruct",
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
  "slug": "compstruct--26f872761fbae278d5fe3511",
  "source": {
    "blob": "17782282f9a11a29d5986c9b81816f410600d02d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 99,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant4b6d1d4adb692d047709a5cfe2677883d55ab6665fe7762ddf2aa54cafbb9dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26f872761fbae278d5fe351134d1557b73668bbe372e994d7d29d6b1b23b27f8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant4b6d1d4adb692d047709a5cfe2677883d55ab6665fe7762ddf2aa54cafbb9dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29ff44dac70bdb6ed52cfdd834f2e21397aa12695df308dfd133848df9767f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompStruct {x₀ x₁ x₂ : X _⦋0⦌₂}
    (e₀₁ : Edge x₀ x₁) (e₁₂ : Edge x₁ x₂) (e₀₂ : Edge x₀ x₂) where
  /-- A `2`-simplex with prescribed `1`-dimensional faces -/
  simplex : X _⦋2⦌₂
  d₂ : X.map (δ₂ 2).op simplex = e₀₁.edge := by cat_disch
  d₀ : X.map (δ₂ 0).op simplex = e₁₂.edge := by cat_disch
  d₁ : X.map (δ₂ 1).op simplex = e₀₂.edge := by cat_disch

namespace CompStruct

attribute [simp] d₀ d₁ d₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant4b6d1d4adb692d047709a5cfe2677883d55ab6665fe7762ddf2aa54cafbb9dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant4b6d1d4adb692d047709a5cfe2677883d55ab6665fe7762ddf2aa54cafbb9dcb.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17782282f9a11a29d5986c9b81816f410600d02d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
