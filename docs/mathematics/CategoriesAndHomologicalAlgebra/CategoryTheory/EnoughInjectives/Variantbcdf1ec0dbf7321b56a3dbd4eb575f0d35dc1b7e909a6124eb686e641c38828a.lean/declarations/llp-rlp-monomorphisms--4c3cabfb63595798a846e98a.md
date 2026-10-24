# llp_rlp_monomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c7d0aa6-d104-1742-268d-e5815760f7c4",
  "kind": "lemma",
  "lexical_name": "llp_rlp_monomorphisms",
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
  "slug": "llp-rlp-monomorphisms--4c3cabfb63595798a846e98a",
  "source": {
    "blob": "e3bdc9953f13dbbffdd6cc937da96991022bbb99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 352,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c3cabfb63595798a846e98aaee2e70822f8a8cd2f0733a6bd1ceaf1bf93b67c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c7d0aa6-d104-1742-268d-e5815760f7c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma llp_rlp_monomorphisms (hG : IsSeparator G) :
    (monomorphisms C).rlp.llp = monomorphisms C := by
  refine le_antisymm ?_ (le_llp_rlp _)
  rw [← generatingMonomorphisms_rlp hG, llp_rlp_of_hasSmallObjectArgument]
  trans (transfiniteCompositions.{w} (coproducts.{w} (monomorphisms C)).pushouts).retracts
  · apply retracts_monotone
    apply transfiniteCompositions_monotone
    apply pushouts_monotone
    apply coproducts_monotone
    apply generatingMonomorphisms_le_monomorphisms
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3bdc9953f13dbbffdd6cc937da96991022bbb99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
