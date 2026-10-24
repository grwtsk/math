# partition_event_le_of_conditional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50b20728-5df8-ed1e-ff57-740eb52ca70a",
  "kind": "theorem",
  "lexical_name": "partition_event_le_of_conditional",
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
  "slug": "partition-event-le-of-conditional--5da6af4314a797099037ecd1",
  "source": {
    "blob": "24401f5ffc50d7effa3969bf56c7fa08fedf77dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 284,
    "path": "GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5da6af4314a797099037ecd1c55683baaefc0ed6bf38a86241590f4638364cce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50b20728-5df8-ed1e-ff57-740eb52ca70a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partition_event_le_of_conditional (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (hpos : ∀ j, 0 < sizes j) (a : A)
    (E : Partition (A := A) sizes → Prop) (c : ℝ)
    (hconditional : ∀ i, conditionedEventProbabilityReal sizes a i E ≤ c) :
    partitionProbabilityReal sizes E ≤ c := by
  have hpart : (0 : ℝ) < Fintype.card (Partition (A := A) sizes) := by
    exact_mod_cast Fintype.card_pos_iff.mpr (partition_nonempty sizes hsum)
  have hcount (i : Fin m) :
      (Fintype.card {Q : ConditionedPartition sizes a i // E Q.val} : ℝ) ≤
        c * Fintype.card (ConditionedPartition sizes a i) := by
    have hi : (0 : ℝ) < Fintype.card (ConditionedPartition sizes a i) := by
      exact_mod_cast Fintype.card_pos_iff.mpr
        (conditionedPartition_nonempty sizes hsum a i (hpos i))
    exact (div_le_iff₀ hi).mp (hconditional i)
  have hsumcounts := Finset.sum_le_sum (s := Finset.univ) (fun i _ => hcount i)
  rw [← Finset.mul_sum] at hsumcounts
  unfold partitionProbabilityReal
  apply (div_le_iff₀ hpart).mpr
  rw [event_exposure_card sizes a E, partition_exposure_card sizes a, Nat.cast_sum, Nat.cast_sum]
  exact hsumcounts

end
end GRWTSK.ConditionalPartitionExposure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24401f5ffc50d7effa3969bf56c7fa08fedf77dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
