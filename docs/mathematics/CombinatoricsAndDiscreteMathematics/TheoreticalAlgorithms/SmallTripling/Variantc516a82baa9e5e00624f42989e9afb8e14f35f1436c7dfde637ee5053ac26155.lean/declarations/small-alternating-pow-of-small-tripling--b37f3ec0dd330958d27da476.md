# small_alternating_pow_of_small_tripling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c683892-e6df-5cc1-ddaf-c2e6a9201b95",
  "kind": "lemma",
  "lexical_name": "small_alternating_pow_of_small_tripling",
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
  "slug": "small-alternating-pow-of-small-tripling--b37f3ec0dd330958d27da476",
  "source": {
    "blob": "f9876d8627462a768583d15ef1cf403e611fe873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37f3ec0dd330958d27da4763b620a5728d759493c989b7ff8ca2b47ccdf6961",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c683892-e6df-5cc1-ddaf-c2e6a9201b95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma small_alternating_pow_of_small_tripling (hm : 3 ≤ m) (hA : #(A ^ 3) ≤ K * #A) (ε : Fin m → ℤ)
    (hε : ∀ i, |ε i| = 1) :
    #((finRange m).map fun i ↦ A ^ ε i).prod ≤ K ^ (3 * (m - 2)) * #A := by
  have hm₀ : m ≠ 0 := by positivity
  have hε₀ i : ε i ≠ 0 := fun h ↦ by simpa [h] using hε i
  obtain rfl | hA₀ := A.eq_empty_or_nonempty
  · simp [hm₀, hε₀]
  have hK₁ : 1 ≤ K :=
    one_le_of_le_mul_right₀ (by positivity)
      (hA.trans' <| by norm_cast; exact card_le_card_pow (by norm_num))
  rw [pow_mul]
  refine inductive_claim_mul hm (fun δ hδ ↦ ?_) ε hε
  simp only [finRange_succ_eq_map, Nat.reduceAdd, isValue, finRange_zero, map_nil, List.map_cons,
    succ_zero_eq_one, succ_one_eq_two, List.prod_cons, prod_nil, mul_one, ← mul_assoc]
  simp only [zero_le_one, abs_eq, Int.reduceNeg, forall_iff_succ, isValue, succ_zero_eq_one,
    succ_one_eq_two, IsEmpty.forall_iff, and_true] at hδ
  have : K ≤ K ^ 3 := le_self_pow₀ hK₁ (by omega)
  have : K ^ 2 ≤ K ^ 3 := by
    gcongr
    · exact hK₁
    · norm_num
  obtain ⟨hδ₀ | hδ₀, hδ₁ | hδ₁, hδ₂ | hδ₂⟩ := hδ <;> simp [hδ₀, hδ₁, hδ₂]
  · simp [pow_succ] at hA
    nlinarith
  · nlinarith [small_pos_pos_neg_mul hA]
  · nlinarith [small_pos_neg_pos_mul hA]
  · nlinarith [small_pos_neg_neg_mul hA]
  · nlinarith [small_neg_pos_pos_mul hA]
  · nlinarith [small_neg_pos_neg_mul hA]
  · nlinarith [small_neg_neg_pos_mul hA]
  · simp [*, pow_succ', ← mul_inv_rev] at hA ⊢
    nlinarith

/-- If `A` is symmetric (`A⁻¹ = A`) and has small tripling, then `A` has small powers,
in the sense that `|A ^ m|` is at most `|A|` times a constant exponential in `m`.

See also `Finset.small_alternating_pow_of_small_tripling` for a version with a weaker constant but
which encompasses non-symmetric sets. -/
@[to_additive
"If `A` is symmetric (`-A = A`) and has small tripling, then `A` has small powers,
in the sense that `|m • A|` is at most `|A|` times a constant exponential in `m`.

See also `Finset.small_alternating_nsmul_of_small_tripling` for a version with a weaker constant but
which encompasses non-symmetric sets."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9876d8627462a768583d15ef1cf403e611fe873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
