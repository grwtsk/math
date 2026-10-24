# coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStieltjes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5a65e7d-4950-505a-5990-b59dce1fa4a8",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStieltjes",
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
  "slug": "coregrowingshiftbinaryprefixsquareenergy-eq-endpointstieltjes--2613f1307382f9402041436d",
  "source": {
    "blob": "b1bfa84eb99b3829a02980495e11decb5c0cf75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 321,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2613f1307382f9402041436dbcdac0ac6c409b5d55e000340c1cb6532f3602cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5a65e7d-4950-505a-5990-b59dce1fa4a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStieltjes
    (j : ℕ) :
    coreGrowingShiftBinaryPrefixSquareEnergy j =
      coreGrowingShiftQuarticEndpointStieltjesSquareEnergy j := by
  rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_endpointPrefix,
    coreGrowingShiftQuarticEndpointPrefixEnergy_eq_explicitIntervalBox,
    coreGrowingShiftQuarticDiagonal_add_two_endpointExplicitInterval_eq_stieltjes]

/-- Source-facing natural-scale bound on the exact positive Stieltjes square
energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bfa84eb99b3829a02980495e11decb5c0cf75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
