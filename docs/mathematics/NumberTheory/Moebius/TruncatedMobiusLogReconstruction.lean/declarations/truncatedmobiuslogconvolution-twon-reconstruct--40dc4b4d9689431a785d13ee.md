# truncatedMobiusLogConvolution_twoN_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc2c0d8f-5401-1ad2-50f9-964fcb875214",
  "kind": "theorem",
  "lexical_name": "truncatedMobiusLogConvolution_twoN_reconstruct",
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
  "slug": "truncatedmobiuslogconvolution-twon-reconstruct--40dc4b4d9689431a785d13ee",
  "source": {
    "blob": "57360c4ce401d82c0dd3edad9cd1b3d1dae277f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 93,
    "path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40dc4b4d9689431a785d13eebd7245678a21aba65bef85e3afe6221ac1a3554b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc2c0d8f-5401-1ad2-50f9-964fcb875214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncatedMobiusLogConvolution_twoN_reconstruct
    {N : ℕ} (a b : ℕ → ℝ)
    (hout :
      ∀ n, 1 ≤ n → n ≤ 2 * N →
        truncatedMobiusLogConvolution (2 * N) a n =
          truncatedMobiusLogConvolution (2 * N) b n) :
    ∀ d, 1 ≤ d → d ≤ N → a d = b d := by
  let c : ℕ → ℝ := fun d => a d - b d
  have hcrows :
      ∀ n, 1 ≤ n → n ≤ 2 * N → mobiusLogDivisorRow c n = 0 := by
    intro n hn hn2N
    have h := hout n hn hn2N
    rw [truncated_eq_mobiusLogDivisorRow hn hn2N,
      truncated_eq_mobiusLogDivisorRow hn hn2N] at h
    unfold mobiusLogDivisorRow c
    simp_rw [sub_mul]
    rw [Finset.sum_sub_distrib]
    unfold mobiusLogDivisorRow at h
    linarith
  intro d hd hdN
  have hc := mobiusLog_rows_two_mul_reconstruct_zero c hcrows d hd hdN
  dsimp [c] at hc
  linarith

/-- Explicit recursive reconstruction residual at coefficient d from row 2d.
This records the lower-divisor correction rather than hiding it in an inverse
operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57360c4ce401d82c0dd3edad9cd1b3d1dae277f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
