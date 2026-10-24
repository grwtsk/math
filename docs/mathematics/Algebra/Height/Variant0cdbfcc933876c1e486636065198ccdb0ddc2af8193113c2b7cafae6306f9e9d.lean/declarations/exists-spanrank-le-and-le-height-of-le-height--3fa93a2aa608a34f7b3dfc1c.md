# exists_spanRank_le_and_le_height_of_le_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fae124cc-2638-03fc-349f-516900ca69ce",
  "kind": "lemma",
  "lexical_name": "exists_spanRank_le_and_le_height_of_le_height",
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
  "slug": "exists-spanrank-le-and-le-height-of-le-height--3fa93a2aa608a34f7b3dfc1c",
  "source": {
    "blob": "77c8b8ec335772e7f87acc498acec2e9171eb0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 469,
    "path": "GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fa93a2aa608a34f7b3dfc1c8d58bb7d714b906cde2585852ff78462563dec5f",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fae124cc-2638-03fc-349f-516900ca69ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_spanRank_le_and_le_height_of_le_height [IsNoetherianRing R] (I : Ideal R) (r : ℕ)
    (hr : r ≤ I.height) : ∃ J ≤ I, J.spanRank ≤ r ∧ r ≤ J.height := by
  induction r with
  | zero => simp
  | succ r ih =>
    obtain ⟨J, h₁, h₂, h₃⟩ := ih ((WithTop.coe_le_coe.mpr r.le_succ).trans hr)
    let S := { K | K ∈ J.minimalPrimes ∧ Ideal.height K = r }
    have hS : Set.Finite S := Set.Finite.subset J.finite_minimalPrimes_of_isNoetherianRing
      (fun _ h => h.1)
    have : ¬(I : Set R) ⊆ ⋃ K ∈ hS.toFinset, (K : Set R) := by
      refine (Ideal.subset_union_prime ⊥ ⊥ ?_).not.mpr ?_
      · rintro K hK - -
        rw [Set.Finite.mem_toFinset] at hK
        exact hK.1.isPrime
      · push Not
        intro K hK e
        have := hr.trans (Ideal.height_mono e)
        rw [Set.Finite.mem_toFinset] at hK
        rw [hK.2, ← not_lt] at this
        norm_cast at this
        exact this r.lt_succ_self
    simp_rw [Set.not_subset, Set.mem_iUnion, not_exists, Set.Finite.mem_toFinset] at this
    obtain ⟨x, hx₁, hx₂⟩ := this
    refine ⟨J ⊔ Ideal.span {x}, sup_le h₁ ?_, ?_, ?_⟩
    · rwa [Ideal.span_le, Set.singleton_subset_iff]
    · apply Submodule.spanRank_sup_le_sum_spanRank.trans
      push_cast
      exact add_le_add h₂ ((Submodule.spanRank_span_le_card _).trans (by simp))
    · refine le_iInf₂ (fun p hp ↦ ?_)
      have := hp.isPrime
      rw [← p.height_eq_primeHeight]
      by_cases h : p.height = ⊤
      · exact le_of_le_of_eq le_top h.symm
      have : p.FiniteHeight := ⟨Or.inr h⟩
      have := Ideal.height_mono (le_sup_left.trans hp.le)
      suffices h : (r : ℕ∞) ≠ p.height by
        exact Order.add_one_le_of_lt (lt_of_le_of_ne (h₃.trans this) h)
      intro e
      apply hx₂ p
      · refine ⟨mem_minimalPrimes_of_height_le (le_sup_left.trans hp.le) (e.symm.trans_le h₃),
          e.symm⟩
      · apply hp.le <| Ideal.mem_sup_right <| mem_span_singleton_self x

/-- In a nontrivial commutative ring `R`, the supremum of heights of all ideals is equal to the
Krull dimension of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c8b8ec335772e7f87acc498acec2e9171eb0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
