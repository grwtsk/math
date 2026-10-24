# posSemidef_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b04d10e-5947-50d8-81a8-d3bd100b3041",
  "kind": "theorem",
  "lexical_name": "posSemidef_tfae",
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
  "slug": "possemidef-tfae--4b1fa222602f778bbb1aaf47",
  "source": {
    "blob": "8813c268d018faaad6fd110801a41dd59228481a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 235,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b1fa222602f778bbb1aaf4794d152c8376c3d125adba68b439af36543c41ca5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b04d10e-5947-50d8-81a8-d3bd100b3041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posSemidef_tfae : List.TFAE [K.PosSemidef, K.IsHermitian ∧ ∀ (f : X × V →₀ 𝕜),
    0 ≤ RCLike.re (f.sum fun xv z ↦ f.sum fun xv' w ↦ conj z * w * ⟪K xv'.1 xv.1 xv.2, xv'.2⟫_𝕜),
    K.IsHermitian ∧ ∀ (vv : X →₀ V),
    0 ≤ RCLike.re (vv.sum fun x w ↦ vv.sum fun x' w' ↦ ⟪K x' x w, w'⟫_𝕜)] := by
  have {h p1 p2 p3 : Prop} (htfae : h → List.TFAE [p1, p2, p3]) :
      List.TFAE [h ∧ p1, h ∧ p2, h ∧ p3] := by
    tfae_have 1 → 2 := fun ⟨h, t⟩ ↦ ⟨h, ((htfae h).out 1 2).mp t⟩
    tfae_have 2 → 3 := fun ⟨h, t⟩ ↦ ⟨h, ((htfae h).out 2 3).mp t⟩
    tfae_have 3 → 1 := fun ⟨h, t⟩ ↦ ⟨h, ((htfae h).out 3 1).mp t⟩
    tfae_finish
  refine this fun hHerm ↦ ?_
  simp only [nonneg_iff_isPositive, isPositive_def', isSelfAdjoint_finsuppSum hHerm,
    reApplyInnerSelf_apply, true_and]
  simp only [star_eq_adjoint, zero_apply, add_apply, implies_true, Finsupp.sum_apply'',
    FunLike.coe_mul_eq_comp, Function.comp_apply, Finsupp.sum_inner, adjoint_inner_left]
  -- FIXME: nontriviality should work here
  refine (subsingleton_or_nontrivial V).elim (fun h ↦ ?_) fun _ ↦ ?_
  · have : ∀ v : V, v = 0 := fun v ↦ Subsingleton.elim v 0
    simp [this]
  obtain ⟨v, hv⟩ := exists_ne (0 : V)
  tfae_have 1 → 2 := fun h ff ↦ by
    rw [Finsupp.sum_comm]
    convert! h (ff.sum fun xv z ↦ .single xv.1 ((z / ‖v‖ ^ 2) • (innerSL 𝕜 v).smulRight xv.2)) v
    simp [Finsupp.sum_sum_index, inner_add_right, inner_add_left, ← smul_assoc, hv]
    simp [inner_smul_left, inner_smul_right, ← mul_assoc, mul_comm]
  tfae_have 2 → 3 := fun h vv ↦ by
    simpa [add_mul, Finsupp.sum_sum_index] using (h (vv.sum fun x v ↦ .single ⟨x, v⟩ 1))
  tfae_have 3 → 1 := fun h ff v ↦ by
    rw [Finsupp.sum_comm]
    simpa [Finsupp.sum_sum_index, inner_add_right, inner_add_left] using
      h (ff.sum fun x T ↦ .single x (T v))
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8813c268d018faaad6fd110801a41dd59228481a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
