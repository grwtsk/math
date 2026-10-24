# actual_cancelled_factorial_tail_abs_le_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f7a7df3-7975-b39f-4e6a-61d532627079",
  "kind": "theorem",
  "lexical_name": "actual_cancelled_factorial_tail_abs_le_five",
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
  "slug": "actual-cancelled-factorial-tail-abs-le-five--a5c5db8a98949c29f30280ef",
  "source": {
    "blob": "b6ee538d40bb6aa45c211696f3eb18bd250e7fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variantfeb04bf745dca3d342c148607bfb4f7909f5ccb6da3770da4291defcb0d77e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5c5db8a98949c29f30280efbfb271be61e22fc7b54a6b4891f9e1801f4f3e56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variantfeb04bf745dca3d342c148607bfb4f7909f5ccb6da3770da4291defcb0d77e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7a7df3-7975-b39f-4e6a-61d532627079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cancelled_factorial_tail_abs_le_five (A : ℝ) (hA : 91 ≤ A) :
    |∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
      shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
        fiveCancelledFactorialBudget A := by
  apply actual_cancelled_factorial_restricted_abs_le measurableSet_Ioc _ A hA
  intro x hx
  have hu := (actual_cutoff_order A (by linarith : 1 ≤ A)).1
  exact lt_trans (by linarith : (0 : ℝ) < vaughanCutoff A) hx.1

end
end FormalResearch.RiemannHypothesis.SourceFiveCancelledFactorialBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variantfeb04bf745dca3d342c148607bfb4f7909f5ccb6da3770da4291defcb0d77e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variantfeb04bf745dca3d342c148607bfb4f7909f5ccb6da3770da4291defcb0d77e6f.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ee538d40bb6aa45c211696f3eb18bd250e7fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
