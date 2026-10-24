# Matrix.det_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d353d9b-cca7-d9b7-f733-296153bef0c5",
  "kind": "theorem",
  "lexical_name": "Matrix.det_det",
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
  "slug": "matrix-det-det--577c6ea2a012df2c71609cd5",
  "source": {
    "blob": "42d663dda904b3e3a6d1ce15b2bfb6aeaf238716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:577c6ea2a012df2c71609cd5a9ff3a7789a8403e7663bfb0ce7b7ec3b933b3a9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d353d9b-cca7-d9b7-f733-296153bef0c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.det_det [Fintype m] [Fintype n] (f : S →+* Matrix n n R) :
    (f M.det).det = ((M.map f).comp m m n n R).det := by
  set l := Fintype.card m with hl
  clear_value l; revert R S m
  induction' l with l ih <;> intro R S m _ _ M _ _ f card
  · rw [eq_comm, Fintype.card_eq_zero_iff] at card
    simp_rw [Matrix.det_isEmpty, map_one, det_one]
  have ⟨k⟩ := Fintype.card_pos_iff.mp (l.succ_pos.trans_eq card)
  let f' := f.polyToMatrix
  let M' := cornerAddX M k
  have : (f' M'.det).det = ((M'.map f').comp m m n n R[X]).det := by
    refine sub_eq_zero.mp <| mem_nonZeroDivisors_iff.mp
      (pow_mem ?_ _) _ (det_det_aux k fun M ↦ ih _ _ <| by simp [← card])
    rw [polyToMatrix_cornerAddX, ← charpoly]
    exact (Matrix.charpoly_monic _).mem_nonZeroDivisors
  rw [← eval_zero_det_det, congr_arg (eval 0) this, eval_zero_comp_det]

variable [Algebra R S] [Module.Free R S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42d663dda904b3e3a6d1ce15b2bfb6aeaf238716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
