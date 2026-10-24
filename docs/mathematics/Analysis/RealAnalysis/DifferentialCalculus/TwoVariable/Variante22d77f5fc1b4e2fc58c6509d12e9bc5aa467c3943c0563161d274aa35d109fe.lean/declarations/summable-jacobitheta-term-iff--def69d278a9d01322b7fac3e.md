# summable_jacobiTheta₂'_term_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c23b7020-e909-b6d1-831f-07fe43ad51fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6446e54-c75d-9717-c803-3d45e14805ff",
  "kind": "lemma",
  "lexical_name": "summable_jacobiTheta₂'_term_iff",
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
  "slug": "summable-jacobitheta-term-iff--def69d278a9d01322b7fac3e",
  "source": {
    "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:def69d278a9d01322b7fac3e20cb1108204c58a624f0c3699578a08bb5b6d04a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6446e54-c75d-9717-c803-3d45e14805ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_jacobiTheta₂'_term_iff (z τ : ℂ) :
    Summable (jacobiTheta₂'_term · z τ) ↔ 0 < im τ := by
  constructor
  · rw [← summable_jacobiTheta₂_term_iff (z := z)]
    refine fun h ↦ (h.norm.mul_left (2 * π)⁻¹).of_norm_bounded_eventually _  ?_
    have : ∀ᶠ (n : ℤ) in cofinite, n ≠ 0 :=
      Int.cofinite_eq ▸ (mem_sup.mpr ⟨eventually_ne_atBot 0, eventually_ne_atTop 0⟩)
    filter_upwards [this] with n hn
    rw [jacobiTheta₂'_term, norm_mul, ← mul_assoc]
    refine le_mul_of_one_le_left (norm_nonneg _) ?_
    simp_rw [norm_mul, norm_I, norm_real, mul_one, norm_of_nonneg pi_pos.le,
      ← ofReal_ofNat, norm_real, norm_of_nonneg two_pos.le, ← ofReal_intCast, norm_real,
      Real.norm_eq_abs, ← Int.cast_abs, ← mul_assoc _ (2 * π),
      inv_mul_cancel₀ (mul_pos two_pos pi_pos).ne', one_mul]
    rw [← Int.cast_one, Int.cast_le]
    exact Int.one_le_abs hn
  · refine fun hτ ↦ ((summable_pow_mul_jacobiTheta₂_term_bound
      |z.im| hτ 1).mul_left (2 * π)).of_norm_bounded _ (fun n ↦ ?_)
    rw [jacobiTheta₂'_term, norm_mul, ← mul_assoc, pow_one]
    refine mul_le_mul (le_of_eq ?_) (norm_jacobiTheta₂_term_le hτ le_rfl le_rfl n)
      (norm_nonneg _) (by positivity)
    simp_rw [norm_mul, Complex.norm_two, norm_I, Complex.norm_of_nonneg pi_pos.le,
      norm_intCast, mul_one, Int.cast_abs]

end term_bounds

/-!
## Definitions of the functions
-/

/-- The two-variable Jacobi theta function,
`θ z τ = ∑' (n : ℤ), cexp (2 * π * I * n * z + π * I * n ^ 2 * τ)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd77f9b89bf0f397ea397436abf6b5f605eeb5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
