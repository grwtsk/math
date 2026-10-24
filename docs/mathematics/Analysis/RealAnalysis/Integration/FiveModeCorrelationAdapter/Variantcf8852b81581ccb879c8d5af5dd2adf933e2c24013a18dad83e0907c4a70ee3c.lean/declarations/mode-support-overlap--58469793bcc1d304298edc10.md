# mode_support_overlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a776bd8f-7592-5655-b7db-c8687f3989ab",
  "kind": "theorem",
  "lexical_name": "mode_support_overlap",
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
  "slug": "mode-support-overlap--58469793bcc1d304298edc10",
  "source": {
    "blob": "7b03f2b29b02dd3e260727a314538eff2c805304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58469793bcc1d304298edc10f762e7fc45322b28dc006adb0cde84a42c3e0319",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a776bd8f-7592-5655-b7db-c8687f3989ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mode_support_overlap (A h : ℝ) (hA : 0 < A) (hh : 0 ≤ h) :
    Icc (-A) A ∩ (fun x : ℝ => x-A*h) ⁻¹' Icc (-A) A =
      Icc (A*(h-1)) A := by
  ext x
  change (-A ≤ x ∧ x ≤ A) ∧ (-A ≤ x-A*h ∧ x-A*h ≤ A) ↔
    A*(h-1) ≤ x ∧ x ≤ A
  constructor
  · intro hx
    exact ⟨by nlinarith [hx.2.1], hx.1.2⟩
  · intro hx
    have hah : 0 ≤ A*h := mul_nonneg hA.le hh
    exact ⟨⟨by nlinarith [hx.1], hx.2⟩,
      ⟨by nlinarith [hx.1], by nlinarith [hx.2]⟩⟩

/-- Product indicator algebra retains the touching endpoints exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b03f2b29b02dd3e260727a314538eff2c805304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
