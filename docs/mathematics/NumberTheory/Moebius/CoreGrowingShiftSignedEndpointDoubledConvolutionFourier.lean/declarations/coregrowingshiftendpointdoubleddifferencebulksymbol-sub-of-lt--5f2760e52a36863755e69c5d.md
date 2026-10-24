# coreGrowingShiftEndpointDoubledDifferenceBulkSymbol_sub_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bf1b096-9171-7734-2827-adbe463d5119",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointDoubledDifferenceBulkSymbol_sub_of_lt",
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
  "slug": "coregrowingshiftendpointdoubleddifferencebulksymbol-sub-of-lt--5f2760e52a36863755e69c5d",
  "source": {
    "blob": "69c56354b8379fe9854dffc2ecfe92dddcb46f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 211,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f2760e52a36863755e69c5d570f434c08ede3236f03a639c784e425d0501b2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bf1b096-9171-7734-2827-adbe463d5119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDoubledDifferenceBulkSymbol_sub_of_lt
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hyY : y.val < coreGrowingShiftEndpointFourierModulus j)
    (hxy : x.val < y.val) :
    coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j (y - x) =
      (coreGrowingShiftEndpointDifferenceBulkKernel
        j (y.val - x.val) : ℂ) := by
  rw [coreGrowingShiftEndpointDoubledDifference_val_of_lt hxy]
  have hpos : 1 ≤ y.val - x.val := by omega
  have hlt :
      y.val - x.val < coreGrowingShiftEndpointFourierModulus j := by
    omega
  simp [coreGrowingShiftEndpointDoubledDifferenceBulkSymbol, hpos, hlt]

/-- On a diagonal or reverse endpoint pair inside the ordinary window, the
positive-difference symbol vanishes exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c56354b8379fe9854dffc2ecfe92dddcb46f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
