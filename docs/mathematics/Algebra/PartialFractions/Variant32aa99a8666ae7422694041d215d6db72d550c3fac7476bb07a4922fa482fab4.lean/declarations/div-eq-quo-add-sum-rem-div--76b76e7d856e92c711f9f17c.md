# div_eq_quo_add_sum_rem_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:531c67f1-1b68-8d08-ff81-2b6c78b026e6",
  "kind": "theorem",
  "lexical_name": "div_eq_quo_add_sum_rem_div",
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
  "slug": "div-eq-quo-add-sum-rem-div--76b76e7d856e92c711f9f17c",
  "source": {
    "blob": "416034aac43c6be32ae24481b69d5266a92c46b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 97,
    "path": "GRWTSK/Algebra/PartialFractions/Variant32aa99a8666ae7422694041d215d6db72d550c3fac7476bb07a4922fa482fab4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b76e7d856e92c711f9f17c737ca9c7155acc56cc78618159e8517280d0e755",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variant32aa99a8666ae7422694041d215d6db72d550c3fac7476bb07a4922fa482fab4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:531c67f1-1b68-8d08-ff81-2b6c78b026e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_eq_quo_add_sum_rem_div (f : R[X]) {ι : Type*} {g : ι → R[X]} {s : Finset ι}
    (hg : ∀ i ∈ s, (g i).Monic) (hcop : Set.Pairwise ↑s fun i j => IsCoprime (g i) (g j)) :
    ∃ (q : R[X]) (r : ι → R[X]),
      (∀ i ∈ s, (r i).degree < (g i).degree) ∧
        ((↑f : K) / ∏ i ∈ s, ↑(g i)) = ↑q + ∑ i ∈ s, (r i : K) / (g i : K) := by
  classical
  induction s using Finset.induction_on generalizing f with
  | empty =>
    refine ⟨f, fun _ : ι => (0 : R[X]), fun i => ?_, by simp⟩
    rintro ⟨⟩
  | insert a b hab Hind => ?_
  obtain ⟨q₀, r₁, r₂, hdeg₁, _, hf : (↑f : K) / _ = _⟩ :=
    div_eq_quo_add_rem_div_add_rem_div R K f
      (hg a (b.mem_insert_self a) : Monic (g a))
      (monic_prod_of_monic _ _ fun i hi => hg i (Finset.mem_insert_of_mem hi) :
        Monic (∏ i ∈ b, g i))
      (IsCoprime.prod_right fun i hi =>
        hcop (Finset.mem_coe.2 (b.mem_insert_self a))
          (Finset.mem_coe.2 (Finset.mem_insert_of_mem hi)) (by rintro rfl; exact hab hi))
  obtain ⟨q, r, hrdeg, IH⟩ :=
    Hind _ (fun i hi => hg i (Finset.mem_insert_of_mem hi))
      (Set.Pairwise.mono (Finset.coe_subset.2 fun i hi => Finset.mem_insert_of_mem hi) hcop)
  refine ⟨q₀ + q, fun i => if i = a then r₁ else r i, ?_, ?_⟩
  · intro i
    dsimp only
    split_ifs with h1
    · cases h1
      intro
      exact hdeg₁
    · intro hi
      exact hrdeg i (Finset.mem_of_mem_insert_of_ne hi h1)
  norm_cast at hf IH ⊢
  rw [Finset.prod_insert hab, hf, IH, Finset.sum_insert hab, if_pos rfl]
  trans (↑(q₀ + q : R[X]) : K) + (↑r₁ / ↑(g a) + ∑ i ∈ b, (r i : K) / (g i : K))
  · push_cast
    ring
  congr 2
  refine Finset.sum_congr rfl fun x hxb => ?_
  rw [if_neg]
  rintro rfl
  exact hab hxb

end NDenominators
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variant32aa99a8666ae7422694041d215d6db72d550c3fac7476bb07a4922fa482fab4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variant32aa99a8666ae7422694041d215d6db72d550c3fac7476bb07a4922fa482fab4.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416034aac43c6be32ae24481b69d5266a92c46b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
