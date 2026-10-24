# isCauSeq_series_of_abv_le_of_isCauSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6fdc7b7-b319-4e50-0c9d-2d3e32dded21",
  "kind": "theorem",
  "lexical_name": "isCauSeq_series_of_abv_le_of_isCauSeq",
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
  "slug": "iscauseq-series-of-abv-le-of-iscauseq--d3ecf3fa20669e5ac82947d6",
  "source": {
    "blob": "92c7b2fe6c8723001dd7872e2fcd2745f9039c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ecf3fa20669e5ac82947d654c9eb520eec96bfcc6ae1dfd1d6d9c8a62819d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6fdc7b7-b319-4e50-0c9d-2d3e32dded21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCauSeq_series_of_abv_le_of_isCauSeq {f : ℕ → β} {g : ℕ → α} (n : ℕ) :
    (∀ m, n ≤ m → abv (f m) ≤ g m) →
      (IsCauSeq abs fun n => ∑ i in range n, g i) → IsCauSeq abv fun n => ∑ i in range n, f i := by
  intro hm hg ε ε0
  cases' hg (ε / 2) (div_pos ε0 (by norm_num)) with i hi
  exists max n i
  intro j ji
  have hi₁ := hi j (le_trans (le_max_right n i) ji)
  have hi₂ := hi (max n i) (le_max_right n i)
  have sub_le :=
    abs_sub_le (∑ k in range j, g k) (∑ k in range i, g k) (∑ k in range (max n i), g k)
  have := add_lt_add hi₁ hi₂
  rw [abs_sub_comm (∑ k in range (max n i), g k), add_halves ε] at this
  refine' lt_of_le_of_lt (le_trans (le_trans _ (le_abs_self _)) sub_le) this
  generalize hk : j - max n i = k
  clear this hi₂ hi₁ hi ε0 ε hg sub_le
  rw [tsub_eq_iff_eq_add_of_le ji] at hk
  rw [hk]
  dsimp only
  clear hk ji j
  induction' k with k' hi
  · simp [abv_zero abv]
  · simp only [Nat.succ_add, Nat.succ_eq_add_one, Finset.sum_range_succ_comm]
    simp only [add_assoc, sub_eq_add_neg]
    refine le_trans (abv_add _ _ _) ?_
    simp only [sub_eq_add_neg] at hi
    refine add_le_add (hm _ (le_add_of_nonneg_of_le (Nat.zero_le _) (le_max_left _ _))) hi
#align is_cau_series_of_abv_le_cau isCauSeq_series_of_abv_le_of_isCauSeq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92c7b2fe6c8723001dd7872e2fcd2745f9039c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
