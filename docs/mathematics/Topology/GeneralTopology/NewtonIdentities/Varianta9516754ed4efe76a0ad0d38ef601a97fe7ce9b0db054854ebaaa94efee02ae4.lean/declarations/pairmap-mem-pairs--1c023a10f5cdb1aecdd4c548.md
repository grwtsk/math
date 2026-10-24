# pairMap_mem_pairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eb9f26c-9555-a858-59a2-0a5c25d85c36",
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
  "slug": "pairmap-mem-pairs--1c023a10f5cdb1aecdd4c548",
  "source": {
    "blob": "162ff87bb0c867897d0f1efa568abc8e43973c67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c023a10f5cdb1aecdd4c54866c76833fd3a5cef6bdf753f2ddef708a11a94b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eb9f26c-9555-a858-59a2-0a5c25d85c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pairMap_mem_pairs {k : ℕ} (t : Finset σ × σ) (h : t ∈ pairs σ k) :
    pairMap σ t ∈ pairs σ k := by
  rw [mem_pairs] at h ⊢
  rcases (em (t.snd ∈ t.fst)) with h1 | h1
  · rw [pairMap_of_snd_mem_fst σ h1]
    simp only [h1, implies_true, and_true] at h
    simp only [card_erase_of_mem h1, tsub_le_iff_right, mem_erase, ne_eq, h1]
    refine ⟨le_succ_of_le h, ?_⟩
    by_contra h2
    simp only [not_true_eq_false, and_true, not_forall, not_false_eq_true, exists_prop] at h2
    rw [← h2] at h
    exact not_le_of_gt (sub_lt (card_pos.mpr ⟨t.snd, h1⟩) zero_lt_one) h
  · rw [pairMap_of_snd_notMem_fst σ h1]
    simp only [h1] at h
    simp only [card_cons, mem_cons, true_or, implies_true, and_true]
    exact (le_iff_eq_or_lt.mp h.left).resolve_left h.right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `162ff87bb0c867897d0f1efa568abc8e43973c67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
