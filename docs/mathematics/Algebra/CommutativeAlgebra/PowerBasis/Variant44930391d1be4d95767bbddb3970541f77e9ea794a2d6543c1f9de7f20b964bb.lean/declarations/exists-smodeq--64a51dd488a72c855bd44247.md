# exists_smodEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d028ab93-c3dd-de77-9d8f-7280a3d43b0c",
  "kind": "theorem",
  "lexical_name": "exists_smodEq",
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
  "slug": "exists-smodeq--64a51dd488a72c855bd44247",
  "source": {
    "blob": "b63784ec36c83f49f337f05881089cdeab597c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 139,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64a51dd488a72c855bd44247790887f6e38db52d7c86bfbb91eb164a5f76526d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d028ab93-c3dd-de77-9d8f-7280a3d43b0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smodEq (pb : PowerBasis A B) (b : B) :
    ∃ a, SModEq (Ideal.span ({pb.gen})) b (algebraMap A B a) := by
  rcases subsingleton_or_nontrivial B
  · exact ⟨0, by rw [SModEq, Subsingleton.eq_zero b, map_zero]⟩
  refine ⟨pb.basis.repr b ⟨0, pb.dim_pos⟩, ?_⟩
  have H := pb.basis.sum_repr b
  rw [← insert_erase (mem_univ ⟨0, pb.dim_pos⟩), sum_insert (notMem_erase _ _)] at H
  rw [SModEq, ← add_zero (algebraMap _ _ _), Quotient.mk_add]
  nth_rewrite 1 [← H]
  rw [Quotient.mk_add]
  congr 1
  · simp [Algebra.algebraMap_eq_smul_one ((pb.basis.repr b) _)]
  · rw [Quotient.mk_zero, Quotient.mk_eq_zero, coe_basis]
    refine sum_mem _ (fun i hi ↦ ?_)
    rw [Algebra.smul_def']
    refine Ideal.mul_mem_left _ _ <| Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) _ <|
      Nat.pos_of_ne_zero <| fun h ↦ notMem_erase i univ <| Fin.eq_mk_iff_val_eq.2 h ▸ hi

open Submodule.Quotient in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b63784ec36c83f49f337f05881089cdeab597c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
