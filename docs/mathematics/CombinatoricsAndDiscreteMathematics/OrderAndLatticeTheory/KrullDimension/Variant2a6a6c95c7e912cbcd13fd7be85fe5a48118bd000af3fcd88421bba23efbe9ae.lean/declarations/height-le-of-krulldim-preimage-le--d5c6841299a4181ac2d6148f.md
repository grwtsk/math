# height_le_of_krullDim_preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d9a39f4-67a1-54d3-5e3e-45650b674e5e",
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
  "slug": "height-le-of-krulldim-preimage-le--d5c6841299a4181ac2d6148f",
  "source": {
    "blob": "195d2515b644d1f6e6ff172646307bca0295a25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1150,
    "line": 1121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant2a6a6c95c7e912cbcd13fd7be85fe5a48118bd000af3fcd88421bba23efbe9ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5c6841299a4181ac2d6148f37af1bec9a220d0216c0708bc86d98cfd58b5f2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant2a6a6c95c7e912cbcd13fd7be85fe5a48118bd000af3fcd88421bba23efbe9ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d9a39f4-67a1-54d3-5e3e-45650b674e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1121–1150.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant2a6a6c95c7e912cbcd13fd7be85fe5a48118bd000af3fcd88421bba23efbe9ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant2a6a6c95c7e912cbcd13fd7be85fe5a48118bd000af3fcd88421bba23efbe9ae.lean#L1121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `195d2515b644d1f6e6ff172646307bca0295a25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
