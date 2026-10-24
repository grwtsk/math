# IsPushout.IsVanKampen.isPullback_of_mono_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5de51920-57e7-718a-e241-f75e16f0f5fe",
  "kind": "theorem",
  "lexical_name": "IsPushout.IsVanKampen.isPullback_of_mono_left",
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
  "slug": "ispushout-isvankampen-ispullback-of-mono-left--61b5e55a2a800f91745ce5e3",
  "source": {
    "blob": "c31826af01923fe4a837bced23dae425ba132592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 199,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61b5e55a2a800f91745ce5e34feafe0fec9939bddd8c16094c432738eab1a51e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5de51920-57e7-718a-e241-f75e16f0f5fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPushout.IsVanKampen.isPullback_of_mono_left [Mono f] {H : IsPushout f g h i}
    (H' : H.IsVanKampen) : IsPullback f g h i :=
  ((H' (𝟙 _) g g (𝟙 Y) (𝟙 _) f (𝟙 _) i (IsKernelPair.id_of_mono f)
      (IsPullback.of_vert_isIso ⟨by simp⟩) H.1.flip ⟨rfl⟩ ⟨by simp⟩).mp
    (IsPushout.of_horiz_isIso ⟨by simp⟩)).1.flip
#align category_theory.is_pushout.is_van_kampen.is_pullback_of_mono_left CategoryTheory.IsPushout.IsVanKampen.isPullback_of_mono_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c31826af01923fe4a837bced23dae425ba132592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
