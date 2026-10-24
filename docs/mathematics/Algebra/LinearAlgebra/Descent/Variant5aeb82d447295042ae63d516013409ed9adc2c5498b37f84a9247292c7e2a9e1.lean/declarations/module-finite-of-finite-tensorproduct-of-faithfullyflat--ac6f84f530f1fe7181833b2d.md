# Module.Finite.of_finite_tensorProduct_of_faithfullyFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a10368635f15ee3f9ab03fc55d8afada1d03486b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5aeb82d447295042ae63d516013409ed9adc2c5498b37f84a9247292c7e2a9e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a44c6798-91e4-c1f1-eb78-a3094e1d366b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b300be3e-2496-0e3f-5143-85061ae2bd20",
  "kind": "lemma",
  "lexical_name": "Module.Finite.of_finite_tensorProduct_of_faithfullyFlat",
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
  "slug": "module-finite-of-finite-tensorproduct-of-faithfullyflat--ac6f84f530f1fe7181833b2d",
  "source": {
    "blob": "a10368635f15ee3f9ab03fc55d8afada1d03486b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Descent/Variant5aeb82d447295042ae63d516013409ed9adc2c5498b37f84a9247292c7e2a9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac6f84f530f1fe7181833b2d120364ba21bf4a2d2d48ddc01a9ffd3c438531a8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Descent/Variant5aeb82d447295042ae63d516013409ed9adc2c5498b37f84a9247292c7e2a9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b300be3e-2496-0e3f-5143-85061ae2bd20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.Finite.of_finite_tensorProduct_of_faithfullyFlat {M : Type*} [AddCommGroup M]
    [Module R M] [Module.FaithfullyFlat R T] [Module.Finite T (T ⊗[R] M)] :
    Module.Finite R M := by
  obtain ⟨n, s, hs⟩ := Module.Finite.exists_fin (R := T) (M := T ⊗[R] M)
  choose k t m h using fun i : Fin n ↦ TensorProduct.exists_sum_tmul_eq (s i)
  let f₀ : ((Σ i, Fin (k i)) → R) →ₗ[R] M := (Pi.basisFun R _).constr R fun ⟨i, j⟩ ↦ m i j
  apply of_surjective f₀
  have : Function.Surjective (AlgebraTensorModule.lTensor T T f₀) := by
    rw [← LinearMap.range_eq_top, eq_top_iff, ← hs, Submodule.span_le, Set.range_subset_iff]
    intro i
    use ∑ (j : Fin (k i)), t i j ⊗ₜ Pi.basisFun R _ ⟨i, j⟩
    simp [f₀, -Pi.basisFun_equivFun, -Pi.basisFun_apply, h i]
  rwa [← Module.FaithfullyFlat.lTensor_surjective_iff_surjective _ T]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Descent/Variant5aeb82d447295042ae63d516013409ed9adc2c5498b37f84a9247292c7e2a9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Descent/Variant5aeb82d447295042ae63d516013409ed9adc2c5498b37f84a9247292c7e2a9e1.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10368635f15ee3f9ab03fc55d8afada1d03486b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
