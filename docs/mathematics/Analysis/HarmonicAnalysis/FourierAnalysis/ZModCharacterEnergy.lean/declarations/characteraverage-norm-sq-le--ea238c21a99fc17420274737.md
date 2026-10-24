# characterAverage_norm_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00b116ac-69f7-9e64-1c3f-7701348e2f4c",
  "kind": "theorem",
  "lexical_name": "characterAverage_norm_sq_le",
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
  "slug": "characteraverage-norm-sq-le--ea238c21a99fc17420274737",
  "source": {
    "blob": "425592aaa63e5fc93d0e3a9db0ffb4d360f491fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 215,
    "path": "GRWTSK/Analysis/Fourier/ZModCharacterEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea238c21a99fc174202747378a953e7ad319ffb93c9c2e88325260483a334a12",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b116ac-69f7-9e64-1c3f-7701348e2f4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characterAverage_norm_sq_le (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ : ZMod p) :
    ‖characterAverage S χ‖ ^ 2 ≤ 1 - 2 * pairEnergy S χ := by
  rw [characterAverage_norm_sq]
  calc
    _ ≤ (S.card : ℝ)⁻¹ ^ 2 *
        ∑ x ∈ S, ∑ y ∈ S, (1 - 2 * modularDistance (χ * (x - y)) ^ 2) := by
      apply mul_le_mul_of_nonneg_left _ (sq_nonneg _)
      exact Finset.sum_le_sum fun _ _ => Finset.sum_le_sum fun _ _ => stdAddChar_re_le _
    _ = 1 - 2 * pairEnergy S χ := by
      simp only [Finset.sum_sub_distrib, Finset.sum_const, nsmul_eq_mul]
      simp_rw [← Finset.mul_sum, pairEnergy]
      have hcard : (S.card : ℝ) ≠ 0 := by exact_mod_cast ne_of_gt hS.card_pos
      field_simp

/-- The one-part estimate used in source equation (3.2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModCharacterEnergy.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `425592aaa63e5fc93d0e3a9db0ffb4d360f491fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
