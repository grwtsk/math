# Disjoint.symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:132ec8a2-a3d4-f9c5-d9ba-2c57ae33ae34",
  "kind": "theorem",
  "lexical_name": "Disjoint.symm",
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
  "slug": "disjoint-symm--abcf7eec073ea6a089b15e34",
  "source": {
    "blob": "bc45b6850fb6611254bfcbadbc64ef1dc05605c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abcf7eec073ea6a089b15e347184057bcf4ebf77440b9ef4931d038b1149069a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:132ec8a2-a3d4-f9c5-d9ba-2c57ae33ae34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Disjoint.symm (d : Disjoint l₁ l₂) : Disjoint l₂ l₁ := fun _ i₂ i₁ => d i₁ i₂
#align list.disjoint.symm List.Disjoint.symm

#align list.disjoint_comm List.disjoint_comm
#align list.disjoint_left List.disjoint_left
#align list.disjoint_right List.disjoint_right
#align list.disjoint_iff_ne List.disjoint_iff_ne
#align list.disjoint_of_subset_left List.disjoint_of_subset_leftₓ
#align list.disjoint_of_subset_right List.disjoint_of_subset_right
#align list.disjoint_of_disjoint_cons_left List.disjoint_of_disjoint_cons_left
#align list.disjoint_of_disjoint_cons_right List.disjoint_of_disjoint_cons_right
#align list.disjoint_nil_left List.disjoint_nil_left
#align list.disjoint_nil_right List.disjoint_nil_right
#align list.singleton_disjoint List.singleton_disjointₓ
#align list.disjoint_singleton List.disjoint_singleton
#align list.disjoint_append_left List.disjoint_append_leftₓ
#align list.disjoint_append_right List.disjoint_append_right
#align list.disjoint_cons_left List.disjoint_cons_leftₓ
#align list.disjoint_cons_right List.disjoint_cons_right
#align list.disjoint_of_disjoint_append_left_left List.disjoint_of_disjoint_append_left_leftₓ
#align list.disjoint_of_disjoint_append_left_right List.disjoint_of_disjoint_append_left_rightₓ
#align list.disjoint_of_disjoint_append_right_left List.disjoint_of_disjoint_append_right_left
#align list.disjoint_of_disjoint_append_right_right List.disjoint_of_disjoint_append_right_right
#align list.disjoint_take_drop List.disjoint_take_dropₓ

end Disjoint

variable [DecidableEq α]

/-! ### `union` -/


section Union

#align list.nil_union List.nil_union
#align list.cons_union List.cons_unionₓ
#align list.mem_union List.mem_union_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc45b6850fb6611254bfcbadbc64ef1dc05605c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
