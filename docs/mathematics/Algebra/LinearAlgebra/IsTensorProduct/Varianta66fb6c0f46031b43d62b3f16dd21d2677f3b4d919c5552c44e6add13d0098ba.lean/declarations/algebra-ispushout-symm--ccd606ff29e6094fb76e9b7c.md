# Algebra.IsPushout.symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9a95845549b5729aad1e85e98ad568e11b98389",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d33cb88-c0a7-e547-275d-9d6dac6c34ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:989afb46-7b68-82a7-2938-f9d76d7b9f37",
  "kind": "theorem",
  "lexical_name": "Algebra.IsPushout.symm",
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
  "slug": "algebra-ispushout-symm--ccd606ff29e6094fb76e9b7c",
  "source": {
    "blob": "a9a95845549b5729aad1e85e98ad568e11b98389",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 386,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccd606ff29e6094fb76e9b7c546dae0d152656ca6b153c5c7555449f27268ae3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:989afb46-7b68-82a7-2938-f9d76d7b9f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.IsPushout.symm (h : Algebra.IsPushout R S R' S') : Algebra.IsPushout R R' S S' := by
  let _ := (Algebra.TensorProduct.includeRight : R' →ₐ[R] S ⊗ R').toRingHom.toAlgebra
  let e : R' ⊗[R] S ≃ₗ[R'] S' := by
    refine' { (_root_.TensorProduct.comm R R' S).trans <|
      h.1.equiv.restrictScalars R with map_smul' := _ }
    intro r x
    change
      h.1.equiv (TensorProduct.comm R R' S (r • x)) = r • h.1.equiv (TensorProduct.comm R R' S x)
    refine TensorProduct.induction_on x ?_ ?_ ?_
    · simp only [smul_zero, map_zero]
    · intro x y
      simp [smul_tmul', Algebra.smul_def, RingHom.algebraMap_toAlgebra, h.1.equiv_tmul]
      ring
    · intro x y hx hy
      rw [map_add, map_add, smul_add, map_add, map_add, hx, hy, smul_add]
  have :
    (toAlgHom R S S').toLinearMap =
      (e.toLinearMap.restrictScalars R).comp (TensorProduct.mk R R' S 1) := by
    ext
    simp [h.1.equiv_tmul, Algebra.smul_def]
  constructor
  rw [this]
  exact (TensorProduct.isBaseChange R S R').comp (IsBaseChange.ofEquiv e)
#align algebra.is_pushout.symm Algebra.IsPushout.symm

variable (R S R' S')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a95845549b5729aad1e85e98ad568e11b98389` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
