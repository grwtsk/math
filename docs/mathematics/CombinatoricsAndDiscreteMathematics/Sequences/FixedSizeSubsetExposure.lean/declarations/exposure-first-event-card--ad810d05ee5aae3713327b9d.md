# exposure_first_event_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e6f0c2a-f4eb-33ae-a38e-624399cb9198",
  "kind": "theorem",
  "lexical_name": "exposure_first_event_card",
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
  "slug": "exposure-first-event-card--ad810d05ee5aae3713327b9d",
  "source": {
    "blob": "9f892475421f04d20782b1e111d51787f8e16876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 112,
    "path": "GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad810d05ee5aae3713327b9dae2c3a7d625b917facfa1ec3e842b8a2feae8541",
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

Occurrence: `result:7e6f0c2a-f4eb-33ae-a38e-624399cb9198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exposure_first_event_card (S : Finset α) (a b : ℕ)
    (A : Finset α) (hA : A ∈ S.powersetCard a)
    (E : Finset α → Prop) :
    ((exposurePairs S a b).filter (fun q => q.1 = A ∧ E q.2)).card =
      (((S \ A).powersetCard b).filter E).card := by
  have hcard :
      (((S \ A).powersetCard b).filter E).card =
        ((exposurePairs S a b).filter
          (fun q => q.1 = A ∧ E q.2)).card := by
    refine Finset.card_bij
      (fun B _ => (⟨A, B⟩ : ExposurePair α)) ?_ ?_ ?_
    · intro B hB
      obtain ⟨hB, hE⟩ := Finset.mem_filter.mp hB
      apply Finset.mem_filter.mpr
      refine ⟨?_, rfl, hE⟩
      exact (mem_exposurePairs S a b ⟨A, B⟩).mpr
        ⟨Finset.mem_powersetCard.mp hA,
          Finset.mem_powersetCard.mp hB⟩
    · intro B hB C hC h
      exact congrArg (fun q : ExposurePair α => q.2) h
    · rintro ⟨C, B⟩ hq
      obtain ⟨hqp, hCA, hE⟩ := Finset.mem_filter.mp hq
      change C = A at hCA
      subst C
      refine ⟨B, Finset.mem_filter.mpr ⟨?_, hE⟩, rfl⟩
      exact Finset.mem_powersetCard.mpr
        ((mem_exposurePairs S a b ⟨A, B⟩).mp hqp).2
  exact hcard.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f892475421f04d20782b1e111d51787f8e16876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
