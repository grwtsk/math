# actual_lower_endpoint_can_lie_in_retained_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f0deb87-d196-f63d-113b-134a594b7645",
  "kind": "theorem",
  "lexical_name": "actual_lower_endpoint_can_lie_in_retained_strip",
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
  "slug": "actual-lower-endpoint-can-lie-in-retained-strip--c9be5ba1af857dfb9d0fcf35",
  "source": {
    "blob": "9a6496582e3a42f04431c40335aacf3b54d1dbb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMixedWorkFubiniFixtures/Variantdcba783d4b0264ab11cb7148ab7434ecec9dcdad87d16a93dc25dcbed5a00b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9be5ba1af857dfb9d0fcf35a4c209a6c3b8556f039fede82023ad6c736615a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMixedWorkFubiniFixtures/Variantdcba783d4b0264ab11cb7148ab7434ecec9dcdad87d16a93dc25dcbed5a00b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f0deb87-d196-f63d-113b-134a594b7645`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_lower_endpoint_can_lie_in_retained_strip (A : ℝ) (hA : 1 ≤ A)
    (hwidth : Real.log (vaughanCutoff A : ℝ) +
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ 2 * A) :
    Real.log (vaughanCutoff A : ℝ) - A ∈ actualWorkLeftStrip A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast (by have := vaughanCutoff_pos A hA; omega : 0 < vaughanCutoff A)
  have hlog : Real.log (vaughanCutoff A : ℝ) <
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) :=
    Real.log_lt_log hU (by exact_mod_cast Nat.lt_succ_self (vaughanCutoff A))
  rw [actualWorkLeftStrip_eq_Ico_inter]
  exact ⟨⟨le_rfl, sub_lt_sub_right hlog A⟩, by linarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMixedWorkFubiniFixtures/Variantdcba783d4b0264ab11cb7148ab7434ecec9dcdad87d16a93dc25dcbed5a00b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMixedWorkFubiniFixtures/Variantdcba783d4b0264ab11cb7148ab7434ecec9dcdad87d16a93dc25dcbed5a00b39.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a6496582e3a42f04431c40335aacf3b54d1dbb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
