# point_pair_principal_coefficient_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5f51d13-afa2-79ac-7211-4cdcdf6d11dc",
  "kind": "theorem",
  "lexical_name": "point_pair_principal_coefficient_ne_zero",
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
  "slug": "point-pair-principal-coefficient-ne-zero--54c69771865b271a9d5ebb73",
  "source": {
    "blob": "dd7b72755e2d4d4cd5e96c5a0e4270cac5daf3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 274,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variantff78814ba54866e9548c7061448cea7956ac4920e9c4175dd1c7b0e26242fde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c69771865b271a9d5ebb731d6e2666fa35b8f3739f0ee43f16242fdf9177c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variantff78814ba54866e9548c7061448cea7956ac4920e9c4175dd1c7b0e26242fde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5f51d13-afa2-79ac-7211-4cdcdf6d11dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem point_pair_principal_coefficient_ne_zero
    (p : ZeroPoint) :
    pointPairPrincipalCoefficient p ≠ 0 := by
  let o : ZeroOccurrence :=
    ⟨p, ⟨0, multiplicity_positive p⟩⟩
  have hz : p.val - 1 / 2 ≠ 0 := by
    simpa only [shiftedValue, o] using
      Expansion.shifted_value_ne_zero o
  have hp : p.val - 1 / 2 ≠ 1 / 2 := by
    simpa only [shiftedValue, o] using shiftedValue_ne_half o
  have hn : p.val - 1 / 2 ≠ -(1 / 2) := by
    simpa only [shiftedValue, o] using shiftedValue_ne_neg_half o
  exact principalCoefficient_ne_zero
    (multiplicity p) (multiplicity_positive p).ne'
    (p.val - 1 / 2) hz hp hn

/-- A nonzero ninth-order cleared limit rules out a continuous extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variantff78814ba54866e9548c7061448cea7956ac4920e9c4175dd1c7b0e26242fde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variantff78814ba54866e9548c7061448cea7956ac4920e9c4175dd1c7b0e26242fde4.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd7b72755e2d4d4cd5e96c5a0e4270cac5daf3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
