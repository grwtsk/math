# backlund_horizontalChi_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af934bdf53717e621ad3fd60f957561b546fffe6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e7cceaf-7393-8f7a-e419-d481df241e3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23fd1af6-bcdc-11b2-83f4-9bc4ddb0b194",
  "kind": "theorem",
  "lexical_name": "backlund_horizontalChi_uniform",
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
  "slug": "backlund-horizontalchi-uniform--dbffd92e31114f8d2897af70",
  "source": {
    "blob": "af934bdf53717e621ad3fd60f957561b546fffe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 283,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbffd92e31114f8d2897af70ed703520c572651eebb5afed6d3d8ef4675823f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23fd1af6-bcdc-11b2-83f4-9bc4ddb0b194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem backlund_horizontalChi_uniform : ∃ C : ℝ, ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q),
    χ ≠ 1 → ∀ T : ℝ, (∀ ρ, IsNontrivialZeroL χ ρ → ρ.im ≠ T) →
      |(∫ σ in (1 / 2 : ℝ)..2, logDeriv χ.LFunction (σ + T * I)).im|
        ≤ C * Real.log (q * (|T| + 3)) := by
  obtain ⟨C, hC⟩ := reZeroSetL_card_le_uniform
  refine ⟨2 * Real.pi * (C + 1), fun q _ χ hχ1 T hord => ?_⟩
  obtain ⟨hfin, hcount⟩ := hC q χ hχ1 T
  have hq1 : (1:ℝ) ≤ q := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne q)
  have hqT : (3:ℝ) ≤ q * (|T| + 3) := by nlinarith [abs_nonneg T]
  have hlog : 1 ≤ Real.log (q * (|T| + 3)) := by
    rw [← Real.log_exp 1]
    exact Real.log_le_log (Real.exp_pos 1) (by linarith [Real.exp_one_lt_d9.trans (by norm_num : (2.7182818286 : ℝ) < 3)])
  have h := im_integral_logDeriv_le hχ1 (LFunction_ne_zero_on_segment hχ1 hord) hfin
  refine h.trans ?_
  have hπ := Real.pi_pos
  nlinarith [hcount, hlog, mul_nonneg hπ.le (sub_nonneg.mpr hlog)]


/-! ## Per-χ forms -/

/-- **(J) the Jensen half of Backlund's bound for L(s,χ)**: #{σ ∈ [1/2,2] : Re L(σ+iT,χ) = 0} ≪_χ log |T|
(per-χ form; from the q-uniform bound, since q(|T|+3) ≤ |T|² once |T| ≥ 2q + 6). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af934bdf53717e621ad3fd60f957561b546fffe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
