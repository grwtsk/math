# rightAngleRotationAux₁_rightAngleRotationAux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca2f0287678296c3c94d2ece7e045ea2abf96989",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50aae9d5-f7b5-d6eb-c629-e7dd2927f569",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4123fc81-a8ab-cbf2-ea5b-819da984f254",
  "kind": "theorem",
  "lexical_name": "rightAngleRotationAux₁_rightAngleRotationAux₁",
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
  "slug": "rightanglerotationaux-rightanglerotationaux--ee4e230eaa622143d6eb0065",
  "source": {
    "blob": "ca2f0287678296c3c94d2ece7e045ea2abf96989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee4e230eaa622143d6eb00659c2996e5a2da21ca4f3d5a743e7cf9ff546ca29c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4123fc81-a8ab-cbf2-ea5b-819da984f254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightAngleRotationAux₁_rightAngleRotationAux₁ (x : E) :
    o.rightAngleRotationAux₁ (o.rightAngleRotationAux₁ x) = -x := by
  apply ext_inner_left ℝ
  intro y
  have : ⟪o.rightAngleRotationAux₁ y, o.rightAngleRotationAux₁ x⟫ = ⟪y, x⟫ :=
    LinearIsometry.inner_map_map o.rightAngleRotationAux₂ y x
  rw [o.inner_rightAngleRotationAux₁_right, ← o.inner_rightAngleRotationAux₁_left, this,
    inner_neg_right]

/-- An isometric automorphism of an oriented real inner product space of dimension 2 (usual notation
`J`). This automorphism squares to -1. We will define rotations in such a way that this
automorphism is equal to rotation by 90 degrees. -/
irreducible_def rightAngleRotation : E ≃ₗᵢ[ℝ] E :=
  LinearIsometryEquiv.ofLinearIsometry o.rightAngleRotationAux₂ (-o.rightAngleRotationAux₁)
    (by ext; simp [rightAngleRotationAux₂]) (by ext; simp [rightAngleRotationAux₂])

local notation "J" => o.rightAngleRotation

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca2f0287678296c3c94d2ece7e045ea2abf96989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
