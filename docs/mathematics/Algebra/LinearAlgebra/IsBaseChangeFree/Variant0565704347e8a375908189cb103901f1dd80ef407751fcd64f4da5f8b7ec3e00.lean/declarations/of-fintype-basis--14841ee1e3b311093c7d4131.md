# of_fintype_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b27976c9-4c9b-f76b-4356-ba824096c896",
  "kind": "theorem",
  "lexical_name": "of_fintype_basis",
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
  "slug": "of-fintype-basis--14841ee1e3b311093c7d4131",
  "source": {
    "blob": "2793106359ae617f8600e0fee78e5b8ee0ed4271",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14841ee1e3b311093c7d41310fb0ff2be282f397b4b3152d72c8245c26b4f1e8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b27976c9-4c9b-f76b-4356-ba824096c896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_fintype_basis [Fintype ι] :
    IsBaseChange R (Fintype.linearCombination A b) := by
  have : DecidableEq ι := Classical.typeDecidableEq ι
  let j : R ⊗[A] (ι → A) ≃ₗ[R] ι → R := piScalarRight A R R ι
  refine of_equiv ?_ ?_
  · apply LinearEquiv.ofBijective (Fintype.linearCombination R b ∘ₗ j)
    rw [LinearMap.coe_comp, LinearEquiv.coe_toLinearMap, j.bijective.of_comp_iff]
    simp [Function.Bijective,
        ← span_range_eq_top_iff_surjective_fintypeLinearCombination,
        ← linearIndependent_iff_injective_fintypeLinearCombination,
        Module.Basis.span_eq, b.linearIndependent]
  · intro x
    -- simp? [Fintype.linearCombination_apply] says:
    simp only [LinearEquiv.ofBijective_apply, LinearMap.coe_comp, LinearEquiv.coe_coe,
      Function.comp_apply, Fintype.linearCombination_apply]
    congr
    ext i
    rw [TensorProduct.piScalarRight_apply, TensorProduct.piScalarRightHom_tmul]
    simp

variable {A b} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2793106359ae617f8600e0fee78e5b8ee0ed4271` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
