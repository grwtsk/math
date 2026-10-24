# hasDerivAt_thetaGaussianSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10a5b6af-79de-075d-3338-156b992f6a9b",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaGaussianSum",
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
  "slug": "hasderivat-thetagaussiansum--ab964f9b6458a980b47bc626",
  "source": {
    "blob": "6952e30af9f85ba807b223f26b3fde71be8d6866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab964f9b6458a980b47bc6265fe31809d44813d7c06d973ba9547245e48924fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a5b6af-79de-075d-3338-156b992f6a9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem hasDerivAt_thetaGaussianSum (k c : ℕ) (t : ℝ) :
    HasDerivAt (thetaGaussianSum k c)
      ((c : ℝ) * thetaGaussianSum k c t -
        4 * Real.pi * thetaGaussianSum (k + 2) (c + 4) t) t := by
  have hbound := ((thetaGaussianCompactBound_summable k c (t - 1) (t + 1)).mul_left
    ‖(c : ℝ)‖).add ((thetaGaussianCompactBound_summable (k + 2) (c + 4)
      (t - 1) (t + 1)).mul_left ‖4 * Real.pi‖)
  have h := hasDerivAt_tsum_of_isPreconnected hbound
    isOpen_Ioo (convex_Ioo (t - 1) (t + 1)).isPreconnected
    (fun m u _ => hasDerivAt_thetaGaussianTerm k c m u)
    (fun m u hu => (norm_sub_le _ _).trans (by
      simp only [norm_mul]
      exact add_le_add
        (mul_le_mul_of_nonneg_left
          (thetaGaussianTerm_norm_le_compactBound k c m ⟨hu.1.le, hu.2.le⟩) (norm_nonneg _))
        (mul_le_mul_of_nonneg_left
          (thetaGaussianTerm_norm_le_compactBound (k+2) (c+4) m ⟨hu.1.le, hu.2.le⟩)
          (by positivity))))
    (show t ∈ Ioo (t-1) (t+1) by constructor <;> linarith)
    (thetaGaussianTerm_summable k c t) (by constructor <;> linarith)
  convert! h using 1
  rw [((thetaGaussianTerm_summable k c t).mul_left (c : ℝ)).tsum_sub
    ((thetaGaussianTerm_summable (k+2) (c+4) t).mul_left (4 * Real.pi)),
    tsum_mul_left, tsum_mul_left]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6952e30af9f85ba807b223f26b3fde71be8d6866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
