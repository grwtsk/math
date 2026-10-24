# lowerTailProbability_le_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b004731c-bfda-62ec-97b3-c5eb6c060f30",
  "kind": "theorem",
  "lexical_name": "lowerTailProbability_le_exponential",
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
  "slug": "lowertailprobability-le-exponential--74225eaab2ab3869e0127a52",
  "source": {
    "blob": "d585c34e73d979b5517cc5c0ebba6107cf40c1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 189,
    "path": "GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74225eaab2ab3869e0127a528c8c1300cfc5c82cd84be14924c067d860e0ed51",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b004731c-bfda-62ec-97b3-c5eb6c060f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerTailProbability_le_exponential (S G : Finset α) (hS : S.Nonempty)
    (k : ℕ) (hk : k ≤ S.card) (q : ℝ) :
    lowerTailProbability S G k q ≤
      Real.exp ((k : ℝ) * (Real.log (1 + ((S \ G).card : ℝ) / S.card) -
        (1 - q) * Real.log 2)) := by
  classical
  let space := S.powersetCard k
  let event := space.filter (fun R => ((R ∩ G).card : ℝ) < q * k)
  let a := (1 - q) * (k : ℝ)
  have hlog : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hpoint (R : Finset α) (hR : R ∈ event) :
      Real.exp (Real.log 2 * a) ≤ (2 : ℝ) ^ (R ∩ (S \ G)).card := by
    obtain ⟨hRspace, hlow⟩ := Finset.mem_filter.mp hR
    obtain ⟨hRS, hRk⟩ := Finset.mem_powersetCard.mp hRspace
    have hcard := intersection_complement_card S G R hRS
    have hcard' : ((R ∩ G).card : ℝ) + (R ∩ (S \ G)).card = k := by
      exact_mod_cast hcard.trans hRk
    have hbad : a ≤ ((R ∩ (S \ G)).card : ℝ) := by dsimp [a]; linarith
    rw [← exp_log_two_mul_nat]
    exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hbad hlog)
  have hsum : (event.card : ℝ) * Real.exp (Real.log 2 * a) ≤
      ∑ R ∈ space, (2 : ℝ) ^ (R ∩ (S \ G)).card := by
    calc
      _ = ∑ _R ∈ event, Real.exp (Real.log 2 * a) := by simp
      _ ≤ ∑ R ∈ event, (2 : ℝ) ^ (R ∩ (S \ G)).card := Finset.sum_le_sum hpoint
      _ ≤ _ := by
        apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
        intro R _ _
        positivity
  have hden : (0 : ℝ) < S.card.choose k := by exact_mod_cast Nat.choose_pos hk
  have hmgf := two_pow_intersection_expect_le S (S \ G) Finset.sdiff_subset hS k hk
  have hmarkov : lowerTailProbability S G k q ≤
      (1 + ((S \ G).card : ℝ) / S.card) ^ k / Real.exp (Real.log 2 * a) := by
    apply (le_div_iff₀ (Real.exp_pos _)).mpr
    change (event.card : ℝ) / (S.card.choose k : ℝ) * Real.exp (Real.log 2 * a) ≤ _
    rw [div_mul_eq_mul_div]
    exact (div_le_div_of_nonneg_right hsum hden.le).trans hmgf
  have hbase : 0 < 1 + ((S \ G).card : ℝ) / S.card := by positivity
  have hpow : (1 + ((S \ G).card : ℝ) / S.card) ^ k =
      Real.exp ((k : ℝ) * Real.log (1 + ((S \ G).card : ℝ) / S.card)) := by
    rw [Real.exp_nat_mul, Real.exp_log hbase]
  rw [hpow, ← Real.exp_sub] at hmarkov
  have heq : (k : ℝ) * Real.log (1 + ((S \ G).card : ℝ) / S.card) - Real.log 2 * a =
      (k : ℝ) * (Real.log (1 + ((S \ G).card : ℝ) / S.card) - (1 - q) * Real.log 2) := by
    dsimp [a]
    ring
  rwa [heq] at hmarkov

/-- A success density at least `1/4` gives the lower-tail estimate required in
Pham–Sauermann Lemma 3.1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d585c34e73d979b5517cc5c0ebba6107cf40c1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
