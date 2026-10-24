# re_trace_mul_eq_eigenvalue_bilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ef8c701b65ada5ecdfd8d1fe0842e482d6c7981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b2bd2de-63aa-aa62-4428-9982465b972a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:934ff32d-8d3e-5c6a-6684-245bbd752483",
  "kind": "lemma",
  "lexical_name": "re_trace_mul_eq_eigenvalue_bilinear",
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
  "slug": "re-trace-mul-eq-eigenvalue-bilinear--dbb375ae4e649011415eb182",
  "source": {
    "blob": "5ef8c701b65ada5ecdfd8d1fe0842e482d6c7981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 78,
    "path": "GRWTSK/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbb375ae4e649011415eb18220e90b49864837616b00670cda598868d5867573",
  "verification": {
    "reference": "docs/verification/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:934ff32d-8d3e-5c6a-6684-245bbd752483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma re_trace_mul_eq_eigenvalue_bilinear {A B : Matrix n n 𝕜}
    (hA : A.IsHermitian) (hB : B.IsHermitian) :
    RCLike.re (A * B).trace =
      ∑ k, ∑ l, hA.eigenvalues k *
        normSqMatrix (star (hA.eigenvectorUnitary : Matrix n n 𝕜) *
          (hB.eigenvectorUnitary : Matrix n n 𝕜)) k l * hB.eigenvalues l := by
  set Ua : Matrix n n 𝕜 := ↑hA.eigenvectorUnitary
  set Ub : Matrix n n 𝕜 := ↑hB.eigenvectorUnitary
  set Da : Matrix n n 𝕜 := diagonal (RCLike.ofReal ∘ hA.eigenvalues)
  set Db : Matrix n n 𝕜 := diagonal (RCLike.ofReal ∘ hB.eigenvalues)
  set W := star Ua * Ub
  have hUaUa : Ua * star Ua = 1 := Unitary.mul_star_self_of_mem hA.eigenvectorUnitary.2
  have hUaUa' : star Ua * Ua = 1 := Unitary.star_mul_self_of_mem hA.eigenvectorUnitary.2
  -- Step 1: `tr(AB) = tr(Dₐ W Dᵦ Wᴴ)` by spectral theorem + trace cycling.
  have hstarW : star Ub * Ua = star W := by
    show star Ub * Ua = star (star Ua * Ub); rw [StarMul.star_mul, star_star]
  have hAB : (A * B).trace = (Da * W * Db * star W).trace := by
    -- `Ua (Da W Db Wᴴ) Uaᴴ = (Ua Da Uaᴴ)(Ub Db Ubᴴ)` since `Ua Uaᴴ = 1`.
    have key : Ua * (Da * W * Db * star W) * star Ua
        = Ua * Da * star Ua * (Ub * Db * star Ub) := by
      have step : Ua * (Da * W * Db * star W) * star Ua
          = Ua * Da * star Ua * (Ub * Db * star Ub) * (Ua * star Ua) := by
        rw [← hstarW]
        show Ua * (Da * (star Ua * Ub) * Db * (star Ub * Ua)) * star Ua = _
        noncomm_ring
      rw [step, hUaUa, mul_one]
    conv_lhs => rw [hA.spectral_theorem, hB.spectral_theorem,
      Unitary.conjStarAlgAut_apply, Unitary.conjStarAlgAut_apply, ← key,
      trace_mul_comm, ← mul_assoc, hUaUa', one_mul]
  -- Step 2: compute `tr(Dₐ W Dᵦ Wᴴ) = ∑ₖₗ aₖ Wₖₗ bₗ W̄ₖₗ`.
  -- Use `diagonal_mul`/`mul_diagonal` to evaluate entries of `Dₐ W Dᵦ`.
  have hentry : (Da * W * Db * star W).trace
      = ∑ k, ∑ l, (hA.eigenvalues k : 𝕜) * (hB.eigenvalues l : 𝕜)
          * (W k l * starRingEnd 𝕜 (W k l)) := by
    unfold Matrix.trace
    simp only [diag_apply]
    refine sum_congr rfl fun k _ => ?_
    rw [Matrix.mul_apply]
    refine sum_congr rfl fun l _ => ?_
    rw [mul_diagonal, diagonal_mul, star_apply, RCLike.star_def]
    simp only [Function.comp_apply]; ring
  rw [hAB, hentry]
  -- Step 3: take `Re`; identify `z · conj z = ‖z‖²` and push reals.
  simp only [RCLike.mul_conj, map_sum, normSqMatrix, Matrix.of_apply]
  refine sum_congr rfl fun k _ => sum_congr rfl fun l _ => ?_
  rw [show ((hA.eigenvalues k : 𝕜) * hB.eigenvalues l * (‖W k l‖ : 𝕜) ^ 2 : 𝕜)
        = ((hA.eigenvalues k * hB.eigenvalues l * ‖W k l‖ ^ 2 : ℝ) : 𝕜) by push_cast; ring,
    RCLike.ofReal_re]
  ring

end Bilinear

section Rearrangement

/-- Two antitone functions on a linear order monovary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef8c701b65ada5ecdfd8d1fe0842e482d6c7981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
