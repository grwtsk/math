# Ideal.height_le_spanRank_toENat_of_mem_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cadb0dd8-b717-49d9-12ca-a1b8f2b62283",
  "kind": "lemma",
  "lexical_name": "Ideal.height_le_spanRank_toENat_of_mem_minimalPrimes",
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
  "slug": "ideal-height-le-spanrank-toenat-of-mem-minimalprimes--937ab5e4144b9b5c8da8af03",
  "source": {
    "blob": "94eba5d2ebfd024e76812a0c01883d73bfef1add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 193,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937ab5e4144b9b5c8da8af037b0c4abe8c105480393884f5741a5f3aeba17774",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cadb0dd8-b717-49d9-12ca-a1b8f2b62283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma Ideal.height_le_spanRank_toENat_of_mem_minimalPrimes
    (I : Ideal R) (p : Ideal R) (hp : p ∈ I.minimalPrimes) :
    p.height ≤ I.spanRank.toENat := by
  classical
  rw [I.spanRank_toENat_eq_iInf_finset_card, le_iInf_iff]
  rintro ⟨s, (rfl : span s = I)⟩
  induction hn : s.card using Nat.strong_induction_on generalizing R with
  | h n H =>
    replace hn : s.card ≤ n := hn.le
    have := hp.isPrime
    cases n with
    | zero =>
      rw [ENat.natCast_zero, nonpos_iff_eq_zero, height_eq_zero_iff, minimalPrimes]
      simp_all
    | succ n =>
      wlog hR : ∃ (_ : IsLocalRing R), p = maximalIdeal R
      · rw [← Localization.AtPrime.under_maximalIdeal (I := p)] at hp ⊢
        rw [IsLocalization.height_under p.primeCompl]
        rw [← Set.mem_preimage, ← IsLocalization.minimalPrimes_map p.primeCompl, map_span] at hp
        exact this _ (s.image (algebraMap R (Localization p.primeCompl))) (by simpa using hp)
          inferInstance _ H (Finset.card_image_le.trans hn) ⟨inferInstance, rfl⟩
      obtain ⟨_, rfl⟩ := hR
      simp_rw [height_le_iff_covBy, ENat.natCast_add, ENat.natCast_one, ENat.lt_natCast_add_one_iff]
      intro q hq hpq hq'
      obtain ⟨x, s', hxs', rfl, hxq⟩ : ∃ x s', x ∉ s' ∧ s = insert x s' ∧ x ∉ q := by
        have : ¬(s : Set R) ⊆ q := by
          rw [← span_le]
          exact fun e ↦ lt_irrefl _ ((hp.2 ⟨hq, e⟩ hpq.le).trans_lt hpq)
        obtain ⟨x, hxt, hxq⟩ := Set.not_subset.mp this
        exact ⟨x, _, fun e ↦ (Finset.mem_erase.mp e).1 rfl, (Finset.insert_erase hxt).symm, hxq⟩
      have : maximalIdeal R ≤ (q ⊔ span {x}).radical := by
        rw [radical_eq_sInf, le_sInf_iff]
        exact fun J ⟨hJ, hJ'⟩ ↦ by_contra fun h ↦ hq' J hJ' ((SetLike.lt_iff_le_and_exists.mpr
          ⟨le_sup_left, x, mem_sup_right (mem_span_singleton_self _), hxq⟩).trans_le hJ)
          ((le_maximalIdeal hJ'.ne_top).lt_of_not_ge h)
      have h : (s' : Set R) ⊆ (q ⊔ span {x}).radical := by
        have := hp.le.trans this
        rw [span_le, Finset.coe_insert, Set.insert_subset_iff] at this
        exact this.2
      obtain ⟨t, ht, hspan⟩ := exists_subset_radical_span_sup_of_subset_radical_sup _ _ _ h
      let t := Finset.univ.image t
      suffices hq : q ∈ (span t).minimalPrimes from
        have tcard : t.card ≤ n := Nat.le_of_lt_succ ((Finset.card_image_le.trans_lt <| by
          simpa using Finset.card_lt_card (Finset.ssubset_insert hxs')).trans_le hn)
        (H _ (tcard.trans_lt n.lt_succ_self) q t hq rfl).trans (by norm_cast)
      rw [Finset.coe_insert] at hp
      convert! mem_minimalPrimes_span_of_mem_minimalPrimes_span_insert hpq _ _ hp _ ht ?_
      · simp [t]
      refine hspan.trans <| radical_mono ?_
      rw [← Set.union_singleton, span_union]

@[deprecated (since := "2026-04-01")] alias Ideal.height_le_spanRank_toENat_of_mem_minimal_primes :=
    Ideal.height_le_spanRank_toENat_of_mem_minimalPrimes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94eba5d2ebfd024e76812a0c01883d73bfef1add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
