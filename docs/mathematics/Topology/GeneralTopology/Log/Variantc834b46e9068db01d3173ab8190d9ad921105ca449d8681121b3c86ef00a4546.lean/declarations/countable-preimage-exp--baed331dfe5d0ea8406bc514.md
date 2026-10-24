# countable_preimage_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5efd6738-c79e-5614-2a75-2a366ff23115",
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
  "slug": "countable-preimage-exp--baed331dfe5d0ea8406bc514",
  "source": {
    "blob": "16b7dc54e9d21b24579258a729dcca8bf09cddee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baed331dfe5d0ea8406bc514b1a649f76b26024c9b388e21c00721a9872ac3ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5efd6738-c79e-5614-2a75-2a366ff23115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_preimage_exp {s : Set ℂ} : (exp ⁻¹' s).Countable ↔ s.Countable := by
  refine' ⟨fun hs => _, fun hs => _⟩
  · refine' ((hs.image exp).insert 0).mono _
    rw [Set.image_preimage_eq_inter_range, range_exp, ←Set.diff_eq, ←Set.union_singleton,
        Set.diff_union_self]
    exact Set.subset_union_left _ _
  · rw [← Set.biUnion_preimage_singleton]
    refine' hs.biUnion fun z hz => _
    rcases em (∃ w, exp w = z) with (⟨w, rfl⟩ | hne)
    · simp only [Set.preimage, Set.mem_singleton_iff, exp_eq_exp_iff_exists_int, Set.setOf_exists]
      exact Set.countable_iUnion fun m => Set.countable_singleton _
    · push_neg at hne
      simp [Set.preimage, hne]
#align complex.countable_preimage_exp Complex.countable_preimage_exp

alias ⟨_, _root_.Set.Countable.preimage_cexp⟩ := countable_preimage_exp
#align set.countable.preimage_cexp Set.Countable.preimage_cexp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16b7dc54e9d21b24579258a729dcca8bf09cddee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
