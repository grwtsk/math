# countable_preimage_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d9d13f0fff6011a6cb81847fcf67c3014900835",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94737048-d7d4-626c-d8f0-a290095bfc25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b686b5d7-f35e-ed87-2c48-2aef4630acf4",
  "kind": "theorem",
  "lexical_name": "countable_preimage_exp",
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
  "slug": "countable-preimage-exp--94c5e7c6196c81525afe5ae4",
  "source": {
    "blob": "7d9d13f0fff6011a6cb81847fcf67c3014900835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94c5e7c6196c81525afe5ae41a747d1544040c44ba1f107edfcab2d17df7e07e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b686b5d7-f35e-ed87-2c48-2aef4630acf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_preimage_exp {s : Set ℂ} : (exp ⁻¹' s).Countable ↔ s.Countable := by
  refine ⟨fun hs => ?_, fun hs => ?_⟩
  · refine ((hs.image exp).insert 0).mono ?_
    rw [Set.image_preimage_eq_inter_range, range_exp, ← Set.sdiff_eq, ← Set.union_singleton,
        Set.sdiff_union_self]
    exact Set.subset_union_left
  · rw [← Set.biUnion_preimage_singleton]
    refine hs.biUnion fun z hz => ?_
    by_cases! h : ∃ w, exp w = z
    · rcases h with ⟨w, rfl⟩
      simp only [Set.preimage, Set.mem_singleton_iff, exp_eq_exp_iff_exists_int, Set.ofPred_exists]
      exact Set.countable_iUnion fun m => Set.countable_singleton _
    · simp [Set.preimage, h]

alias ⟨_, _root_.Set.Countable.preimage_cexp⟩ := countable_preimage_exp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d9d13f0fff6011a6cb81847fcf67c3014900835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
