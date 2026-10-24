# liftAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56706a6f128b84e60451fb7048472a7b657dc21d5afeb69e096fb3c80cceede5",
  "kind": "def",
  "lexical_name": "liftAux",
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
  "slug": "liftaux--a1fc175accc71a896d5e389b",
  "source": {
    "blob": "dbe70d49645127138d1ae237714ffbe4c737b5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant295c63d644b6278ea8117b8ff28551a46f2b011edfb303d3a4ffe6af0c4a136b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1fc175accc71a896d5e389b409ad31b09f3fdb05e388f317772bb874debea94",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant295c63d644b6278ea8117b8ff28551a46f2b011edfb303d3a4ffe6af0c4a136b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56706a6f128b84e60451fb7048472a7b657dc21d5afeb69e096fb3c80cceede5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftAux (I' : A) (hf : I' * I' = -1) : ℂ →ₐ[ℝ] A :=
  AlgHom.ofLinearMap
    ((Algebra.linearMap ℝ A).comp reLm + (LinearMap.toSpanSingleton _ _ I').comp imLm)
    (show algebraMap ℝ A 1 + (0 : ℝ) • I' = 1 by rw [map_one, zero_smul, add_zero]) ?_
where finally
  rintro ⟨x₁, y₁⟩ ⟨x₂, y₂⟩
  rw [mk_mul_mk]
  change
    algebraMap ℝ A (x₁ * x₂ - y₁ * y₂) + (x₁ * y₂ + y₁ * x₂) • I' =
      (algebraMap ℝ A x₁ + y₁ • I') * (algebraMap ℝ A x₂ + y₂ • I')
  rw [add_mul, mul_add, mul_add, add_comm _ (y₁ • I' * y₂ • I'), add_add_add_comm]
  congr 1
  -- equate "real" and "imaginary" parts
  · rw [smul_mul_smul_comm, hf, smul_neg, ← algebraMap_eq_smul_one, ← sub_eq_add_neg,
      ← map_mul, ← map_sub]
  · rw [smul_def, smul_def, smul_def, ← right_comm _ x₂,
      ← mul_assoc, ← add_mul, ← map_mul, ← map_mul, ← map_add]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant295c63d644b6278ea8117b8ff28551a46f2b011edfb303d3a4ffe6af0c4a136b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant295c63d644b6278ea8117b8ff28551a46f2b011edfb303d3a4ffe6af0c4a136b.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbe70d49645127138d1ae237714ffbe4c737b5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
