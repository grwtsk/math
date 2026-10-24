# coreGrowingShiftEndpointCyclicDifference_val_eq_natSub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a94ab5b4-d233-be46-b1c7-e34d75eb7835",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointCyclicDifference_val_eq_natSub",
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
  "slug": "coregrowingshiftendpointcyclicdifference-val-eq-natsub--883611f782b79b24d60f7acb",
  "source": {
    "blob": "290d38c9a599b61e9e2c9c55b9a422d284cf5138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 452,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:883611f782b79b24d60f7acb3f4aa8c77f11e9097e175ef3029880d8ab7da14e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a94ab5b4-d233-be46-b1c7-e34d75eb7835`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointCyclicDifference_val_eq_natSub
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hxy : x.val < y.val) :
    (y - x).val = y.val - x.val := by
  have hcast :
      y - x =
        ((y.val - x.val : ℕ) :
          CoreGrowingShiftEndpointFourierIndex j) := by
    calc
      y - x =
          (y.val : CoreGrowingShiftEndpointFourierIndex j) -
            (x.val : CoreGrowingShiftEndpointFourierIndex j) := by
              rw [ZMod.natCast_zmod_val y, ZMod.natCast_zmod_val x]
      _ = ((y.val - x.val : ℕ) :
          CoreGrowingShiftEndpointFourierIndex j) := by
            rw [Nat.cast_sub hxy.le]
  have hdiffLt :
      y.val - x.val < coreGrowingShiftEndpointFourierModulus j :=
    lt_of_le_of_lt (Nat.sub_le _ _) (ZMod.val_lt y)
  have hval := congrArg ZMod.val hcast
  simpa [ZMod.val_cast_of_lt hdiffLt] using hval

/-- The cyclic bulk agrees with the closed ordinary difference coefficient on
strict support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290d38c9a599b61e9e2c9c55b9a422d284cf5138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
