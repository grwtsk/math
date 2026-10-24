# actualHalfMangoldtPrefix_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d987665d-f945-8a3c-1705-63ea89002227",
  "kind": "theorem",
  "lexical_name": "actualHalfMangoldtPrefix_le",
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
  "slug": "actualhalfmangoldtprefix-le--847f1e14f4e7438c3d383ccf",
  "source": {
    "blob": "2857beeefd5b493f9e4964de22a0c5cb060fb474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:847f1e14f4e7438c3d383ccfbd104dcdc47fd52822e3e3c4fae81bad4edf4712",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d987665d-f945-8a3c-1705-63ea89002227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfMangoldtPrefix_le (t : ℝ) :
    actualHalfMangoldtPrefix t ≤ 2 * (Real.log 4 + 4) * Real.exp (t / 2) := by
  have h := sum_vonMangoldt_div_sqrt_le ⌊Real.exp t⌋₊
  have hf : (⌊Real.exp t⌋₊ : ℝ) ≤ Real.exp t := Nat.floor_le (Real.exp_pos t).le
  have hh := mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hf)
    (by positivity : 0 ≤ 2 * (Real.log 4 + 4))
  rw [← Real.exp_half] at hh
  exact h.trans hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2857beeefd5b493f9e4964de22a0c5cb060fb474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
