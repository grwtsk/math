# mem_span_pow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05902bcc-dbe2-aa34-a621-3e36fa6dc06e",
  "kind": "theorem",
  "lexical_name": "mem_span_pow'",
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
  "slug": "mem-span-pow--7f753bd56d0a96c35c24e10d",
  "source": {
    "blob": "b63784ec36c83f49f337f05881089cdeab597c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f753bd56d0a96c35c24e10d73dcc7889bab858c2c209342083bf91bf11f24ac",
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

Occurrence: `result:05902bcc-dbe2-aa34-a621-3e36fa6dc06e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_pow' {x y : S} {d : ℕ} :
    y ∈ Submodule.span R (Set.range fun i : Fin d => x ^ (i : ℕ)) ↔
      ∃ f : R[X], f.degree < d ∧ y = aeval x f := by
  have : (Set.range fun i : Fin d => x ^ (i : ℕ)) = (fun i : ℕ => x ^ i) '' ↑(Finset.range d) := by
    ext n
    simp_rw [Set.mem_range, Set.mem_image, Finset.mem_coe, Finset.mem_range]
    exact ⟨fun ⟨⟨i, hi⟩, hy⟩ => ⟨i, hi, hy⟩, fun ⟨i, hi, hy⟩ => ⟨⟨i, hi⟩, hy⟩⟩
  simp only [this, mem_span_image_iff_linearCombination, degree_lt_iff_coeff_zero, Finsupp.support,
    exists_iff_exists_finsupp, coeff, aeval_def, eval₂RingHom', eval₂_eq_sum, Polynomial.sum,
    mem_supported', linearCombination, Finsupp.sum, Algebra.smul_def, eval₂_zero, exists_prop,
    LinearMap.id_coe, eval₂_one, id, not_lt, Finsupp.coe_lsum, LinearMap.coe_smulRight,
    Finset.mem_range, AlgHom.coe_mks, Finset.mem_coe]
  simp_rw [@eq_comm _ y]
  exact Iff.rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b63784ec36c83f49f337f05881089cdeab597c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
