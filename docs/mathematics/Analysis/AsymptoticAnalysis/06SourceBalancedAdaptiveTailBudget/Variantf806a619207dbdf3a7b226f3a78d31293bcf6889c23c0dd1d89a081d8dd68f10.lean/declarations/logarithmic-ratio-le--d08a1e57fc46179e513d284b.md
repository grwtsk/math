# logarithmic_ratio_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38ffef57-0744-51f7-5481-cddfe00c1df7",
  "kind": "theorem",
  "lexical_name": "logarithmic_ratio_le",
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
  "slug": "logarithmic-ratio-le--d08a1e57fc46179e513d284b",
  "source": {
    "blob": "9da33cae2705a2936ae263728b2c6411ffe8c3bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08a1e57fc46179e513d284b136d4d6e413308dc57e42d1b3a4da48d01b1094d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38ffef57-0744-51f7-5481-cddfe00c1df7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logarithmic_ratio_le {b A Q : ℝ} (hQ : 0 < Q) (hQA : Q ≤ A) :
    (b - (8 / 5 : ℝ) * Real.log A) / A ≤
      max 0 (b - (8 / 5 : ℝ) * Real.log Q) / Q := by
  have hA : 0 < A := hQ.trans_le hQA
  have hl : Real.log Q ≤ Real.log A := Real.log_le_log hQ hQA
  have hm : b - (8 / 5 : ℝ) * Real.log A ≤
      max 0 (b - (8 / 5 : ℝ) * Real.log Q) := by
    exact (show b - (8 / 5 : ℝ) * Real.log A ≤
      b - (8 / 5 : ℝ) * Real.log Q by nlinarith).trans (le_max_right _ _)
  have hn : 0 ≤ max 0 (b - (8 / 5 : ℝ) * Real.log Q) := le_max_left _ _
  calc
    _ ≤ max 0 (b - (8 / 5 : ℝ) * Real.log Q) / A :=
      div_le_div_of_nonneg_right hm hA.le
    _ ≤ _ := div_le_div_of_nonneg_left hn hQ hQA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da33cae2705a2936ae263728b2c6411ffe8c3bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
