# exists_jacobiSum_eq_neg_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b74e1ee-d107-6727-3ce1-ada346f09e20",
  "kind": "lemma",
  "lexical_name": "exists_jacobiSum_eq_neg_one_add",
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
  "slug": "exists-jacobisum-eq-neg-one-add--981118ea0e0a64d32b7694aa",
  "source": {
    "blob": "793bd3d2060d6b433abc66b3c72dac4352af3861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 281,
    "path": "GRWTSK/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:981118ea0e0a64d32b7694aa5d2e0806cd8ebdb9d5354668ab3988a452063d93",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b74e1ee-d107-6727-3ce1-ada346f09e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_jacobiSum_eq_neg_one_add {n : ℕ} (hn : 2 < n) {χ ψ : MulChar F R}
    {μ : R} (hχ : χ ^ n = 1) (hψ : ψ ^ n = 1) (hn' : n ∣ Fintype.card F - 1)
    (hμ : IsPrimitiveRoot μ n) :
    ∃ z ∈ Algebra.adjoin ℤ {μ}, jacobiSum χ ψ = -1 + z * (μ - 1) ^ 2 := by
  obtain ⟨q, hq⟩ := hn'
  rw [Nat.sub_eq_iff_eq_add NeZero.one_le] at hq
  obtain ⟨z₁, hz₁, Hz₁⟩ := hμ.self_sub_one_pow_dvd_order hn
  by_cases hχ₀ : χ = 1 <;> by_cases hψ₀ : ψ = 1
  · rw [hχ₀, hψ₀, jacobiSum_one_one]
    refine ⟨q * z₁, Subalgebra.mul_mem _ (Subalgebra.natCast_mem _ q) hz₁, ?_⟩
    rw [hq, Nat.cast_add, Nat.cast_mul, Hz₁]
    ring
  · refine ⟨0, Subalgebra.zero_mem _, ?_⟩
    rw [hχ₀, jacobiSum_one_nontrivial hψ₀, zero_mul, add_zero]
  · refine ⟨0, Subalgebra.zero_mem _, ?_⟩
    rw [jacobiSum_comm, hψ₀, jacobiSum_one_nontrivial hχ₀, zero_mul, add_zero]
  · classical
    rw [jacobiSum_eq_aux, MulChar.sum_eq_zero_of_ne_one hχ₀, MulChar.sum_eq_zero_of_ne_one hψ₀, hq]
    have : NeZero n := ⟨by omega⟩
    have H := MulChar.exists_apply_sub_one_mul_apply_sub_one hχ hψ hμ
    have Hcs x := (H x).choose_spec
    refine ⟨-q * z₁ + ∑ x ∈ (univ \ {0, 1} : Finset F), (H x).choose, ?_, ?_⟩
    · refine Subalgebra.add_mem _ (Subalgebra.mul_mem _ (Subalgebra.neg_mem _ ?_) hz₁) ?_
      · exact Subalgebra.natCast_mem ..
      · exact Subalgebra.sum_mem _ fun x _ ↦ (Hcs x).1
    · conv => enter [1, 2, 2, x]; rw [(Hcs x).2]
      rw [← Finset.sum_mul, Nat.cast_add, Nat.cast_mul, Hz₁]
      ring

end image

section GaussSum

variable {F R : Type*} [Fintype F] [Field F] [CommRing R] [IsDomain R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793bd3d2060d6b433abc66b3c72dac4352af3861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
