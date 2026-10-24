# fullLengthCoefficientMass_le_three_inv_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e25e7488-1838-c8a1-9ade-a2a189712ce5",
  "kind": "theorem",
  "lexical_name": "fullLengthCoefficientMass_le_three_inv_sq",
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
  "slug": "fulllengthcoefficientmass-le-three-inv-sq--be61a245afbd920c3eebfa8a",
  "source": {
    "blob": "ee6e8d84b1f48946be1ec1a3629a98d09374dbb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 278,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be61a245afbd920c3eebfa8aa9df5bde66a26aba8724c43138c7eecb10f4005c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e25e7488-1838-c8a1-9ade-a2a189712ce5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullLengthCoefficientMass_le_three_inv_sq
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    fullLengthCoefficientMass j n ≤
      3 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) :=
  fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope
    rightLengthCoefficientTelescoping hnH hnX

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.rightInteriorLengthCoefficientMass_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.rightLengthCoefficientMass_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullLengthCoefficientMass_le_three_inv_sq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6e8d84b1f48946be1ec1a3629a98d09374dbb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
