# invariantCardinalRank_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65493c948d8df35767d589c65756d0e33046b8681c5f5d00c6de10087ca0bfd4",
  "kind": "instance",
  "lexical_name": "invariantCardinalRank_comap",
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
  "slug": "invariantcardinalrank-comap--4781d601ca454439a43ca583",
  "source": {
    "blob": "c57f969e1bbe23dff645282afa114a88f8dc0148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 348,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantaded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4781d601ca454439a43ca58371c96e78ed7b69438629ae7f806c5dcd0906e192",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantaded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65493c948d8df35767d589c65756d0e33046b8681c5f5d00c6de10087ca0bfd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance invariantCardinalRank_comap (M : Matroid β) [InvariantCardinalRank M] (f : α → β) :
    InvariantCardinalRank (M.comap f) := by
  refine ⟨fun I J X hI hJ ↦ ?_⟩
  obtain ⟨hI, hfI, hIX⟩ := comap_isBasis_iff.1 hI
  obtain ⟨hJ, hfJ, hJX⟩ := comap_isBasis_iff.1 hJ
  rw [← lift_inj.{u,v}, ← mk_image_eq_of_injOn_lift _ _ (hfI.mono diff_subset),
    ← mk_image_eq_of_injOn_lift _ _ (hfJ.mono diff_subset), lift_inj, hfI.image_diff,
    hfJ.image_diff, ← diff_union_diff_cancel inter_subset_left (image_inter_subset f I J),
    inter_comm, diff_inter_self_eq_diff, mk_union_of_disjoint, hI.cardinalMk_diff_comm hJ,
    ← diff_union_diff_cancel inter_subset_left (image_inter_subset f J I), inter_comm,
    diff_inter_self_eq_diff, mk_union_of_disjoint, inter_comm J I] <;>
  exact disjoint_sdiff_left.mono_right (diff_subset.trans inter_subset_left)

end Instances

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantaded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantaded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57f969e1bbe23dff645282afa114a88f8dc0148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
