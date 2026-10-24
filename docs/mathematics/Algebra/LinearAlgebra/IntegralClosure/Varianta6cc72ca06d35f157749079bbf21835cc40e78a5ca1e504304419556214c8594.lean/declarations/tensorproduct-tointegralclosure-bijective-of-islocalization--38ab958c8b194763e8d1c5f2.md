# TensorProduct.toIntegralClosure_bijective_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c62606d-51bd-f968-9a7b-6b6084a85624",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fbac74c-2943-e914-0a2f-44b3bd0937e0",
  "kind": "lemma",
  "lexical_name": "TensorProduct.toIntegralClosure_bijective_of_isLocalization",
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
  "slug": "tensorproduct-tointegralclosure-bijective-of-islocalization--38ab958c8b194763e8d1c5f2",
  "source": {
    "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38ab958c8b194763e8d1c5f2083d82253f3992740a0e0ecafdc95be4c3558b84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fbac74c-2943-e914-0a2f-44b3bd0937e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TensorProduct.toIntegralClosure_bijective_of_isLocalization
    (M : Submonoid R) [IsLocalization M S] :
    Function.Bijective (toIntegralClosure R S B) := by
  let φ : integralClosure R B →ₐ[R] integralClosure S (S ⊗[R] B) :=
    AlgHom.codRestrict (Algebra.TensorProduct.includeRight.comp (integralClosure R B).val)
      ((integralClosure S (S ⊗[R] B)).restrictScalars R) fun ⟨x, hx⟩ ↦ by
    refine .of_comp (f := algebraMap R S) ?_
    convert!
      RingHom.IsIntegralElem.map hx
        (Algebra.TensorProduct.includeRight : B →ₐ[R] S ⊗[R] B).toRingHom
    simp [← IsScalarTower.algebraMap_eq]
  let := φ.toAlgebra
  have := IsScalarTower.of_algebraMap_eq' φ.comp_algebraMap.symm
  have : IsScalarTower (integralClosure R B) (integralClosure S (S ⊗[R] B)) (S ⊗[R] B) :=
    .of_algebraMap_eq' rfl
  have := IsLocalization.integralClosure (S := B) M (Rf := S) (Sf := S ⊗[R] B)
  convert!
    (IsLocalization.algEquiv (Algebra.algebraMapSubmonoid (integralClosure R B) M)
        (S ⊗[R] integralClosure R B) (integralClosure S (S ⊗[R] B))).bijective
  rw [← AlgHom.coe_restrictScalars' R, ← AlgEquiv.coe_restrictScalars R, ← AlgEquiv.coe_toAlgHom]
  congr 1
  ext1
  · apply IsLocalization.algHom_ext M; ext
  · ext x
    dsimp [toIntegralClosure]
    simp [← Algebra.TensorProduct.right_algebraMap_apply]
    rfl

section IsStandardEtale

attribute [local instance] Polynomial.algebra in
/-- Let `S` be an `R`-algebra and `f : S[X]` be a monic polynomial with `R`-integral coefficients.
Suppose `y` in `B = S[X]/f` is `R`-integral, then `f' * y` is the image of some `g : S[X]` with
`R`-integral coefficients. -/
-- We can also know that `deg g = deg f - 1`. Upgrade the lemma if we care.
@[stacks 03GD]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd8d39ed9f66f9b65488cf19af6038db4921b03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
