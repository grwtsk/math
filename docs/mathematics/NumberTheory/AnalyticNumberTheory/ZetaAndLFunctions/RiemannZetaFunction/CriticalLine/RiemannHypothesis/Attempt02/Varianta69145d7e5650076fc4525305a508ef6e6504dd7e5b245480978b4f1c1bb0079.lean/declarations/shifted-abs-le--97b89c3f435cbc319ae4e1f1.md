# shifted_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db3552d1-adbe-203d-6986-7e817d06478f",
  "kind": "theorem",
  "lexical_name": "shifted_abs_le",
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
  "slug": "shifted-abs-le--97b89c3f435cbc319ae4e1f1",
  "source": {
    "blob": "cbad180099bb2e1340e1837c299ee85a8cf59767",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Varianta69145d7e5650076fc4525305a508ef6e6504dd7e5b245480978b4f1c1bb0079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97b89c3f435cbc319ae4e1f16adba5ed490bbafe36795725837fe87d54f05bb5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Varianta69145d7e5650076fc4525305a508ef6e6504dd7e5b245480978b4f1c1bb0079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db3552d1-adbe-203d-6986-7e817d06478f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem shifted_abs_le {Y : ℝ} (hY : 1 ≤ Y) :
    |shiftedActualChebyshev Y| ≤ actualXiExponentialEnvelopeConstant * Y := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hp := Chebyshev.psi_le_const_mul_self (by linarith : 0 ≤ Y)
  have hh := abs_add_le (Chebyshev.psi Y - Y) c
  have hh2 := abs_sub (Chebyshev.psi Y) Y
  rw [abs_of_nonneg (Chebyshev.psi_nonneg _), abs_of_nonneg (by linarith : 0 ≤ Y)] at hh2
  unfold shiftedActualChebyshev actualXiExponentialEnvelopeConstant
  change |Chebyshev.psi Y - Y + c| ≤ (Real.log 4 + 5 + |c|) * Y
  nlinarith [abs_nonneg c]

/-- Actual finite source continuity gives genuine L1 before the signed damping estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Varianta69145d7e5650076fc4525305a508ef6e6504dd7e5b245480978b4f1c1bb0079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Varianta69145d7e5650076fc4525305a508ef6e6504dd7e5b245480978b4f1c1bb0079.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbad180099bb2e1340e1837c299ee85a8cf59767` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
