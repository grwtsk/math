# ofModule_asAlgebraHom_apply_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1fb8da23505f21f17be9d4eb3fa064410ff8046",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12ec836b-4ac5-8927-8c03-61ac72240e8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e58132aa-59e1-8593-6180-d06a72854dec",
  "kind": "theorem",
  "lexical_name": "ofModule_asAlgebraHom_apply_apply",
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
  "slug": "ofmodule-asalgebrahom-apply-apply--80e17169cedcfce139f0c609",
  "source": {
    "blob": "f1fb8da23505f21f17be9d4eb3fa064410ff8046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80e17169cedcfce139f0c60988499088b375792580eb6de0e650b0565d8fb205",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e58132aa-59e1-8593-6180-d06a72854dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofModule_asAlgebraHom_apply_apply (r : MonoidAlgebra k G)
    (m : RestrictScalars k (MonoidAlgebra k G) M) :
    ((ofModule M).asAlgebraHom r) m =
      (RestrictScalars.addEquiv _ _ _).symm (r • RestrictScalars.addEquiv _ _ _ m) := by
  apply MonoidAlgebra.induction_on r
  · intro g
    simp only [one_smul, MonoidAlgebra.lift_symm_apply, MonoidAlgebra.of_apply,
      Representation.asAlgebraHom_single, Representation.ofModule, AddEquiv.apply_eq_iff_eq,
      RestrictScalars.lsmul_apply_apply]
  · intro f g fw gw
    simp only [fw, gw, map_add, add_smul, LinearMap.add_apply]
  · intro r f w
    simp only [w, AlgHom.map_smul, LinearMap.smul_apply,
      RestrictScalars.addEquiv_symm_map_smul_smul]
#align representation.of_module_as_algebra_hom_apply_apply Representation.ofModule_asAlgebraHom_apply_apply

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1fb8da23505f21f17be9d4eb3fa064410ff8046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
