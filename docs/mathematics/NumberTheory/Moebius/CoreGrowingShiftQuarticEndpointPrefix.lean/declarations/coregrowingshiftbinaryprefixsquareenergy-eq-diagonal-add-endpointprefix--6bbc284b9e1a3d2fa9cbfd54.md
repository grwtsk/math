# coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_endpointPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8784f780-d66c-94b9-0b31-3b1fad2f354b",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_endpointPrefix",
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
  "slug": "coregrowingshiftbinaryprefixsquareenergy-eq-diagonal-add-endpointprefix--6bbc284b9e1a3d2fa9cbfd54",
  "source": {
    "blob": "927977abbecbd6810fb14162153dc4fd16059e53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bbc284b9e1a3d2fa9cbfd547a63f1d1229bd2e78ffd946210d96c432119e848",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8784f780-d66c-94b9-0b31-3b1fad2f354b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_endpointPrefix
    (j : ℕ) :
    coreGrowingShiftBinaryPrefixSquareEnergy j =
      coreGrowingShiftQuarticDiagonalEnergy j +
        2 * coreGrowingShiftQuarticEndpointPrefixEnergy j := by
  rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal,
    coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_endpointPrefix]

/-- The repeated-middle collision packet and the exact explicit
interval-weighted collision-free box recombine to the single endpoint-prefix
packet.  The prior split is therefore sufficient but not intrinsic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointPrefix.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `927977abbecbd6810fb14162153dc4fd16059e53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
