# QuasiFiniteAt.baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05073ce268ad00727a3dedb886d61819cc704109",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c559fba8-d5d3-e40e-7ee9-951b640d1494",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc29def3-344f-0f05-320f-d7d2500095b5",
  "kind": "lemma",
  "lexical_name": "QuasiFiniteAt.baseChange",
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
  "slug": "quasifiniteat-basechange--010844689e0566e5ffc66b38",
  "source": {
    "blob": "05073ce268ad00727a3dedb886d61819cc704109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 371,
    "path": "GRWTSK/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:010844689e0566e5ffc66b3834c9b9dc16c4771003652aaa30e683caeb765472",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc29def3-344f-0f05-320f-d7d2500095b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuasiFiniteAt.baseChange (p : Ideal S) [p.IsPrime] [QuasiFiniteAt R p]
    {A : Type*} [CommRing A] [Algebra R A] (q : Ideal (A ⊗[R] S)) [q.IsPrime]
    (hq : p = q.comap Algebra.TensorProduct.includeRight.toRingHom) :
    QuasiFiniteAt A q := by
  let f : A ⊗[R] Localization.AtPrime p →ₐ[A] Localization.AtPrime q :=
    Algebra.TensorProduct.lift (Algebra.ofId _ _) ⟨Localization.localRingHom _ _ _ hq, by
      simp [IsScalarTower.algebraMap_apply R S (Localization.AtPrime p),
        IsScalarTower.algebraMap_apply R (A ⊗[R] S) (Localization.AtPrime q)]⟩ fun _ _ ↦ .all _ _
  let g : A ⊗[R] S →ₐ[A] A ⊗[R] Localization.AtPrime p :=
    Algebra.TensorProduct.map (.id _ _) (IsScalarTower.toAlgHom _ _ _)
  have : f.comp g = IsScalarTower.toAlgHom _ _ _ := by ext; simp [f, g]
  replace this (x : _) : f (g x) = algebraMap _ _ x := DFunLike.congr_fun this x
  refine .of_forall_exists_mul_mem_range f fun x ↦ ?_
  obtain ⟨x, ⟨s, hs⟩, rfl⟩ := IsLocalization.exists_mk'_eq q.primeCompl x
  refine ⟨g s, this s ▸ IsLocalization.map_units _ ⟨s, hs⟩, ?_⟩
  rw [this, IsLocalization.mk'_spec_mk]
  exact ⟨g x, this x⟩

set_option backward.isDefEq.respectTransparency false in
omit [Algebra S T] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05073ce268ad00727a3dedb886d61819cc704109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
