# height_le_of_krullDim_preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f616cfb9f2df56b034929bc067695713855f0bef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:097f126d-7faa-1f9d-e740-73fdf4d09108",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bdf482a-758a-e754-4304-0210704b7035",
  "kind": "lemma",
  "lexical_name": "height_le_of_krullDim_preimage_le",
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
  "slug": "height-le-of-krulldim-preimage-le--c2f91b63854eaa8704532c86",
  "source": {
    "blob": "f616cfb9f2df56b034929bc067695713855f0bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1142,
    "line": 1113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2f91b63854eaa8704532c865b7d84c0fbfb05c339398ceab466c7c8381ad02a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bdf482a-758a-e754-4304-0210704b7035`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1113–1142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma height_le_of_krullDim_preimage_le (x : α) :
    Order.height x ≤ (m + 1) * Order.height (f x) + m := by
  generalize h' : Order.height (f x) = n
  cases n with | top => simp | coe n =>
    induction n using Nat.strong_induction_on generalizing x with | h n ih =>
    refine height_le_iff.mpr fun p hp ↦ le_of_not_gt fun h_len ↦ ?_
    let i : Fin (p.length + 1) := ⟨p.length - (m + 1), Nat.sub_lt_succ p.length _⟩
    suffices h'' : f (p i) < f x by
      obtain ⟨n', hn'⟩ : ∃ (n' : ℕ), n' = height (f (p i)) := ENat.ne_top_iff_exists.mp
        ((height_mono h''.le).trans_lt (h' ▸ ENat.natCast_lt_top _)).ne
      have h_lt : n' < n := ENat.natCast_lt_natCast.mp
        (h' ▸ hn' ▸ height_strictMono h'' (hn' ▸ ENat.natCast_lt_top _))
      have := (length_le_height_last (p := p.take i)).trans <| ih n' h_lt (p i) hn'.symm
      rw [RelSeries.take_length, ENat.natCast_sub, Nat.cast_add, Nat.cast_one, tsub_le_iff_right,
        add_assoc, add_comm _ (_ + 1), ← add_assoc, ← mul_add_one] at this
      refine not_lt_of_ge ?_ (h_len.trans_le this)
      gcongr
      rwa [← ENat.natCast_one, ← ENat.natCast_add, ENat.natCast_le_natCast]
    refine (f.monotone ((p.monotone (Fin.le_last _)).trans hp)).lt_of_not_ge fun h'' ↦ ?_
    let q' : LTSeries α := p.drop i
    let q : LTSeries (f ⁻¹' {f x}) := ⟨q'.length, fun j ↦ ⟨q' j, le_antisymm
      (f.monotone (le_trans (b := q'.last) (q'.monotone (Fin.le_last _)) (p.last_drop _ ▸ hp)))
      (le_trans (b := f q'.head) (p.head_drop _ ▸ h'')
        (f.monotone (q'.monotone (Fin.zero_le _))))⟩, fun i ↦ q'.step i⟩
    have := (LTSeries.length_le_krullDim q).trans (h (f x))
    simp only [RelSeries.drop_length, Nat.cast_le, tsub_le_iff_right, q', i, q] at this
    have : p.length > m := ENat.natCast_lt_natCast.mp ((le_add_left le_rfl).trans_lt h_len)
    lia

include h in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean#L1113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f616cfb9f2df56b034929bc067695713855f0bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
