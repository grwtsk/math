# pairMap_mem_pairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb0b6e77cc57c7eb931609605f60daae88e3ea7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22a79b26-51a0-0cdc-2ed4-a727b0df966f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06d5dcf0-fd8d-9f5d-01a9-22c0e262a1b5",
  "kind": "theorem",
  "lexical_name": "pairMap_mem_pairs",
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
  "slug": "pairmap-mem-pairs--ae02ff56703813395ce60060",
  "source": {
    "blob": "fb0b6e77cc57c7eb931609605f60daae88e3ea7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae02ff56703813395ce600608fc6f9c5a437ccc88be2dcf199b1f9f4efcf4c59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06d5dcf0-fd8d-9f5d-01a9-22c0e262a1b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pairMap_mem_pairs {k : ℕ} (t : Finset σ × σ) (h : t ∈ pairs σ k) :
    pairMap σ t ∈ pairs σ k := by
  rw [mem_pairs] at h ⊢
  rcases (em (t.snd ∈ t.fst)) with h1 | h1
  · rw [pairMap_of_snd_mem_fst σ h1]
    simp only [h1, implies_true, and_true] at h
    simp only [card_erase_of_mem h1, tsub_le_iff_right, mem_erase, ne_eq, h1]
    refine ⟨le_step h, ?_⟩
    by_contra h2
    simp only [not_true_eq_false, and_true, not_forall, not_false_eq_true, exists_prop] at h2
    rw [← h2] at h
    exact not_le_of_lt (sub_lt (card_pos.mpr ⟨t.snd, h1⟩) zero_lt_one) h
  · rw [pairMap_of_snd_notMem_fst σ h1]
    simp only [h1] at h
    simp only [card_cons, mem_cons, true_or, implies_true, and_true]
    exact (le_iff_eq_or_lt.mp h.left).resolve_left h.right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0b6e77cc57c7eb931609605f60daae88e3ea7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
