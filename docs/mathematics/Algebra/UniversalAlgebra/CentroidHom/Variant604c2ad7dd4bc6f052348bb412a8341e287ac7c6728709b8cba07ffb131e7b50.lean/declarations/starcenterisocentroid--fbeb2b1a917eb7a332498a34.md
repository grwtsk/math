# starCenterIsoCentroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f6b3a7b5eca2d29f91f058bdbaf5876e6481b47509b0dd07945c08b5d458cad",
  "kind": "def",
  "lexical_name": "starCenterIsoCentroid",
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
  "slug": "starcenterisocentroid--fbeb2b1a917eb7a332498a34",
  "source": {
    "blob": "8e07bcb8be477cc5ff68e32910e870f04b9b6332",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbeb2b1a917eb7a332498a3452707e9da4d33d43425fa76efb95fbb1197b5bff",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f6b3a7b5eca2d29f91f058bdbaf5876e6481b47509b0dd07945c08b5d458cad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def starCenterIsoCentroid : StarSubsemiring.center α ≃⋆+* CentroidHom α where
  __ := starCenterToCentroid
  invFun T :=
    ⟨T 1, by refine ⟨?_, ?_, ?_, ?_⟩; all_goals simp [← map_mul_left, ← map_mul_right]⟩
  left_inv z := Subtype.ext <| by simp only [MulHom.toFun_eq_coe,
    NonUnitalRingHom.coe_toMulHom, NonUnitalStarRingHom.coe_toNonUnitalRingHom,
    starCenterToCentroid_apply, mul_one]
  right_inv T := CentroidHom.ext <| fun _ => by
    simp [starCenterToCentroid_apply, ← map_mul_right]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e07bcb8be477cc5ff68e32910e870f04b9b6332` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
