# affineCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:716a63737bc7cb6385ac68577eeca4e7e515c05c0bcbb87eb4bc8b31fe002f0e",
  "kind": "def",
  "lexical_name": "affineCombination",
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
  "slug": "affinecombination--f308f4b2fb9f30f9e65f1dc7",
  "source": {
    "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 348,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f308f4b2fb9f30f9e65f1dc7a2c6562413902509fab4ebb65c6b0387ed0e9861",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:716a63737bc7cb6385ac68577eeca4e7e515c05c0bcbb87eb4bc8b31fe002f0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affineCombination (p : ι → P) : (ι → k) →ᵃ[k] P where
  toFun w := s.weightedVSubOfPoint p (Classical.choice S.nonempty) w +ᵥ Classical.choice S.nonempty
  linear := s.weightedVSub p
  map_vadd' w₁ w₂ := by simp_rw [vadd_vadd, weightedVSub, vadd_eq_add, map_add]

/-- The linear map corresponding to `affineCombination` is
`weightedVSub`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6969cc1a9de419f6a1de3c975d60329c2a59a0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
