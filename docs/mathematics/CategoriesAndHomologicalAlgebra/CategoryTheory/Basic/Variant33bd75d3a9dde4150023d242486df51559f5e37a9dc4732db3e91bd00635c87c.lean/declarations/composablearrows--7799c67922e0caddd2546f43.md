# composableArrows₅

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c78fccd483d09813b09289d613301f0907b6b0dac34442f7b545b0c8d59f6ac2",
  "kind": "abbrev",
  "lexical_name": "composableArrows₅",
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
  "slug": "composablearrows--7799c67922e0caddd2546f43",
  "source": {
    "blob": "e9459e2bb46102c1190587bc78c7940b486c5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant33bd75d3a9dde4150023d242486df51559f5e37a9dc4732db3e91bd00635c87c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7799c67922e0caddd2546f43851294b2f192ee757d31cabbfe10759d725d2c85",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant33bd75d3a9dde4150023d242486df51559f5e37a9dc4732db3e91bd00635c87c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c78fccd483d09813b09289d613301f0907b6b0dac34442f7b545b0c8d59f6ac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev composableArrows₅ (n₀ n₁ : ℤ) (hn₁ : n₀ + 1 = n₁ := by lia) :
    ComposableArrows C 5 :=
  mk₅ ((X.H n₀).map (twoδ₂Toδ₁ f g fg h)) ((X.H n₀).map (twoδ₁Toδ₀ f g fg h))
    (X.δ f g n₀ n₁ hn₁) ((X.H n₁).map (twoδ₂Toδ₁ f g fg h))
    ((X.H n₁).map (twoδ₁Toδ₀ f g fg h))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant33bd75d3a9dde4150023d242486df51559f5e37a9dc4732db3e91bd00635c87c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant33bd75d3a9dde4150023d242486df51559f5e37a9dc4732db3e91bd00635c87c.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9459e2bb46102c1190587bc78c7940b486c5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
