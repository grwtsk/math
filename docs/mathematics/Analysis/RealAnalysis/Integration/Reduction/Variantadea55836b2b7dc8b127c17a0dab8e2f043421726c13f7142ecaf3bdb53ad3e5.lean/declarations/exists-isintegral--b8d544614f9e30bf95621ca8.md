# exists_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67494c807f64aaf882dd2b6b0edf366df83ba3f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5585bb9f-c229-6b05-3c77-9c0a942a1891",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12da539b-24d6-fe10-54a5-ecbaa0907cda",
  "kind": "theorem",
  "lexical_name": "exists_isIntegral",
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
  "slug": "exists-isintegral--b8d544614f9e30bf95621ca8",
  "source": {
    "blob": "67494c807f64aaf882dd2b6b0edf366df83ba3f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8d544614f9e30bf95621ca8b82d60189077fe5c64d9f0fa7c069bed0c67f470",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12da539b-24d6-fe10-54a5-ecbaa0907cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isIntegral (W : WeierstrassCurve K) :
    ∃ C : VariableChange K, IsIntegral R (C • W) := by
  let l₀ := [W.a₁, W.a₂, W.a₃, W.a₄, W.a₆]
  let l := l₀.map (fun a ↦ valuation R K a)
  let lmax : ValueGroup R K :=
    l.maximum_of_length_pos (by simp [l₀, l])
  have hlmax_mem : lmax ∈ l :=
    List.maximum_of_length_pos_mem (by simp [l₀, l])
  have hlmax : ∀ v ∈ l, v ≤ lmax := fun v hv ↦
    List.le_maximum_of_length_pos_of_mem hv (by simp [l₀, l])
  by_cases hlmax_le_1 : lmax ≤ 1
  · use ⟨1, 0, 0, 0⟩
    apply isIntegral_of_exists_lift R
    all_goals simpa [← mem_integer_iff, variableChange_def, Valuation.mem_integer_iff]
      using (hlmax _ (by simp [l₀, l])).trans hlmax_le_1
  · have hlmax_ge_1 : lmax ≥ 1 := le_of_not_ge hlmax_le_1
    have h : ∃ a : K, valuation R K a = lmax := by
      let i : ℕ := l.idxOf lmax
      have hi : i < l.length := List.idxOf_lt_length_of_mem hlmax_mem
      use l₀[i]
      have hi₁ : (valuation R K) l₀[i] = l[i] := by simp [l]
      simpa only [hi₁] using (List.getElem_idxOf hi)
    choose a ha using h
    have ha₀ : a ≠ 0 := by
      by_contra ha₀; simp only [ha₀, map_zero] at ha
      exact (ha ▸ hlmax_le_1) zero_le_one
    use ⟨Units.mk0 a ha₀, 0, 0, 0⟩
    apply isIntegral_of_exists_lift R
    all_goals
      apply (mem_integer_iff _ _ _).mp
      simp only [variableChange_def, Units.val_inv_eq_inv_val, Units.val_mk0, mul_zero, add_zero,
        inv_pow, zero_mul, sub_zero, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, zero_pow]
      apply (Valuation.mem_integer_iff _ _).mpr
      simp only [map_mul, map_inv₀, map_pow, ha]
      refine inv_mul_le_one_of_le₀ ?_ zero_le
      refine (hlmax _ (by simp [l₀, l])).trans ?_
    any_goals
      apply le_self_pow hlmax_ge_1.le
      linarith
    rfl

end Integral

section UIntegral

open Polynomial

variable {R : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] {K : Type*} [Field K]
  [Algebra R K] [IsFractionRing R K] {W W' : WeierstrassCurve K} [IsIntegral R W] [IsIntegral R W']
  {CK : VariableChange K} (hCK : CK • W = W') {u : Rˣ} (hu : algebraMap R K u = CK.u)

include hCK hu

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67494c807f64aaf882dd2b6b0edf366df83ba3f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
