# Adjunction.isCocontinuous_iff_coverPreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:879c1678-5a50-10b0-2f33-f9fdbad16752",
  "kind": "lemma",
  "lexical_name": "Adjunction.isCocontinuous_iff_coverPreserving",
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
  "slug": "adjunction-iscocontinuous-iff-coverpreserving--e8924f82194bd16a8dcf1d11",
  "source": {
    "blob": "6aa3db1f7bbcd01c46d6a27136857f8519498b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8924f82194bd16a8dcf1d119524413f3f3e7fa4cc0f171ac9dee2dd30e5f9b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:879c1678-5a50-10b0-2f33-f9fdbad16752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Adjunction.isCocontinuous_iff_coverPreserving (adj : F ⊣ G) :
    F.IsCocontinuous J K ↔ CoverPreserving K J G := by
  refine ⟨fun h ↦ ⟨?_⟩, fun h ↦ ⟨?_⟩⟩
  · intro U S hS
    refine J.superset_covering ?_ <| h.cover_lift (K.pullback_stable (adj.counit.app _) hS)
    intro X f hf
    refine ⟨F.obj X, F.map f ≫ adj.counit.app _, adj.unit.app _, hf, by simp⟩
  · intro U S hS
    refine J.superset_covering ?_ (J.pullback_stable (adj.unit.app U) <| h.cover_preserve hS)
    intro X f ⟨Y, g, u, hg, heq⟩
    suffices F.map f = (adj.homEquiv _ _).symm u ≫ g by
      simp [this, S.downward_closed hg]
    simp [← Adjunction.homEquiv_naturality_right_symm, ← heq,
      Adjunction.homEquiv_naturality_left_symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aa3db1f7bbcd01c46d6a27136857f8519498b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
