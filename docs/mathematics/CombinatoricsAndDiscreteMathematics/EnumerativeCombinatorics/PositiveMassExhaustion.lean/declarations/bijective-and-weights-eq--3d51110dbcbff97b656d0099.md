# bijective_and_weights_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd7d147-eb90-cd11-153b-da628850067b",
  "kind": "theorem",
  "lexical_name": "bijective_and_weights_eq",
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
  "slug": "bijective-and-weights-eq--3d51110dbcbff97b656d0099",
  "source": {
    "blob": "7d17b523b57ddd2359bf6c4fa98e9eebc3fc0fcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 24,
    "path": "GRWTSK/Combinatorics/Enumerative/PositiveMassExhaustion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d51110dbcbff97b656d0099e1086c4f5f92fd613a5ce96ab803e29222945cd3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/PositiveMassExhaustion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd7d147-eb90-cd11-153b-da628850067b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_and_weights_eq
    {ι α : Type*} [Fintype ι] [Fintype α]
    (mass : α → ℕ) (hmass : ∀ a, 0 < mass a)
    (weight : ι → ℕ) (f : ι → α) (hinj : Function.Injective f)
    (hlower : ∀ i, weight i ≤ mass (f i))
    (hupper : (∑ a, mass a) ≤ ∑ i, weight i) :
    Function.Bijective f ∧ ∀ i, weight i = mass (f i) := by
  classical
  let e : ι ↪ α := ⟨f, hinj⟩
  let S : Finset α := Finset.univ.map e
  have himage : (∑ a ∈ S, mass a) = ∑ i, mass (f i) := by
    simp [S, e]
  have hsub : (∑ i, mass (f i)) ≤ ∑ a, mass a := by
    rw [← himage]
    exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ S)
      (fun a _ _ => Nat.zero_le (mass a))
  have hlow : (∑ i, weight i) ≤ ∑ i, mass (f i) :=
    Finset.sum_le_sum (fun i _ => hlower i)
  constructor
  · refine ⟨hinj, ?_⟩
    intro a
    by_contra hmissing
    have hnot : a ∉ S := by
      intro ha
      obtain ⟨i, _, hi⟩ := Finset.mem_map.mp ha
      exact hmissing ⟨i, hi⟩
    have hadd : (∑ b ∈ insert a S, mass b) ≤ ∑ b, mass b :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _)
        (fun b _ _ => Nat.zero_le (mass b))
    rw [Finset.sum_insert hnot, himage] at hadd
    have hpos := hmass a
    omega
  · intro i
    apply le_antisymm (hlower i)
    by_contra hbad
    have hstrict : weight i < mass (f i) := Nat.lt_of_not_ge hbad
    have hsum : (∑ j, weight j) < ∑ j, mass (f j) :=
      Finset.sum_lt_sum (fun j _ => hlower j) ⟨i, Finset.mem_univ i, hstrict⟩
    omega

/-- In particular the upper bound is forced to be an exact total. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/PositiveMassExhaustion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Enumerative/PositiveMassExhaustion.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d17b523b57ddd2359bf6c4fa98e9eebc3fc0fcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
