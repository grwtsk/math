# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18bcb83af7e089fe21371c79916952eacc77e57d6023ac455a9e9f37367cbce2",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--eb342204f1fd3bfffb1ea301",
  "source": {
    "blob": "31a83a936872eca4a5954996685955acb04ef9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 170,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb342204f1fd3bfffb1ea30102097f5df37ea5302b5376764d7bca7a7c3213b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18bcb83af7e089fe21371c79916952eacc77e57d6023ac455a9e9f37367cbce2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift : Basis A c₁ c₂ ≃ (ℍ[R,c₁,c₂] →ₐ[R] A) where
  toFun := Basis.liftHom
  invFun := (Basis.self R).compHom
  left_inv q := by ext <;> simp [Basis.lift]
  right_inv F := by
    ext
    dsimp [Basis.lift]
    rw [← F.commutes]
    simp only [← F.commutes, ← F.map_smul, ← F.map_add, mk_add_mk, smul_mk, smul_zero,
      algebraMap_eq]
    congr <;> simp
#align quaternion_algebra.lift QuaternionAlgebra.lift

end QuaternionAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31a83a936872eca4a5954996685955acb04ef9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
