# exposure_union_fiber_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0b345aa-4464-4ad5-7b0f-1aa95eee9b3b",
  "kind": "theorem",
  "lexical_name": "exposure_union_fiber_card",
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
  "slug": "exposure-union-fiber-card--6f25bb5d2628cf2e0efb9ab8",
  "source": {
    "blob": "9f892475421f04d20782b1e111d51787f8e16876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 148,
    "path": "GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f25bb5d2628cf2e0efb9ab890946927ec437d5c404fcf2bffa4fa4faa9ab1d0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0b345aa-4464-4ad5-7b0f-1aa95eee9b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exposure_union_fiber_card (S : Finset α) (a b : ℕ)
    (R : Finset α) (hR : R ∈ S.powersetCard (a + b)) :
    ((exposurePairs S a b).filter (fun q => pairUnion q = R)).card =
      (a + b).choose a := by
  obtain ⟨hRS, hRc⟩ := Finset.mem_powersetCard.mp hR
  have hcard :
      (R.powersetCard a).card =
        ((exposurePairs S a b).filter
          (fun q => pairUnion q = R)).card := by
    refine Finset.card_bij
      (fun A _ => (⟨A, R \ A⟩ : ExposurePair α)) ?_ ?_ ?_
    · intro A hA
      obtain ⟨hAR, hAc⟩ := Finset.mem_powersetCard.mp hA
      apply Finset.mem_filter.mpr
      constructor
      · apply (mem_exposurePairs S a b ⟨A, R \ A⟩).mpr
        refine ⟨⟨hAR.trans hRS, hAc⟩, ⟨?_, ?_⟩⟩
        · intro x hx
          obtain ⟨hxR, hxA⟩ := Finset.mem_sdiff.mp hx
          exact Finset.mem_sdiff.mpr ⟨hRS hxR, hxA⟩
        · rw [Finset.card_sdiff_of_subset hAR, hRc, hAc]
          omega
      · change A ∪ (R \ A) = R
        rw [Finset.union_comm, Finset.sdiff_union_of_subset hAR]
    · intro A hA B hB h
      exact congrArg (fun q : ExposurePair α => q.1) h
    · intro q hq
      obtain ⟨hqp, hqu⟩ := Finset.mem_filter.mp hq
      obtain ⟨⟨_, hAc⟩, _⟩ :=
        (mem_exposurePairs S a b q).mp hqp
      have hAR : q.1 ⊆ R := by
        intro x hx
        have hxU : x ∈ pairUnion q :=
          Finset.mem_union.mpr (Or.inl hx)
        exact hqu ▸ hxU
      have hsecond : R \ q.1 = q.2 := by
        rw [← hqu]
        exact Finset.union_sdiff_cancel_left (exposure_disjoint hqp)
      refine ⟨q.1, Finset.mem_powersetCard.mpr ⟨hAR, hAc⟩, ?_⟩
      exact Sigma.ext rfl (heq_of_eq hsecond)
  calc
    ((exposurePairs S a b).filter
        (fun q => pairUnion q = R)).card =
        (R.powersetCard a).card := hcard.symm
    _ = (a + b).choose a := by
      rw [Finset.card_powersetCard, hRc]

/-- Unnormalized pushforward identity in any additive commutative monoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f892475421f04d20782b1e111d51787f8e16876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
