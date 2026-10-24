# card_preimage_eq_sum_card_image_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59b84f90-54d4-504a-4f1d-043c73badddc",
  "kind": "theorem",
  "lexical_name": "card_preimage_eq_sum_card_image_eq",
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
  "slug": "card-preimage-eq-sum-card-image-eq--b98e8bbe468d74abea15e4ed",
  "source": {
    "blob": "5dce07d74f4a103cfe1e43881daef0662276159b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b98e8bbe468d74abea15e4ed62dd9a17b2e63ba85a4a72a4538f54bc639edf8b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59b84f90-54d4-504a-4f1d-043c73badddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_preimage_eq_sum_card_image_eq {M : Type*} {f : ι → M} {s : Finset M}
    (hb : ∀ b ∈ s, Set.Finite {a | f a = b}) :
    Nat.card (f⁻¹' s) = ∑ b ∈ s, Nat.card {a // f a = b} := by
  classical
  -- `t = s ∩ Set.range f` as a `Finset`
  let t := (Set.finite_coe_iff.mp (Finite.Set.finite_inter_of_left ↑s (Set.range f))).toFinset
  rw [show Nat.card (f⁻¹' s) = Nat.card (f⁻¹' t) by simp [t]]
  rw [show ∑ b ∈ s, Nat.card {a //f a = b} = ∑ b ∈ t, Nat.card {a | f a = b} by
    exact (Finset.sum_subset (by simp [t]) (by aesop)).symm]
  have ht : Set.Finite (f⁻¹' t) := Set.Finite.preimage' (finite_toSet t) (by aesop)
  rw [Nat.card_eq_card_finite_toFinset ht, Finset.card_eq_sum_card_image (f := f)]
  refine Finset.sum_congr ?_ fun m hm ↦ ?_
  · simpa [← Finset.coe_inj, t] using Set.image_preimage_eq_inter_range
  · rw [Nat.card_eq_card_finite_toFinset (hb _ (by aesop))]
    suffices {a | f a = m} ⊆ ht.toFinset from
      congr_arg (Finset.card ·) (Finset.ext_iff.mpr fun a ↦ by simpa using fun h ↦ this h)
    intro _ h
    simpa using by rwa [h]

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dce07d74f4a103cfe1e43881daef0662276159b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
