# Path.exists_mem_fst_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26541c3d-cc8f-290b-4a74-17ffbcd1e53e",
  "kind": "lemma",
  "lexical_name": "Path.exists_mem_fst_eq",
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
  "slug": "path-exists-mem-fst-eq--a54b00554c7d7c18d21b8b70",
  "source": {
    "blob": "b28fa94005ef9943d584f612403380c8a94c743a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 190,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a54b00554c7d7c18d21b8b70b292be2a2c6a07cd0381fc47409e73e32550cfc0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26541c3d-cc8f-290b-4a74-17ffbcd1e53e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Path.exists_mem_fst_eq (p : Path N) (r : Fin (N + 2)) : ∃ c ∈ p.cells, c.1 = r := by
  let i : ℕ := p.cells.findIdx fun c ↦ r ≤ c.1
  have hi : i < p.cells.length := by
    refine List.findIdx_lt_length_of_exists ⟨p.cells.getLast p.nonempty, ?_⟩
    simp only [List.getLast_mem, p.last_last_row, decide_eq_true_eq, true_and]
    rw [Fin.le_def, Fin.add_def]
    have h := r.isLt
    rw [Nat.lt_succ_iff] at h
    convert h
    simp
  have hig : r ≤ (p.cells[i]).1 := of_decide_eq_true (List.findIdx_getElem (w := hi))
  refine ⟨p.cells[i], List.getElem_mem _, ?_⟩
  refine (hig.lt_or_eq.resolve_left fun h => ?_).symm
  rcases Nat.eq_zero_or_pos i with hi | hi
  · simp only [hi, List.getElem_zero, p.head_first_row, Fin.not_lt_zero] at h
  · suffices r ≤ p.cells[i - 1].1 by
      have hi' : i - 1 < i := by omega
      exact of_decide_eq_false (List.not_of_lt_findIdx hi') this
    have ha : Adjacent p.cells[i - 1] p.cells[i] := by
      convert List.chain'_iff_get.1 p.valid_move_seq (i - 1) ?_
      · simp [Nat.sub_add_cancel hi]
      · omega
    exact ha.le_of_lt h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b28fa94005ef9943d584f612403380c8a94c743a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
