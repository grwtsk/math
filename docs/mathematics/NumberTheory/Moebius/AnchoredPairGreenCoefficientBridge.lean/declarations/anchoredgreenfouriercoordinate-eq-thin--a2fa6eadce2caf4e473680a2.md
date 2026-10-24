# anchoredGreenFourierCoordinate_eq_thin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15566b33-1be1-c451-74e6-36d7ba255806",
  "kind": "theorem",
  "lexical_name": "anchoredGreenFourierCoordinate_eq_thin",
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
  "slug": "anchoredgreenfouriercoordinate-eq-thin--a2fa6eadce2caf4e473680a2",
  "source": {
    "blob": "0a25faa8c19378320070d1360474d8419368ea26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 206,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2fa6eadce2caf4e473680a2968fc9262c5ab818cd938c09300c6469d58e4aa5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15566b33-1be1-c451-74e6-36d7ba255806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchoredGreenFourierCoordinate_eq_thin
    (X : ℕ) (k : ℤ) :
    greenFourierBackgroundCoordinate k -
      anchoredDyadicGreenPrimeCoordinate X (fourierModeValue k) =
        thinGreenArithmeticFourierCoordinate X k := by
  rw [anchoredDyadicGreenPrimeCoordinate_eq]
  rfl

/-- Hostile boundary control: the sources for factors 1 and 2 have h=0.
They are not automatically admissible in a positive-shift centered energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a25faa8c19378320070d1360474d8419368ea26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
