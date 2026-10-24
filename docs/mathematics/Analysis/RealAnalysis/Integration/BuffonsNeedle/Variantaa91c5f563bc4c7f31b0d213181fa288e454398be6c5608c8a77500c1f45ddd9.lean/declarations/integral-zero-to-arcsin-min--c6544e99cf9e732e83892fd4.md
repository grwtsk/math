# integral_zero_to_arcsin_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:570d9fbe-185c-285d-11af-79db39c0bbc9",
  "kind": "lemma",
  "lexical_name": "integral_zero_to_arcsin_min",
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
  "slug": "integral-zero-to-arcsin-min--c6544e99cf9e732e83892fd4",
  "source": {
    "blob": "121cb65250c178f5ce5ae5c1e761d17ef7bf6083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 311,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6544e99cf9e732e83892fd410147a0ed82e7d0666bd67dc3ba89dcca2207180",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:570d9fbe-185c-285d-11af-79db39c0bbc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_zero_to_arcsin_min :
    ∫ θ in (0)..(d / l).arcsin, min d (θ.sin * l) = (1 - √(1 - (d / l) ^ 2)) * l := by
  have : Set.EqOn (fun θ => min d (θ.sin * l)) (Real.sin · * l) (Set.uIcc 0 (d / l).arcsin) := by
    intro θ ⟨hθ₁, hθ₂⟩
    have : 0 ≤ (d / l).arcsin := Real.arcsin_nonneg.mpr (div_nonneg hd.le hl.le)
    simp only [min_eq_left this, max_eq_right this] at hθ₁ hθ₂
    have hθ_mem : θ ∈ Set.Ioc (-(π / 2)) (π / 2) := by
      exact ⟨lt_of_lt_of_le (neg_lt_zero.mpr (div_pos Real.pi_pos two_pos)) hθ₁,
        le_trans hθ₂ (d / l).arcsin_mem_Icc.right⟩
    simp_rw [min_eq_right ((le_div_iff₀ hl).mp ((Real.le_arcsin_iff_sin_le' hθ_mem).mp hθ₂))]
  rw [intervalIntegral.integral_congr this, intervalIntegral.integral_mul_const, integral_sin,
    Real.cos_zero, Real.cos_arcsin]

include hl in
/--
The second of two adjacent integrals in the long case. In the range `(d / l).arcsin..(π / 2)`, we
have that `d ≤ θ.sin * l`, and thus the integral is `∫ θ in (d / l).arcsin..(π / 2), d`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `121cb65250c178f5ce5ae5c1e761d17ef7bf6083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
