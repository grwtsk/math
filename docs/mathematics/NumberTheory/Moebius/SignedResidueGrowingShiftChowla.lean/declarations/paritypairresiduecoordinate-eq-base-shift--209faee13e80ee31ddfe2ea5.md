# parityPairResidueCoordinate_eq_base_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6066ac6-856d-3251-2312-1cf2b65f0d2f",
  "kind": "theorem",
  "lexical_name": "parityPairResidueCoordinate_eq_base_shift",
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
  "slug": "paritypairresiduecoordinate-eq-base-shift--209faee13e80ee31ddfe2ea5",
  "source": {
    "blob": "09313398bceac03b13fc67b9def98561da23ea41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:209faee13e80ee31ddfe2ea5b95eb4e1648b1930f6ebb4f42cd483e1eeb0d9a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6066ac6-856d-3251-2312-1cf2b65f0d2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityPairResidueCoordinate_eq_base_shift
    (d : ℕ) [NeZero d]
    {b r : ℕ} (hr : r < 2)
    {uv : ℕ × ℕ}
    (huv : uv ∈ endpointParityStrictPairSet b r) :
    parityResidueCoordinate d uv.1 +
        parityResidueCoordinate d uv.2 =
      (((2 * (uv.1 / 2) + parityPairShift uv : ℕ)) :
        ZMod (d * d)) := by
  rw [parityPair_second_eq_first_add_twiceShift hr huv]
  exact parityResidueCoordinate_add_shift_eq d uv.1 (parityPairShift uv)

/-- Bases and strict pairs at one positive shift are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09313398bceac03b13fc67b9def98561da23ea41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
