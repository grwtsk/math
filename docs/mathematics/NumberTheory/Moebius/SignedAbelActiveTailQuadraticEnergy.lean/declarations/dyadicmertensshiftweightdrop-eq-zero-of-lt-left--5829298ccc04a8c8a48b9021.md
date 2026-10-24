# dyadicMertensShiftWeightDrop_eq_zero_of_lt_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:593abb31-cea3-7e14-35da-5586f2923e39",
  "kind": "theorem",
  "lexical_name": "dyadicMertensShiftWeightDrop_eq_zero_of_lt_left",
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
  "slug": "dyadicmertensshiftweightdrop-eq-zero-of-lt-left--5829298ccc04a8c8a48b9021",
  "source": {
    "blob": "1685755d379b867ea62556386356e03fbafcdfd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5829298ccc04a8c8a48b9021b7ec8c7355ea8c2ec7b705076e8f2fca7c649b19",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:593abb31-cea3-7e14-35da-5586f2923e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicMertensShiftWeightDrop_eq_zero_of_lt_left
    {j h t : ℕ}
    (hb : t + 1 + h < 2 ^ j) :
    dyadicMertensShiftWeightDrop j h t = 0 := by
  unfold dyadicMertensShiftWeightDrop
  rw [dyadicMertensShiftWeight_eq_max j (t + 1 + h),
    dyadicMertensShiftWeight_eq_max j ((t + 1) + 1 + h)]
  have h0 : max (2 ^ j) (t + 1 + h) = 2 ^ j :=
    max_eq_left (Nat.le_of_lt hb)
  have h1le : (t + 1) + 1 + h ≤ 2 ^ j := by
    omega
  have h1 : max (2 ^ j) ((t + 1) + 1 + h) = 2 ^ j :=
    max_eq_left h1le
  rw [h0, h1]
  ring

/-- Once the left endpoint has been reached, the Abel drop is exactly one
reciprocal difference. The endpoint subtraction cancels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1685755d379b867ea62556386356e03fbafcdfd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
