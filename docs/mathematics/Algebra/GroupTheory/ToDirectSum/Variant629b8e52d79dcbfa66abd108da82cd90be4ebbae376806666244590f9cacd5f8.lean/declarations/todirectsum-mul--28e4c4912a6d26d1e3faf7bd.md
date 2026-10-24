# toDirectSum_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13cbf25098122fef127b9302815f39418cf9f302",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ba66438-1243-1adc-984d-b48ba6278f0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29595b2f-c3a8-fd1f-b3df-218f4c3084c3",
  "kind": "theorem",
  "lexical_name": "toDirectSum_mul",
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
  "slug": "todirectsum-mul--28e4c4912a6d26d1e3faf7bd",
  "source": {
    "blob": "13cbf25098122fef127b9302815f39418cf9f302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 132,
    "path": "GRWTSK/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28e4c4912a6d26d1e3faf7bda20f1ae39d88f35c590396082599294dc044864b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29595b2f-c3a8-fd1f-b3df-218f4c3084c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toDirectSum_mul [DecidableEq ι] [AddMonoid ι] [Semiring M] (f g : AddMonoidAlgebra M ι) :
    (f * g).toDirectSum = f.toDirectSum * g.toDirectSum := by
  let to_hom : AddMonoidAlgebra M ι →+ ⨁ _ : ι, M :=
  { toFun := toDirectSum
    map_zero' := toDirectSum_zero
    map_add' := toDirectSum_add }
  show to_hom (f * g) = to_hom f * to_hom g
  let _ : NonUnitalNonAssocSemiring (ι →₀ M) := AddMonoidAlgebra.nonUnitalNonAssocSemiring
  revert f g
  rw [AddMonoidHom.map_mul_iff]
  -- porting note: does not find `addHom_ext'`, was `ext (xi xv yi yv) : 4`
  refine Finsupp.addHom_ext' fun xi => AddMonoidHom.ext fun xv => ?_
  refine Finsupp.addHom_ext' fun yi => AddMonoidHom.ext fun yv => ?_
  dsimp only [AddMonoidHom.comp_apply, AddMonoidHom.compl₂_apply, AddMonoidHom.compr₂_apply,
    AddMonoidHom.mul_apply, Finsupp.singleAddHom_apply]
  simp only [AddMonoidHom.coe_mk, ZeroHom.coe_mk, toDirectSum_single]
  erw [AddMonoidAlgebra.single_mul_single, AddMonoidHom.coe_mk, ZeroHom.coe_mk,
    AddMonoidAlgebra.toDirectSum_single]
  simp only [AddMonoidHom.coe_comp, AddMonoidHom.coe_mul, AddMonoidHom.coe_mk, ZeroHom.coe_mk,
    Function.comp_apply, toDirectSum_single, AddMonoidHom.id_apply, Finsupp.singleAddHom_apply,
    AddMonoidHom.coe_mulLeft]
  erw [DirectSum.of_mul_of, Mul.gMul_mul]
#align add_monoid_algebra.to_direct_sum_mul AddMonoidAlgebra.toDirectSum_mul

end AddMonoidAlgebra

namespace DirectSum

variable [DecidableEq ι]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13cbf25098122fef127b9302815f39418cf9f302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
