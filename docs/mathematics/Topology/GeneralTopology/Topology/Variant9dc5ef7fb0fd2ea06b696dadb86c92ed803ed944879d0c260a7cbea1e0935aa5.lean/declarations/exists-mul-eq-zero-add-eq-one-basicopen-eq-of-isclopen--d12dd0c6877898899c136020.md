# exists_mul_eq_zero_add_eq_one_basicOpen_eq_of_isClopen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "785e3ed3c72359e96d30ee598be8c3e59e4145f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1001,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f253a07d-7915-7906-dd5b-3ec674102952",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a9e77d6-5888-f172-5b80-147a27d13025",
  "kind": "lemma",
  "lexical_name": "exists_mul_eq_zero_add_eq_one_basicOpen_eq_of_isClopen",
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
  "slug": "exists-mul-eq-zero-add-eq-one-basicopen-eq-of-isclopen--d12dd0c6877898899c136020",
  "source": {
    "blob": "785e3ed3c72359e96d30ee598be8c3e59e4145f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1035,
    "line": 1001,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d12dd0c6877898899c136020a69462f74b545bac339ac424a43f8f8056dc2dfd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a9e77d6-5888-f172-5b80-147a27d13025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1001–1035.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mul_eq_zero_add_eq_one_basicOpen_eq_of_isClopen {s : Set (PrimeSpectrum R)}
    (hs : IsClopen s) : ∃ e f : R, e * f = 0 ∧ e + f = 1 ∧ s = basicOpen e ∧ sᶜ = basicOpen f := by
  cases subsingleton_or_nontrivial R
  · refine ⟨0, 0, ?_, ?_, ?_, ?_⟩ <;> apply Subsingleton.elim
  obtain ⟨I, hI, hI'⟩ := isCompact_isOpen_iff_ideal.mp ⟨hs.1.isCompact, hs.2⟩
  obtain ⟨J, hJ, hJ'⟩ := isCompact_isOpen_iff_ideal.mp
    ⟨hs.2.isClosed_compl.isCompact, hs.1.isOpen_compl⟩
  simp only [compl_eq_iff_isCompl, ← eq_compl_iff_isCompl, compl_compl] at hI' hJ'
  have : I * J ≤ nilradical R := by
    refine Ideal.radical_le_radical_iff.mp (le_of_eq ?_)
    rw [← zeroLocus_eq_iff, Ideal.zero_eq_bot, zeroLocus_bot,
      zeroLocus_mul, hI', hJ', Set.compl_union_self]
  obtain ⟨n, hn⟩ := Ideal.exists_pow_le_of_le_radical_of_fg this (Submodule.FG.mul hI hJ)
  have hnz : n ≠ 0 := by rintro rfl; simp at hn
  rw [mul_pow, Ideal.zero_eq_bot] at hn
  have : I ^ n ⊔ J ^ n = ⊤ := by
    rw [eq_top_iff, ← Ideal.span_pow_eq_top (I ∪ J : Set R) _ n, Ideal.span_le, Set.image_union,
      Set.union_subset_iff]
    constructor
    · rintro _ ⟨x, hx, rfl⟩; exact Ideal.mem_sup_left (Ideal.pow_mem_pow hx n)
    · rintro _ ⟨x, hx, rfl⟩; exact Ideal.mem_sup_right (Ideal.pow_mem_pow hx n)
    · rw [Ideal.span_union, Ideal.span_eq, Ideal.span_eq, ← zeroLocus_empty_iff_eq_top,
        zeroLocus_sup, hI', hJ', Set.compl_inter_self]
  rw [Ideal.eq_top_iff_one, Submodule.mem_sup] at this
  obtain ⟨x, hx, y, hy, add⟩ := this
  have mul : x * y = 0 := hn (Ideal.mul_mem_mul hx hy)
  have : s = basicOpen x := by
    refine subset_antisymm ?_ ?_
    · rw [← hJ', basicOpen_eq_zeroLocus_of_mul_add _ _ mul add]
      exact zeroLocus_anti_mono (Set.singleton_subset_iff.mpr <| Ideal.pow_le_self hnz hy)
    · rw [basicOpen_eq_zeroLocus_compl, Set.compl_subset_comm, ← hI']
      exact zeroLocus_anti_mono (Set.singleton_subset_iff.mpr <| Ideal.pow_le_self hnz hx)
  refine ⟨x, y, mul, add, this, ?_⟩
  rw [this, basicOpen_eq_zeroLocus_of_mul_add _ _ mul add, basicOpen_eq_zeroLocus_compl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean#L1001).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785e3ed3c72359e96d30ee598be8c3e59e4145f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
