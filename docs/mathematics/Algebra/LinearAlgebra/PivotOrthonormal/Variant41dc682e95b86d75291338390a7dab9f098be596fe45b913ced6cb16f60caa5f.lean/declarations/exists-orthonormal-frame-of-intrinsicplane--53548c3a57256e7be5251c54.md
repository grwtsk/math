# exists_orthonormal_frame_of_intrinsicPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ceedf2d-4dc2-ebb9-6197-2295fd9799f5",
  "kind": "theorem",
  "lexical_name": "exists_orthonormal_frame_of_intrinsicPlane",
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
  "slug": "exists-orthonormal-frame-of-intrinsicplane--53548c3a57256e7be5251c54",
  "source": {
    "blob": "5aa359efd7482d0e7ae977cbe4c36853121b58ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53548c3a57256e7be5251c545852573d378d3a6afb6037cece12313c5943b875",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ceedf2d-4dc2-ebb9-6197-2295fd9799f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orthonormal_frame_of_intrinsicPlane (P : IntrinsicPlane k n) :
    ∃ A : FullRankFrame k n,
      representedPlane A = P ∧ A.val * A.val.transpose = 1 := by
  classical
  let e : (Fin n → ℝ) ≃ₗ[ℝ] EuclideanSpace ℝ (Fin n) :=
    (WithLp.linearEquiv 2 ℝ (Fin n → ℝ)).symm
  let W : Submodule ℝ (EuclideanSpace ℝ (Fin n)) := P.val.map e.toLinearMap
  let t : P.val ≃ₗ[ℝ] W := e.submoduleMap P.val
  have hW : Module.finrank ℝ W = k := t.finrank_eq.symm.trans P.property
  let b : OrthonormalBasis (Fin k) ℝ W :=
    (stdOrthonormalBasis ℝ W).reindex (finCongr hW)
  let bP : Module.Basis (Fin k) ℝ P.val := b.toBasis.map t.symm
  let A : Matrix (Fin k) (Fin n) ℝ := fun i j => (bP i).val j
  have hspace : frameRowSpace A = P.val := by
    change Submodule.span ℝ (Set.range (fun i => (bP i).val)) = P.val
    calc
      _ = (Submodule.span ℝ (Set.range bP)).map P.val.subtype := by
        rw [Submodule.map_span, ← Set.range_comp]
        rfl
      _ = (⊤ : Submodule ℝ P.val).map P.val.subtype := by rw [bP.span_eq]
      _ = P.val := by rw [Submodule.map_top, P.val.range_subtype]
  have hgram : A * A.transpose = 1 := by
    ext i j
    have he : inner ℝ (b j) (b i) = (A * A.transpose) i j := by
      change inner ℝ (WithLp.toLp 2 (A j)) (WithLp.toLp 2 (A i)) = _
      simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
        inner_matrix_row_row A A j i
    rw [← he, Matrix.one_apply]
    simpa only [eq_comm] using orthonormal_iff_ite.mp b.orthonormal j i
  have hrank : A.rank = k := by
    rw [Matrix.rank_eq_finrank_span_row]
    change Module.finrank ℝ (frameRowSpace A) = k
    rw [hspace]
    exact P.property
  exact ⟨⟨A, hrank⟩, Subtype.ext hspace, hgram⟩

/-- Two actual orthonormal presentations differ by an actual orthogonal row change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aa359efd7482d0e7ae977cbe4c36853121b58ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
