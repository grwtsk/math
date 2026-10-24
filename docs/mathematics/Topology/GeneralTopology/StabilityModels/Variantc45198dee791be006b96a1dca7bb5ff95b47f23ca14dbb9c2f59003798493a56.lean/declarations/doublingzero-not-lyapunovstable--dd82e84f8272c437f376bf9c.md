# doublingZero_not_lyapunovStable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0a59cf6-7e4b-749a-5681-7c28a81d5198",
  "kind": "theorem",
  "lexical_name": "doublingZero_not_lyapunovStable",
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
  "slug": "doublingzero-not-lyapunovstable--dd82e84f8272c437f376bf9c",
  "source": {
    "blob": "90917418bd6b7f627bae5b1ef0e78adbd840c70f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd82e84f8272c437f376bf9ca39202d89ecb0e274b3487dbfbcf8023eae8ab74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0a59cf6-7e4b-749a-5681-7c28a81d5198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem doublingZero_not_lyapunovStable :
    ¬ IsLyapunovStable doublingOperator doublingZero := by
  apply not_isLyapunovStable_of_escape doublingZero 1 one_pos
  intro δ δ_positive
  let displacement : ℝ := min (δ / 2) (1 / 2)
  have displacement_positive : 0 < displacement := by
    exact lt_min (half_pos δ_positive) (by norm_num)
  have displacement_lt : displacement < δ := by
    exact
      lt_of_le_of_lt (min_le_left _ _)
        (half_lt_self δ_positive)
  let state : doublingOperator.domain :=
    ⟨displacement, Set.mem_univ displacement⟩
  have powersDiverge :
      Tendsto
        (fun iteration : Nat ↦
          (2 : ℝ) ^ iteration * displacement)
        atTop atTop :=
    Tendsto.atTop_mul_const displacement_positive
      (tendsto_pow_atTop_atTop_of_one_lt
        (show (1 : ℝ) < 2 by norm_num))
  have eventuallyEscapes :
      ∀ᶠ iteration : Nat in atTop,
        1 ≤ (2 : ℝ) ^ iteration * displacement :=
    powersDiverge.eventually (eventually_ge_atTop 1)
  obtain ⟨iteration, escaped⟩ := eventuallyEscapes.exists
  refine ⟨state, ?_, iteration, ?_⟩
  · change dist displacement 0 < δ
    simpa [Real.dist_eq,
      abs_of_pos displacement_positive] using displacement_lt
  · rw [Subtype.dist_eq, doubling_iterate_value]
    change
      1 ≤ |(2 : ℝ) ^ iteration * displacement - 0|
    rw [sub_zero, abs_of_nonneg]
    · exact escaped
    · positivity

/-- Every identity fixed point is Lyapunov stable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90917418bd6b7f627bae5b1ef0e78adbd840c70f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
