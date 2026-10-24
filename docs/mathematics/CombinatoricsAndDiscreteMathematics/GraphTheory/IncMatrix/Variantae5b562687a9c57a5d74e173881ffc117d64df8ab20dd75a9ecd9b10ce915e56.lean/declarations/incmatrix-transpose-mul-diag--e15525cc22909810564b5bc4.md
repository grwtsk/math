# incMatrix_transpose_mul_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b849f792-447b-5fa6-9f5e-e405ed34bf47",
  "kind": "theorem",
  "lexical_name": "incMatrix_transpose_mul_diag",
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
  "slug": "incmatrix-transpose-mul-diag--e15525cc22909810564b5bc4",
  "source": {
    "blob": "37cb0d68453c891de87c01a60cd27ceaf784ab63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e15525cc22909810564b5bc4f8bee09964b6df0a2c93978b0c85fba6f10c1f45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b849f792-447b-5fa6-9f5e-e405ed34bf47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incMatrix_transpose_mul_diag [Fintype α] [Decidable (e ∈ G.edgeSet)] :
    ((G.incMatrix R)ᵀ * G.incMatrix R) e e = if e ∈ G.edgeSet then 2 else 0 := by
  classical
    simp only [Matrix.mul_apply, incMatrix_apply', transpose_apply, ite_zero_mul_ite_zero, one_mul,
      sum_boole, and_self_iff]
    split_ifs with h
    · revert h
      refine e.ind ?_
      intro v w h
      rw [← Nat.cast_two, ← card_pair (G.ne_of_adj h)]
      simp only [mk'_mem_incidenceSet_iff, G.mem_edgeSet.mp h, true_and, mem_univ, forall_true_left,
        forall_eq_or_imp, forall_eq, and_self, mem_singleton, ne_eq]
      congr 2
      ext u
      simp
    · revert h
      refine e.ind ?_
      intro v w h
      simp [mk'_mem_incidenceSet_iff, G.mem_edgeSet.not.mp h]

end NonAssocSemiring

section Semiring

variable [Fintype (Sym2 α)] [Semiring R] {a b : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cb0d68453c891de87c01a60cd27ceaf784ab63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
