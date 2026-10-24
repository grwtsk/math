# det_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:777b32f3-11c9-57e1-68a1-09167d4bb603",
  "kind": "theorem",
  "lexical_name": "det_reflection",
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
  "slug": "det-reflection--fe7ec26c878f76f070299c91",
  "source": {
    "blob": "a3d15476e98dcad6d9a5e976a534bcd0e73a6798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7ec26c878f76f070299c915eb1ccadf9c041f3a360e6237415eddaaa30d3e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:777b32f3-11c9-57e1-68a1-09167d4bb603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_reflection : LinearMap.det K.reflection.toLinearMap = (-1) ^ finrank 𝕜 Kᗮ := by
  by_cases hK : FiniteDimensional 𝕜 Kᗮ
  swap
  · rw [finrank_of_infinite_dimensional hK, pow_zero, LinearMap.det_eq_one_of_finrank_eq_zero]
    exact finrank_of_infinite_dimensional fun h ↦ hK (h.finiteDimensional_submodule _)
  let e := K.prodEquivOfIsCompl _ K.isCompl_orthogonal
  let b := (finBasis 𝕜 K).prod (finBasis 𝕜 Kᗮ)
  have : LinearMap.toMatrix b b (e.symm ∘ₗ K.reflection.toLinearMap ∘ₗ e.symm.symm) =
      Matrix.fromBlocks 1 0 0 (-1) := by
    ext (_ | _) (_ | _) <;>
    simp [LinearMap.toMatrix_apply, b, Matrix.one_apply, Finsupp.single_apply, e, eq_comm,
      reflection_mem_subspace_eq_self, reflection_mem_subspace_orthogonalComplement_eq_neg]
  rw [← LinearMap.det_conj _ e.symm, ← LinearMap.det_toMatrix b, this, Matrix.det_fromBlocks_zero₂₁,
    Matrix.det_one, one_mul, Matrix.det_neg, Fintype.card_fin, Matrix.det_one, mul_one]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d15476e98dcad6d9a5e976a534bcd0e73a6798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
