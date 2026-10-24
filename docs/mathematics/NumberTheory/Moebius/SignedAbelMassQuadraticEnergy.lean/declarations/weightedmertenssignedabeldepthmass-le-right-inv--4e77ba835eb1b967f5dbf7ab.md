# weightedMertensSignedAbelDepthMass_le_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d19e1d22-9160-d9c2-3cc4-fd0946459d71",
  "kind": "theorem",
  "lexical_name": "weightedMertensSignedAbelDepthMass_le_right_inv",
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
  "slug": "weightedmertenssignedabeldepthmass-le-right-inv--4e77ba835eb1b967f5dbf7ab",
  "source": {
    "blob": "229cd628b8834cf55b43117b934fe7b1186cc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e77ba835eb1b967f5dbf7ab888fa9e10bb8dde36692a21e00904c62f8e62ff8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d19e1d22-9160-d9c2-3cc4-fd0946459d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensSignedAbelDepthMass_le_right_inv
    (j t : ℕ) :
    weightedMertensSignedAbelDepthMass j t ≤
      (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [weightedMertensSignedAbelDepthMass_eq_telescoped]
  unfold weightedMertensSignedAbelDepthTelescopedMass
  by_cases ht : t + 2 ≤ 2 ^ (j + 1)
  · rw [if_pos ht]
    apply dyadicMertensShiftWeight_le_right_inv
    omega
  · rw [if_neg ht]
    positivity

/-- The global arithmetic quantity left after the Abel mass has been paid:
weighted squared two-point Möbius prefixes, summed over every depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229cd628b8834cf55b43117b934fe7b1186cc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
