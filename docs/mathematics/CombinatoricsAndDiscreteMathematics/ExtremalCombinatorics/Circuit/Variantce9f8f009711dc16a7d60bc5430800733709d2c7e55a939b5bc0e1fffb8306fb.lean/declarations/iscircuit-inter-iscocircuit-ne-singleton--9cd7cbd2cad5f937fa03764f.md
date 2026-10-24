# IsCircuit.inter_isCocircuit_ne_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ef81f98-6d54-5e5c-ac08-8a8337e3646b",
  "kind": "lemma",
  "lexical_name": "IsCircuit.inter_isCocircuit_ne_singleton",
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
  "slug": "iscircuit-inter-iscocircuit-ne-singleton--9cd7cbd2cad5f937fa03764f",
  "source": {
    "blob": "d3901a8675ad7f7c3c93f4af2b41779145649b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 622,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cd7cbd2cad5f937fa03764f78d234787d3f7fe44f3c0fc7dae94df9def0f39c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef81f98-6d54-5e5c-ac08-8a8337e3646b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.inter_isCocircuit_ne_singleton (hC : M.IsCircuit C) (hK : M.IsCocircuit K) :
    C ∩ K ≠ {e} := by
  intro he
  have heC : e ∈ C := (he.symm.subset rfl).1
  simp_rw [isCocircuit_iff_minimal_compl_nonspanning, minimal_iff_forall_ssubset, not_not] at hK
  have' hKe := hK.2 (t := K \ {e}) (diff_singleton_ssubset.2 (he.symm.subset rfl).2)
  apply hK.1
  rw [spanning_iff_ground_subset_closure]
  nth_rw 1 [← hKe.closure_eq, diff_diff_eq_sdiff_union]
  · refine (M.closure_subset_closure (subset_union_left (t := C))).trans ?_
    rw [union_assoc, singleton_union, insert_eq_of_mem heC, ← closure_union_congr_right
      (hC.closure_diff_singleton_eq e), union_eq_self_of_subset_right]
    rw [← he, diff_self_inter]
    exact diff_subset_diff_left hC.subset_ground
  rw [← he]
  exact inter_subset_left.trans hC.subset_ground

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3901a8675ad7f7c3c93f4af2b41779145649b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
