# GrothendieckTopology.preservesSheafification_iff_of_adjunctions_of_hasSheafCompose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ae5800a-c84a-8625-3f29-362f17619ef0",
  "kind": "lemma",
  "lexical_name": "GrothendieckTopology.preservesSheafification_iff_of_adjunctions_of_hasSheafCompose",
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
  "slug": "grothendiecktopology-preservessheafification-iff-of-adjunctions-of-hassh--9b440b166eaecf80e6e0690a",
  "source": {
    "blob": "2936abf8d5476b6d1a9caff19d89aa5506d45a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b440b166eaecf80e6e0690af1664652d7d7d3923f81e831160c4c6525e7f00f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ae5800a-c84a-8625-3f29-362f17619ef0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GrothendieckTopology.preservesSheafification_iff_of_adjunctions_of_hasSheafCompose :
    J.PreservesSheafification F ↔ IsIso (sheafComposeNatTrans J F adj₁ adj₂) := by
  rw [J.preservesSheafification_iff_of_adjunctions F adj₁ adj₂,
    NatTrans.isIso_iff_isIso_app]
  apply forall_congr'
  intro P
  rw [← J.W_iff_isIso_map_of_adjunction adj₂, ← J.W_sheafToPreheaf_map_iff_isIso,
    ← sheafComposeNatTrans_fac J F adj₁ adj₂,
    (W _).precomp_iff _ _ (J.W_adj_unit_app adj₂ (P ⋙ F))]

variable [J.PreservesSheafification F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2936abf8d5476b6d1a9caff19d89aa5506d45a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
