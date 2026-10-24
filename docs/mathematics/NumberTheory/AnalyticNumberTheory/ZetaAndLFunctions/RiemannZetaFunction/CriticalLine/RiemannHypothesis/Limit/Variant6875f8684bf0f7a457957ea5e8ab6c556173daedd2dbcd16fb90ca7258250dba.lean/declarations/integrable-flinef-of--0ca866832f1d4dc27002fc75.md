# integrable_FlineF_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54dc22b3-6f50-2100-8b75-48ac80fc8926",
  "kind": "theorem",
  "lexical_name": "integrable_FlineF_of",
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
  "slug": "integrable-flinef-of--0ca866832f1d4dc27002fc75",
  "source": {
    "blob": "78f08195227666cd76b545a77cdaa84a7f97be51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant6875f8684bf0f7a457957ea5e8ab6c556173daedd2dbcd16fb90ca7258250dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ca866832f1d4dc27002fc75390800941513308bd5f9e8be70ec33a49e9d282d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant6875f8684bf0f7a457957ea5e8ab6c556173daedd2dbcd16fb90ca7258250dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54dc22b3-6f50-2100-8b75-48ac80fc8926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_FlineF_of (hFc : Continuous fun t : ℝ => F ((c : ℂ) + t * I))
    (hline : ∃ M : ℝ, ∀ t : ℝ, ‖F ((c : ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|))
    (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) (hc0 : -1 ≤ c) (hc2 : c ≤ 2) :
    Integrable (FlineF F k c) := by
  obtain ⟨C, hC0, hC⟩ := norm_weight_le hk hkc hc0 hc2
  obtain ⟨M, hM⟩ := hline
  have hM' : ∀ t : ℝ, ‖F ((c : ℂ) + t * I)‖ ≤ max M 0 * Real.log (2 + |t|) := fun t =>
    (hM t).trans (mul_le_mul_of_nonneg_right (le_max_left _ _)
      (Real.log_nonneg (by linarith [abs_nonneg t])))
  exact integrable_decay_mul_log (continuous_weight hk hkc c) hFc hC0 hC (le_max_right _ _) hM'

/-! ## The vertical sides -/

/-- Folding the left vertical side onto the right one by  F(1−s) = −F(s) on the line:
V(c; −R, R) − V(1−c; −R, R) = I • ∫_{−R}^{R} FlineF. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant6875f8684bf0f7a457957ea5e8ab6c556173daedd2dbcd16fb90ca7258250dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant6875f8684bf0f7a457957ea5e8ab6c556173daedd2dbcd16fb90ca7258250dba.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78f08195227666cd76b545a77cdaa84a7f97be51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
