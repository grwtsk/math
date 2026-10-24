# weyl_posIndexAbove_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ba23d82fbd9c1d512145361a109ee57a293bfcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/961387b3f2b8a6dc62d72dfd6a6e8ad5800b638b8b341ffdde4d7f5afc41d900.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04834c4e-0f7e-37a4-008e-2724480fb309",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0aeb2b63-4127-8297-222d-0eaf3fec53af",
  "kind": "theorem",
  "lexical_name": "weyl_posIndexAbove_le",
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
  "slug": "weyl-posindexabove-le--3e5f530c4df3d0f946a7a7ad",
  "source": {
    "blob": "4ba23d82fbd9c1d512145361a109ee57a293bfcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Weyl/Variant961387b3f2b8a6dc62d72dfd6a6e8ad5800b638b8b341ffdde4d7f5afc41d900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e5f530c4df3d0f946a7a7ad7ec1fc1d6500dc92b910d1df92f2a158f18fd945",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Weyl/Variant961387b3f2b8a6dc62d72dfd6a6e8ad5800b638b8b341ffdde4d7f5afc41d900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aeb2b63-4127-8297-222d-0eaf3fec53af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weyl_posIndexAbove_le {A E : Matrix n n 𝕜}
    (hA : A.IsHermitian) (hE : E.IsHermitian) {θ : ℝ}
    (hθ : ∀ i, |hE.eigenvalues i| ≤ θ) :
    posIndexAbove (hA.add hE) θ ≤ posIndex hA := by
  set hM : (A + E).IsHermitian := hA.add hE
  -- `W := range(specMap hM (·−θ)⁺)` has `dim = posIndexAbove hM θ`
  -- and `hermForm (A+E) x > θ·‖x‖²` on `W ∖ {0}`.
  set W := LinearMap.range (specMap hM (fun t => (t - θ)⁺)).mulVecLin
  have hdimW : Module.finrank 𝕜 W = posIndexAbove hM θ :=
    finrank_range_truncPos hM θ
  have hgt : ∀ x ∈ W, x ≠ 0 → θ * ∑ i, ‖x i‖ ^ 2 < hermForm (A + E) x :=
    hermForm_gt_on_range_truncPos hM θ
  -- `hermForm E x ≤ θ·‖x‖²` always (all `λᵢ(E) ≤ |λᵢ(E)| ≤ θ`).
  have hEle : ∀ x, hermForm E x ≤ θ * ∑ i, ‖x i‖ ^ 2 := by
    intro x
    exact hermForm_le_of_eigenvalues_le hE
      (fun i => (le_abs_self _).trans (hθ i)) x
  -- Hence `A` is positive definite on `W`.
  have hposW : PosDefOn A W := by
    intro x hxW hne
    have h1 := hgt x hxW hne
    have h2 := hEle x
    have h3 : hermForm (A + E) x = hermForm A x + hermForm E x := hermForm_add A E x
    linarith
  -- Hard Sylvester: `dim W ≤ posIndex hA`.
  calc posIndexAbove hM θ
      = Module.finrank 𝕜 W := hdimW.symm
    _ ≤ posIndex hA := finrank_le_posIndex_of_posDefOn hA hposW

/-- **Thresholded Cauchy–Schwarz count** (the paper's [lem:CS], §3).
For Hermitian `R` with `tr R > θ · d`,
  `n₊^θ(R) ≥ (tr R − θd)² / tr(R²)`.

Proof: With `S := ∑_{λᵢ > θ} λᵢ`, note `S ≥ tr R − θd > 0` (negative
eigenvalues only help). By Cauchy–Schwarz, `S² ≤ n₊^θ(R) · ∑_{λᵢ>θ} λᵢ²
≤ n₊^θ(R) · tr(R²)`.

This is a pure real-eigenvalue statement; the proof is Cauchy–Schwarz on the
eigenvalues above the threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Weyl/Variant961387b3f2b8a6dc62d72dfd6a6e8ad5800b638b8b341ffdde4d7f5afc41d900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Weyl/Variant961387b3f2b8a6dc62d72dfd6a6e8ad5800b638b8b341ffdde4d7f5afc41d900.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ba23d82fbd9c1d512145361a109ee57a293bfcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
