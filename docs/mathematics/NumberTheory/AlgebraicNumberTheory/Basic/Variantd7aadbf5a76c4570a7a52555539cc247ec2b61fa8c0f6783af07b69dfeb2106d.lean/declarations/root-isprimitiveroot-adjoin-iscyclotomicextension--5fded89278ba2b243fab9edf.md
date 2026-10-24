# _root_.IsPrimitiveRoot.adjoin_isCyclotomicExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7f2d88a-b77d-6871-bd12-52b7c65e7912",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30b28564-4aee-3fca-5ef1-8740ac929210",
  "kind": "theorem",
  "lexical_name": "_root_.IsPrimitiveRoot.adjoin_isCyclotomicExtension",
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
  "slug": "root-isprimitiveroot-adjoin-iscyclotomicextension--5fded89278ba2b243fab9edf",
  "source": {
    "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 415,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fded89278ba2b243fab9edfdf9337154dbbc3f96ba2166337ceaeb0b5906c4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30b28564-4aee-3fca-5ef1-8740ac929210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsPrimitiveRoot.adjoin_isCyclotomicExtension {ζ : B} {n : ℕ+}
    (h : IsPrimitiveRoot ζ n) : IsCyclotomicExtension {n} A (adjoin A ({ζ} : Set B)) :=
  { exists_prim_root := fun hi => by
      rw [Set.mem_singleton_iff] at hi
      refine' ⟨⟨ζ, subset_adjoin <| Set.mem_singleton ζ⟩, _⟩
      rwa [← IsPrimitiveRoot.coe_submonoidClass_iff, Subtype.coe_mk, hi]
    adjoin_roots := fun x => by
      refine
        adjoin_induction'
          (x := x) (fun b hb => ?_) (fun a => ?_) (fun b₁ b₂ hb₁ hb₂ => ?_)
          (fun b₁ b₂ hb₁ hb₂ => ?_)
      · rw [Set.mem_singleton_iff] at hb
        refine' subset_adjoin _
        simp only [mem_singleton_iff, exists_eq_left, mem_setOf_eq, hb]
        rw [← Subalgebra.coe_eq_one, Subalgebra.coe_pow, Subtype.coe_mk]
        exact ((IsPrimitiveRoot.iff_def ζ n).1 h).1
      · exact Subalgebra.algebraMap_mem _ _
      · exact Subalgebra.add_mem _ hb₁ hb₂
      · exact Subalgebra.mul_mem _ hb₁ hb₂ }
#align is_primitive_root.adjoin_is_cyclotomic_extension IsPrimitiveRoot.adjoin_isCyclotomicExtension

end

section Field

variable {n S}

/-- A cyclotomic extension splits `X ^ n - 1` if `n ∈ S`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785a5fef31b7119321077f221c4b335f05f447e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
