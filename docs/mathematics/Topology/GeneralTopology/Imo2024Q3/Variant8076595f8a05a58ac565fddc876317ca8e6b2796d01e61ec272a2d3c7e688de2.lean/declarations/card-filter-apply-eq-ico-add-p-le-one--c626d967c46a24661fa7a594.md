# card_filter_apply_eq_Ico_add_p_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba1e8fecf181c4423292bd14dc46e70c6161d26f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 825,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee8a5a38-176e-e91a-a091-27c0aa4e574d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59f53e6f-721f-e25d-3696-0e0ef21aa5ba",
  "kind": "lemma",
  "lexical_name": "card_filter_apply_eq_Ico_add_p_le_one",
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
  "slug": "card-filter-apply-eq-ico-add-p-le-one--c626d967c46a24661fa7a594",
  "source": {
    "blob": "ba1e8fecf181c4423292bd14dc46e70c6161d26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 841,
    "line": 825,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c626d967c46a24661fa7a594da4f52dbbf3557ad6aba4873ad9ba2dc3f3248ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59f53e6f-721f-e25d-3696-0e0ef21aa5ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 825–841.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_filter_apply_eq_Ico_add_p_le_one (n : ℕ) {j : ℕ} (hjs : Small a j) :
    #{i ∈ Finset.Ico n (n + p a n) | a i = j} ≤ 1 := by
  have h : IsLeast (pSet a n) (p a n) := isLeast_csInf (hc.nonempty_pSet n)
  simp only [IsLeast, pSet, Set.mem_setOf_eq, mem_lowerBounds, forall_exists_index, and_imp,
    Finset.mem_Ico] at h
  rw [Finset.card_le_one_iff]
  intro x y hx hy
  simp only [Finset.mem_filter, Finset.mem_Ico] at hx hy
  rcases lt_trichotomy x y with hxy | rfl | hxy
  · replace h := h.2 (y - n) x hx.1.1 (by omega) (hx.2 ▸ hjs)
    rw [show n + (y - n) = y by omega, hx.2, hy.2] at h
    omega
  · rfl
  · replace h := h.2 (x - n) y hy.1.1 (by omega) (hy.2 ▸ hjs)
    rw [show n + (x - n) = x by omega, hx.2, hy.2] at h
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean#L825).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1e8fecf181c4423292bd14dc46e70c6161d26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
