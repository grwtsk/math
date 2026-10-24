# exponential_low_time_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f01f4e1b035b5472077dae86260163188b4cc7d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfb4f81e-edb3-29c4-67e9-5cea109c6d50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ee006b7-98fa-d3f2-f6c7-3c4b0eaacf25",
  "kind": "theorem",
  "lexical_name": "exponential_low_time_mass",
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
  "slug": "exponential-low-time-mass--5b10a7067adb318ad14231b4",
  "source": {
    "blob": "f01f4e1b035b5472077dae86260163188b4cc7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b10a7067adb318ad14231b40f885c4229faf105e4dd5a7da90c10e644081bcb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ee006b7-98fa-d3f2-f6c7-3c4b0eaacf25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_low_time_mass (U : ℕ) (hU : 1 ≤ U) :
    (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) =
      2 * (Real.sqrt ((U + 1 : ℕ) : ℝ) - Real.sqrt (U : ℝ)) := by
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have ha0 : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
  rw [intervalIntegral.integral_comp_div (f := Real.exp) (by norm_num : (2 : ℝ) ≠ 0),
    _root_.integral_exp]
  simp only [smul_eq_mul, Real.exp_half, Real.exp_log ha0, Real.exp_log hU0]

/-- The exact strip mass absorbs the actual centered-prefix and cell-mass factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f01f4e1b035b5472077dae86260163188b4cc7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
