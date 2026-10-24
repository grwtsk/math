# criticalBaselineCorrection_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa74b9cb-3ca0-79e7-00b6-f71df04994ea",
  "kind": "theorem",
  "lexical_name": "criticalBaselineCorrection_antitone",
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
  "slug": "criticalbaselinecorrection-antitone--b005b1af0312f38a190f132d",
  "source": {
    "blob": "b6b29ee3cf76b7ca9d10663ed422c8f68499a070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variant20428a01e23dc5b077bb65f033c9a1c2ac15bbec91e47eb7620391a795f4dfc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b005b1af0312f38a190f132d274f57ae01d9168e000e5930ee69a6a01f732e4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variant20428a01e23dc5b077bb65f033c9a1c2ac15bbec91e47eb7620391a795f4dfc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa74b9cb-3ca0-79e7-00b6-f71df04994ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBaselineCorrection_antitone (R A : ℝ) (hR : 0 ≤ R) (hRA : R ≤ A) :
    criticalBaselineCorrection A ≤ criticalBaselineCorrection R := by
  have hA : 0 ≤ A := hR.trans hRA
  have hs : R ^ 2 ≤ A ^ 2 := by nlinarith
  have hp : 0 ≤ (A ^ 2 - R ^ 2) *
      (102816 * (A ^ 2 + R ^ 2) + 1997568 + 1904 * A ^ 2 * R ^ 2) := by positivity
  have he : (7344 - 7 * R ^ 4) * (7 * A ^ 4 + 272 * A ^ 2 + 7344) -
      (7344 - 7 * A ^ 4) * (7 * R ^ 4 + 272 * R ^ 2 + 7344) =
      (A ^ 2 - R ^ 2) *
        (102816 * (A ^ 2 + R ^ 2) + 1997568 + 1904 * A ^ 2 * R ^ 2) := by ring
  unfold criticalBaselineCorrection
  apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variant20428a01e23dc5b077bb65f033c9a1c2ac15bbec91e47eb7620391a795f4dfc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variant20428a01e23dc5b077bb65f033c9a1c2ac15bbec91e47eb7620391a795f4dfc5.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6b29ee3cf76b7ca9d10663ed422c8f68499a070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
