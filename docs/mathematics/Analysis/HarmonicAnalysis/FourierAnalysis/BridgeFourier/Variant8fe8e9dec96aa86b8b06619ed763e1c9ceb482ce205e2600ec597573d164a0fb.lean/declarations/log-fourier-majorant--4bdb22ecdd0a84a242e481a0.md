# log_fourier_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bcdafa3-dc58-bb8d-4aa6-748de11746cc",
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
  "slug": "log-fourier-majorant--4bdb22ecdd0a84a242e481a0",
  "source": {
    "blob": "b2d61f9436742e686f967b23ce7686daf323e416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 104,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bdb22ecdd0a84a242e481a0874289703066c412c2e3a4dc10e6baac2a139647",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bcdafa3-dc58-bb8d-4aa6-748de11746cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–140.

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

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d61f9436742e686f967b23ce7686daf323e416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
