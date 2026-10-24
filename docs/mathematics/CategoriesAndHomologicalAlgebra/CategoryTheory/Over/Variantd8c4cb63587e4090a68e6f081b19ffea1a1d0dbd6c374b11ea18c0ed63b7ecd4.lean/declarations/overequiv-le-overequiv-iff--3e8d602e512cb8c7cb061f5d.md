# overEquiv_le_overEquiv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7825016f-2c41-3afc-33d5-8ecb8b6783c0",
  "kind": "lemma",
  "lexical_name": "overEquiv_le_overEquiv_iff",
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
  "slug": "overequiv-le-overequiv-iff--3e8d602e512cb8c7cb061f5d",
  "source": {
    "blob": "b7944f8102be90011ddb49accc6d9d6094b9bcf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e8d602e512cb8c7cb061f5d7fffb476e8b93e6dc75f892287ce4608a8bd7868",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7825016f-2c41-3afc-33d5-8ecb8b6783c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma overEquiv_le_overEquiv_iff {X : C} {Y : Over X} (R₁ R₂ : Sieve Y) :
    R₁.overEquiv Y ≤ R₂.overEquiv Y ↔ R₁ ≤ R₂ := by
  refine ⟨fun h ↦ ?_, fun h ↦ Sieve.functorPushforward_monotone _ _ h⟩
  replace h : (overEquiv Y).symm (R₁.overEquiv Y) ≤ (overEquiv Y).symm (R₂.overEquiv Y) :=
    Sieve.functorPullback_monotone _ _ h
  simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7944f8102be90011ddb49accc6d9d6094b9bcf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
