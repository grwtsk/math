# exposure_spaces_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b7b25e6-45a7-3291-2463-6b5c368c5c35",
  "kind": "theorem",
  "lexical_name": "exposure_spaces_nonempty",
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
  "slug": "exposure-spaces-nonempty--e0341ef243330139633e60fe",
  "source": {
    "blob": "9f892475421f04d20782b1e111d51787f8e16876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 74,
    "path": "GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0341ef243330139633e60fe474ca7c5e37c232f5aa2288aa102d0a765684ce7",
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

Occurrence: `result:2b7b25e6-45a7-3291-2463-6b5c368c5c35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exposure_spaces_nonempty (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) :
    (S.powersetCard (a + b)).Nonempty ∧
      (S.powersetCard a).Nonempty ∧
        ∀ A ∈ S.powersetCard a, ((S \ A).powersetCard b).Nonempty := by
  constructor
  · apply Finset.card_pos.mp
    rw [Finset.card_powersetCard]
    exact Nat.choose_pos hab
  · constructor
    · apply Finset.card_pos.mp
      rw [Finset.card_powersetCard]
      exact Nat.choose_pos (by omega)
    · intro A hA
      obtain ⟨hAS, hAc⟩ := Finset.mem_powersetCard.mp hA
      apply Finset.card_pos.mp
      rw [Finset.card_powersetCard,
        Finset.card_sdiff_of_subset hAS, hAc]
      exact Nat.choose_pos (by omega)

/-- Every first-stage choice leaves the same number of second-stage choices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f892475421f04d20782b1e111d51787f8e16876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
