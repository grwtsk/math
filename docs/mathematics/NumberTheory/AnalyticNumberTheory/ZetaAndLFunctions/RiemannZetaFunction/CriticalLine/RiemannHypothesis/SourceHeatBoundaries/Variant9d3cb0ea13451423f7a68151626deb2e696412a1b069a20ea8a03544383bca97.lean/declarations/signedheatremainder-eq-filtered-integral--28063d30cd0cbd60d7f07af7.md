# signedHeatRemainder_eq_filtered_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49527385-f85a-be3f-60f5-a634ca60da5d",
  "kind": "theorem",
  "lexical_name": "signedHeatRemainder_eq_filtered_integral",
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
  "slug": "signedheatremainder-eq-filtered-integral--28063d30cd0cbd60d7f07af7",
  "source": {
    "blob": "713359410b20ea65daf40908ff260b90aac19816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28063d30cd0cbd60d7f07af78123cf1f34504d4b963f85e86221d6953a4d9ead",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49527385-f85a-be3f-60f5-a634ca60da5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedHeatRemainder_eq_filtered_integral (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) {τ : ℝ} (hτ : 0 ≤ τ) :
    signedHeatRemainder μ k τ =
      ∫ x, k x * (1 - Real.exp (-τ * k x ^ 2)) ∂μ := by
  have hi : Integrable k μ := by
    simpa using signedHeat_integrable (μ := μ) hk hM hb 0
  have ht := signedHeat_integrable (μ := μ) hk hM hb τ
  have he := signedHeat_decomposition (μ := μ) hk hM hb hτ
  have hf : (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) =
      fun x => k x - k x * Real.exp (-τ * k x ^ 2) := by
    funext x
    ring
  rw [hf, integral_sub hi ht]
  unfold signedHeat at he
  linarith

/-- This absolute envelope is finite at each scale; its coefficient mass is not unit mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713359410b20ea65daf40908ff260b90aac19816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
