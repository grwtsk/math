# decomposition_erase_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96728106ebb6fe1a666c600e42ea8edbb0daa5a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ad2e8db-fbd1-05bd-35c6-2cc07e2d5d75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10ba540e-ad35-3551-984a-f15c73324cdd",
  "kind": "lemma",
  "lexical_name": "decomposition_erase_inf",
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
  "slug": "decomposition-erase-inf--1ec50920862900a6ed990caa",
  "source": {
    "blob": "96728106ebb6fe1a666c600e42ea8edbb0daa5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ec50920862900a6ed990caa7b9358ba906371ca70996688d8e0b2afd37c0b8d",
  "verification": {
    "reference": "docs/verification/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ba540e-ad35-3551-984a-f15c73324cdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma decomposition_erase_inf [DecidableEq (Ideal R)] {I : Ideal R}
    {s : Finset (Ideal R)} (hs : s.inf id = I) :
    ∃ t : Finset (Ideal R), t ⊆ s ∧ t.inf id = I ∧ (∀ ⦃J⦄, J ∈ t → ¬ (t.erase J).inf id ≤ J) := by
  induction s using Finset.strongInductionOn
  rename_i _ s IH
  by_cases H : ∀ J ∈ s, ¬ (s.erase J).inf id ≤ J
  · exact ⟨s, Finset.Subset.rfl, hs, H⟩
  push_neg at H
  obtain ⟨J, hJ, hJ'⟩ := H
  refine (IH (s.erase J) (Finset.erase_ssubset hJ) ?_).imp
    fun t ↦ And.imp_left (fun ht ↦ ht.trans (Finset.erase_subset _ _))
  rw [← Finset.insert_erase hJ] at hs
  simp [← hs, hJ']

open scoped Function -- required for scoped `on` notation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96728106ebb6fe1a666c600e42ea8edbb0daa5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
