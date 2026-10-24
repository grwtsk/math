# incompatibleEndpointLinearScaleBound_of_uniformDepthBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:455564f6-5d01-b3ae-eeb2-635b953eb8ba",
  "kind": "theorem",
  "lexical_name": "incompatibleEndpointLinearScaleBound_of_uniformDepthBudget",
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
  "slug": "incompatibleendpointlinearscalebound-of-uniformdepthbudget--1901b3c2fff494a133bf6002",
  "source": {
    "blob": "aa5b568f8e02f958ecfeb5e8341b9105a6e2a35e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1901b3c2fff494a133bf600269b224445a7fc9d324c9c369f124522e9bf1d723",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:455564f6-5d01-b3ae-eeb2-635b953eb8ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incompatibleEndpointLinearScaleBound_of_uniformDepthBudget
    (hDepth : UniformIncompatibleEndpointDepthBudget) :
    IncompatibleEndpointLinearScaleBound := by
  refine ⟨32, by norm_num, ?_⟩
  intro j
  let Y : ℕ := 2 ^ (j + 1)
  have hcard :
      (coreLongDeepDepths j).card ≤ Y := by
    apply le_trans (Finset.card_le_card (Finset.filter_subset _ _))
    simp [Y]
  unfold coreLongIncompatibleTrivialBudgetPacket
    coreLongEndpointTrivialBudgetPacket
  rw [← Finset.sum_add_distrib]
  calc
    (∑ t ∈ coreLongDeepDepths j,
      (2 * (incompatibleTerminalTrivialBudget j t +
          incompatibleLongInteriorTrivialBudget j t) +
        endpointCorrectionTrivialBudget j t)) ≤
      ∑ _t ∈ coreLongDeepDepths j, (16 * (j + 2 : ℝ)) := by
        apply Finset.sum_le_sum
        intro t ht
        exact hDepth j t ht
    _ = ((coreLongDeepDepths j).card : ℝ) *
        (16 * (j + 2 : ℝ)) := by simp
    _ ≤ (Y : ℝ) * (16 * (j + 2 : ℝ)) := by
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast hcard
      · positivity
    _ = 32 * (j + 2 : ℝ) * (((2 ^ j : ℕ) : ℝ)) := by
      dsimp [Y]
      rw [Nat.pow_succ]
      ring

/-- Method-scope witness: the current trivial route has separated a pure
one-depth problem, but even an O(j) solution there certifies only dyadic-linear
packet growth.  A sharper depth-summed comparison or genuine cancellation is
still required for the subpolynomial RH-facing target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa5b568f8e02f958ecfeb5e8341b9105a6e2a35e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
