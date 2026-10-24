# actualRelativePsiTimeError_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de7a91d9-a173-478f-d7b0-ee0d3e7927e6",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTimeError_intervalIntegrable",
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
  "slug": "actualrelativepsitimeerror-intervalintegrable--1e6f4dddffd9c3f7f0cdb8b8",
  "source": {
    "blob": "5d20842b49ea1b24a92cd3193ffcb6d2e3f8a65d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant63931b0e86c14af1bfc4eaa2d98ef7d8b88dff08c4afd7dcb150bda776827a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6f4dddffd9c3f7f0cdb8b825c0017d0700d20c003986dc5459b4336771139f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant63931b0e86c14af1bfc4eaa2d98ef7d8b88dff08c4afd7dcb150bda776827a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de7a91d9-a173-478f-d7b0-ee0d3e7927e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualRelativePsiTimeError volume 0 b := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have hE : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using hi
  have hG : IntervalIntegrable actualCenteredMangoldtLogError volume 0 b :=
    hE.add intervalIntegrable_const
  have hQ : IntervalIntegrable (actualMangoldtErrorConvolution 1) volume 0 b :=
    (actualMangoldtErrorConvolution_absolutelyContinuous 1 hb).continuousOn.intervalIntegrable
  have hx : IntervalIntegrable (fun r : ℝ => Real.exp (-r)) volume 0 b :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (-r))).intervalIntegrable _ _
  apply ((hG.sub hQ).sub (hx.const_mul (Real.eulerMascheroniConstant + 1))).congr_fun
  intro r hr
  have hr0 : 0 ≤ r := by
    rw [uIcc_of_le hb] at hr
    exact hr.1
  exact (actualRelativePsiTimeError_eq_convolution hr0).symm

/-- The actual one convolution keeps its entire lower exponential contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant63931b0e86c14af1bfc4eaa2d98ef7d8b88dff08c4afd7dcb150bda776827a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant63931b0e86c14af1bfc4eaa2d98ef7d8b88dff08c4afd7dcb150bda776827a7f.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d20842b49ea1b24a92cd3193ffcb6d2e3f8a65d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
