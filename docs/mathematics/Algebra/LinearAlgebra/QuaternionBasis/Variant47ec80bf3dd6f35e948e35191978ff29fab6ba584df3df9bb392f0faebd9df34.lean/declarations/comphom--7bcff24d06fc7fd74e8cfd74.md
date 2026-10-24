# compHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91ac5d89247d3beb3ba89d3692128e9318927fb0b3236aba2fece1ad97c3e22f",
  "kind": "def",
  "lexical_name": "compHom",
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
  "slug": "comphom--7bcff24d06fc7fd74e8cfd74",
  "source": {
    "blob": "943687a44f840f6987469d9614859fd0bda03533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bcff24d06fc7fd74e8cfd74858bfa79b7b50f05fbcf1197e874ca020fe62738",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91ac5d89247d3beb3ba89d3692128e9318927fb0b3236aba2fece1ad97c3e22f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compHom (F : A →ₐ[R] B) : Basis B c₁ c₂ c₃ where
  i := F q.i
  i_mul_i := by rw [← map_mul, q.i_mul_i, map_add, map_smul, map_smul, map_one]
  j := F q.j
  j_mul_j := by rw [← map_mul, q.j_mul_j, map_smul, map_one]
  k := F q.k
  i_mul_j := by rw [← map_mul, q.i_mul_j]
  j_mul_i := by rw [← map_mul, q.j_mul_i, map_sub, map_smul]

end Basis

/-- A quaternionic basis on `A` is equivalent to a map from the quaternion algebra to `A`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943687a44f840f6987469d9614859fd0bda03533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
