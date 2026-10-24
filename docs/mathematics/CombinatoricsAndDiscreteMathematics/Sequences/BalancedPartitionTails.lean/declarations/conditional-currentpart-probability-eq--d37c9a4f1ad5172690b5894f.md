# conditional_currentPart_probability_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c81fc1c-352a-5855-6d71-9a6b0d0634fb",
  "kind": "theorem",
  "lexical_name": "conditional_currentPart_probability_eq",
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
  "slug": "conditional-currentpart-probability-eq--d37c9a4f1ad5172690b5894f",
  "source": {
    "blob": "52db35a93bcc11c11cd4b6a603f8e487c9908a0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 55,
    "path": "GRWTSK/Combinatorics/Sequences/BalancedPartitionTails.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d37c9a4f1ad5172690b5894f841aaa805958d6dedfca100398bd593e634f8e87",
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

Occurrence: `result:1c81fc1c-352a-5855-6d71-9a6b0d0634fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditional_currentPart_probability_eq (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (a : A) (i : Fin m) (hi : 0 < sizes i)
    (G : Finset A) (ha : a ∉ G) (q : ℝ) :
    conditionedEventProbabilityReal sizes a i (currentPartCountBad sizes a G q) =
      (((((Finset.univ : Finset A).erase a).powersetCard (sizes i - 1)).filter
        (fun R => ((R ∩ G).card : ℝ) < q * ((sizes i - 1 : ℕ) : ℝ))).card : ℝ) /
          ((((Finset.univ : Finset A).erase a).powersetCard (sizes i - 1)).card : ℝ) := by
  have hcard : Fintype.card {P : ConditionedPartition sizes a i //
        currentPartCountBad sizes a G q P.val} =
      Fintype.card {P : ConditionedPartition sizes a i //
        ((remainder P ∩ G).card : ℝ) < q * ((sizes i - 1 : ℕ) : ℝ)} := by
    apply Fintype.card_congr
    apply Equiv.subtypeEquivRight
    intro P
    unfold currentPartCountBad
    rw [P.property, remainder_inter_eq P G ha]
  unfold conditionedEventProbabilityReal
  rw [hcard]
  exact conditional_event_probability_real sizes hsum a i hi
    (fun R => ((R ∩ G).card : ℝ) < q * ((sizes i - 1 : ℕ) : ℝ))


/-- The conditional law in the normalization used by the proved
hypergeometric estimates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/BalancedPartitionTails.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52db35a93bcc11c11cd4b6a603f8e487c9908a0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
