# firstLeaf_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0eaf1b33-d3d1-ea0a-91e1-d34309eef799",
  "kind": "theorem",
  "lexical_name": "firstLeaf_complete",
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
  "slug": "firstleaf-complete--e0c6ca19f305384cb41cd884",
  "source": {
    "blob": "7fb26810de85a88a3d8e130575d6766542ff52db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0c6ca19f305384cb41cd88492df3640a3a315ba308e565054420db9536a4ab5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eaf1b33-d3d1-ea0a-91e1-d34309eef799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstLeaf_complete {count : ℕ} (disks : Fin count → Disk) (b : Rectangle)
    (indices : List (Fin count)) (hb : b.WellFormed)
    (hex : ∃ i ∈ indices, (disks i).SquaredContainsBox b) :
    ∃ t, firstLeaf disks b indices = some t ∧ check disks t b = true := by
  revert hex
  induction indices with
  | nil =>
      intro hex
      obtain ⟨i, hi, _⟩ := hex
      simp at hi
  | cons i is ih =>
      intro hex
      by_cases hi : b.WellFormed ∧ (disks i).SquaredContainsBox b
      · refine ⟨.leaf i, ?_, ?_⟩
        · simp only [firstLeaf, if_pos hi]
        · simpa only [check, decide_eq_true_eq] using hi
      · obtain ⟨j, hj, hd⟩ := hex
        have hjtail : j ∈ is := by
          rcases List.mem_cons.mp hj with heq | hj'
          · subst j
            exact (hi ⟨hb, hd⟩).elim
          · exact hj'
        obtain ⟨t, ht, hc⟩ := ih ⟨j, hjtail, hd⟩
        exact ⟨t, by simpa only [firstLeaf, if_neg hi] using ht, hc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb26810de85a88a3d8e130575d6766542ff52db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
