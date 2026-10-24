# log_fourier_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41933025f3086285c4247232331e6fbc843481b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5df8ecdc-44c2-c54e-76e9-4efd5f923957",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:826c4b50-d303-b73b-3747-622a3f213cc6",
  "kind": "theorem",
  "lexical_name": "log_fourier_majorant",
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
  "slug": "log-fourier-majorant--41efbf1bc992cbd1331183a9",
  "source": {
    "blob": "41933025f3086285c4247232331e6fbc843481b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 96,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41efbf1bc992cbd1331183a91e22f122597c4a3ecc88854bf0597225fd90bf95",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:826c4b50-d303-b73b-3747-622a3f213cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_fourier_majorant (ξ n b d : ℝ) (hn : 0 ≤ n) (hnb : n ≤ b)
    (hnd : |ξ| * n ≤ d) :
    Real.log (1 + 4 * ξ ^ 2) * n ^ 2 ≤
      (16 * (b ^ 2 + d ^ 2)) * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ)) := by
  have hξ := sq_nonneg ξ
  have hy : 0 < 1 + ξ ^ 2 := by positivity
  have hlog : Real.log (1 + 4 * ξ ^ 2) ≤ 4 * Real.log (1 + ξ ^ 2) := by
    have hp : Real.log ((1 + ξ ^ 2) ^ 4) = 4 * Real.log (1 + ξ ^ 2) :=
      Real.log_pow (1 + ξ ^ 2) 4
    rw [← hp]
    apply Real.log_le_log (by positivity)
    nlinarith [sq_nonneg (ξ ^ 2), sq_nonneg (ξ ^ 4)]
  have hpower : (1 + ξ ^ 2) ^ (1 / 4 : ℝ) =
      (1 + ξ ^ 2) * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ)) := by
    have hp := Real.rpow_add hy (1 : ℝ) (-(3 / 4 : ℝ))
    norm_num at hp
    exact hp
  have hlog' := Real.log_le_rpow_div hy.le (by norm_num : (0 : ℝ) < 1 / 4)
  have hb : 0 ≤ b := hn.trans hnb
  have hd : 0 ≤ d := (mul_nonneg (abs_nonneg ξ) hn).trans hnd
  have hb2 : n ^ 2 ≤ b ^ 2 := by nlinarith
  have hd2 : ξ ^ 2 * n ^ 2 ≤ d ^ 2 := by
    have hnn : 0 ≤ |ξ| * n := mul_nonneg (abs_nonneg ξ) hn
    have hs : (|ξ| * n) ^ 2 ≤ d ^ 2 := sq_le_sq₀ hnn hd |>.2 hnd
    simpa [mul_pow, sq_abs] using hs
  have hm : (1 + ξ ^ 2) * n ^ 2 ≤ b ^ 2 + d ^ 2 := by nlinarith
  calc
    Real.log (1 + 4 * ξ ^ 2) * n ^ 2 ≤
        (16 * (1 + ξ ^ 2) ^ (1 / 4 : ℝ)) * n ^ 2 := by
      apply mul_le_mul_of_nonneg_right _ (sq_nonneg n)
      linarith
    _ = 16 * ((1 + ξ ^ 2) * n ^ 2) *
        (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ)) := by rw [hpower]; ring
    _ ≤ (16 * (b ^ 2 + d ^ 2)) * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ)) := by
      gcongr

/-- C¹ data with integrable function and derivative have genuine logarithmic Fourier energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41933025f3086285c4247232331e6fbc843481b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
