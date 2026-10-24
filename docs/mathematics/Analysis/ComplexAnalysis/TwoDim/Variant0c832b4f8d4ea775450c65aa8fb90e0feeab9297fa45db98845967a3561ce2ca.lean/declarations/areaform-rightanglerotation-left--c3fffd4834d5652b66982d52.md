# areaForm_rightAngleRotation_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25ab28a3-6cad-2203-3ce6-d403edd1a1c9",
  "kind": "theorem",
  "lexical_name": "areaForm_rightAngleRotation_left",
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
  "slug": "areaform-rightanglerotation-left--c3fffd4834d5652b66982d52",
  "source": {
    "blob": "bb8d5535deb06ea94f517a5918e7708d4f0926f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 308,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TwoDim/Variant0c832b4f8d4ea775450c65aa8fb90e0feeab9297fa45db98845967a3561ce2ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3fffd4834d5652b66982d521e74ca108dc24cf014cf46df1a89d0578d4c8639",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TwoDim/Variant0c832b4f8d4ea775450c65aa8fb90e0feeab9297fa45db98845967a3561ce2ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ab28a3-6cad-2203-3ce6-d403edd1a1c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem areaForm_rightAngleRotation_left (x y : E) : ω (J x) y = -⟪x, y⟫ := by
  rw [← o.inner_comp_rightAngleRotation, o.inner_rightAngleRotation_right, neg_neg]
#align orientation.area_form_right_angle_rotation_left Orientation.areaForm_rightAngleRotation_left

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TwoDim/Variant0c832b4f8d4ea775450c65aa8fb90e0feeab9297fa45db98845967a3561ce2ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TwoDim/Variant0c832b4f8d4ea775450c65aa8fb90e0feeab9297fa45db98845967a3561ce2ca.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8d5535deb06ea94f517a5918e7708d4f0926f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
