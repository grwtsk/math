# nonconstant_monomial_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7cc1b92-ae2e-5364-db7a-ccd1bede94a1",
  "kind": "theorem",
  "lexical_name": "nonconstant_monomial_small",
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
  "slug": "nonconstant-monomial-small--8e041a5278d2deb585ce5428",
  "source": {
    "blob": "c8be5f68763401acd31bb06277211e249ad2fb77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 22,
    "path": "GRWTSK/Algebra/InterpolationScalingCost/Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e041a5278d2deb585ce5428e245578bbd235635f200d8b90732fe7c0aacc68a",
  "verification": {
    "reference": "docs/verification/Algebra/InterpolationScalingCost/Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7cc1b92-ae2e-5364-db7a-ccd1bede94a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonconstant_monomial_small (x : Fin 3 → ℂ) {ε : ℝ}
    (_hε : 0 ≤ ε) (hε1 : ε ≤ 1) (hx : ∀ i, ‖x i‖ ≤ ε)
    (d : Fin 3 →₀ ℕ) (hd : d ≠ 0) :
    ‖∏ i ∈ d.support, x i ^ d i‖ ≤ ε := by
  obtain ⟨i, hi⟩ : ∃ i, d i ≠ 0 := by
    by_contra h
    push Not at h
    apply hd
    ext j
    exact h j
  have hmem : i ∈ d.support := Finsupp.mem_support_iff.mpr hi
  rw [norm_prod]
  calc
    _ ≤ ∏ j ∈ d.support, (if j = i then ε else 1) := by
      apply Finset.prod_le_prod
      · intro j _; exact norm_nonneg _
      · intro j _
        rw [norm_pow]
        by_cases hj : j = i
        · subst j
          rw [if_pos rfl]
          exact (pow_le_pow_of_le_one (norm_nonneg _) ((hx i).trans hε1)
            (Nat.one_le_iff_ne_zero.mpr hi)).trans (by simpa using hx i)
        · rw [if_neg hj]
          exact pow_le_one₀ (norm_nonneg _) ((hx j).trans hε1)
    _ = ε := by simp [hmem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InterpolationScalingCost/Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InterpolationScalingCost/Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8be5f68763401acd31bb06277211e249ad2fb77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
