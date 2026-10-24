# partition_currentPart_quarter_lowerTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b8efe5b-9e59-a3f0-0176-fa5b7050f960",
  "kind": "theorem",
  "lexical_name": "partition_currentPart_quarter_lowerTail",
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
  "slug": "partition-currentpart-quarter-lowertail--3439ea42b891e31213e32a87",
  "source": {
    "blob": "52db35a93bcc11c11cd4b6a603f8e487c9908a0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 104,
    "path": "GRWTSK/Combinatorics/Sequences/BalancedPartitionTails.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3439ea42b891e31213e32a8734c013de5d37cacc34b6cbd7db019dafd856ec59",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b8efe5b-9e59-a3f0-0176-fa5b7050f960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partition_currentPart_quarter_lowerTail (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (hpos : ∀ j, 0 < sizes j)
    (a : A) (G : Finset A) (hG : G ⊆ (Finset.univ : Finset A).erase a)
    (hdensity : (((Fintype.card A - 1 : ℕ) : ℝ) / 4) ≤ G.card)
    (K : ℝ) (hK : ∀ j, K ≤ ((sizes j - 1 : ℕ) : ℝ)) :
    partitionProbabilityReal sizes (currentPartCountBad sizes a G (1 / 8)) ≤
      Real.exp (-K / 32) := by
  apply partition_event_le_of_conditional sizes hsum hpos a
  intro i
  have ha : a ∉ G := fun h => Finset.notMem_erase a Finset.univ (hG h)
  rw [conditional_currentPart_probability_eq_lowerTail sizes hsum a i (hpos i) G ha]
  by_cases hpopulation : ((Finset.univ : Finset A).erase a).Nonempty
  · have hdensity' : ((((Finset.univ : Finset A).erase a).card : ℝ) / 4) ≤ G.card := by
      simpa only [Finset.card_erase_of_mem (Finset.mem_univ a), Finset.card_univ] using hdensity
    have htail := lowerTailProbability_quarter ((Finset.univ : Finset A).erase a) G hG
      hpopulation (sizes i - 1) (remainder_size_le_population sizes hsum a i (hpos i)) hdensity'
    exact htail.trans (Real.exp_le_exp.mpr (by linarith [hK i]))
  · have hempty := Finset.not_nonempty_iff_eq_empty.mp hpopulation
    rw [hempty, lowerTailProbability_empty]
    exact (Real.exp_pos _).le

/-- The corresponding three-quarter-density estimate, with the source's
one-half threshold and the proved rate `exp(-K/24)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/BalancedPartitionTails.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52db35a93bcc11c11cd4b6a603f8e487c9908a0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
