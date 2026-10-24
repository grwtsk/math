# boundaryLocalizedMertensSquareEnergy_le_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4936fce7-39bd-93bb-0274-035db43b6b68",
  "kind": "theorem",
  "lexical_name": "boundaryLocalizedMertensSquareEnergy_le_weighted",
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
  "slug": "boundarylocalizedmertenssquareenergy-le-weighted--2a972f76e0c056e01b87aebf",
  "source": {
    "blob": "95ff9f421d528818a77cbdc7bb2a521169800453",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a972f76e0c056e01b87aebf85a04291c06bd19037953b9726b6b182d0a4c8d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4936fce7-39bd-93bb-0274-035db43b6b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryLocalizedMertensSquareEnergy_le_weighted
    (j : ℕ) :
    boundaryLocalizedMertensSquareEnergy j ≤
      (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
        boundaryLocalizedWeightedMertensSquareEnergy j := by
  unfold boundaryLocalizedMertensSquareEnergy
    boundaryLocalizedWeightedMertensSquareEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro u hu
  have huX : u < 2 ^ j := Finset.mem_range.mp hu
  have hA :
      (2 ^ (j + 1) - u - 1) + 1 ≤ 2 ^ (j + 1) := by
    omega
  have hB :
      (2 ^ j - u - 1) + 1 ≤ 2 ^ (j + 1) := by
    rw [Nat.pow_succ]
    omega
  have hC :
      (logarithmicShallowDepthCount j - u) + 1 ≤
        2 ^ (j + 1) := by
    have hD := logarithmicShallowDepthCount_add_one_le_endpoint j
    omega
  have h1 := mertensPrefix_sq_le_endpoint_mul_weighted hA
  have h2 := mertensPrefix_sq_le_endpoint_mul_weighted hB
  have h3 := mertensPrefix_sq_le_endpoint_mul_weighted hC
  calc
    mertensPrefixReal (2 ^ (j + 1) - u - 1) ^ 2 +
        mertensPrefixReal (2 ^ j - u - 1) ^ 2 +
        mertensPrefixReal (logarithmicShallowDepthCount j - u) ^ 2 ≤
      (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
          weightedMertensPrefixSquare (2 ^ (j + 1) - u - 1) +
        (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
          weightedMertensPrefixSquare (2 ^ j - u - 1) +
        (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
          weightedMertensPrefixSquare
            (logarithmicShallowDepthCount j - u) := by
      exact add_le_add (add_le_add h1 h2) h3
    _ = (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
        (weightedMertensPrefixSquare (2 ^ (j + 1) - u - 1) +
          weightedMertensPrefixSquare (2 ^ j - u - 1) +
          weightedMertensPrefixSquare
            (logarithmicShallowDepthCount j - u)) := by ring

/-- Discrete weighted Weak-Mertens source at the exact localized prefixes used
by the boundary packet.  This is not asserted to be the classical integral
Weak Mertens conjecture. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ff9f421d528818a77cbdc7bb2a521169800453` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
