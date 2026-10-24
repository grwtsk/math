# actualAbsoluteVariation_inverse_exp_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:109a6db2-f91b-95d0-26a8-50051e5f140d",
  "kind": "theorem",
  "lexical_name": "actualAbsoluteVariation_inverse_exp_lower",
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
  "slug": "actualabsolutevariation-inverse-exp-lower--e131035f0728fe799451fb5c",
  "source": {
    "blob": "c52e163417e37caafd5b2f2a13cd0cc98db55c8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e131035f0728fe799451fb5c1b5678926518203e6eb7c883ff81f88b2a34673f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:109a6db2-f91b-95d0-26a8-50051e5f140d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAbsoluteVariation_inverse_exp_lower {A : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    A ^ 9 * Real.exp (-A) / actualAbsolutePrimeMomentUpperConstant ≤
      1 / actualClosedAbsolutePrimeMoment A := by
  have hA0 : 0 < A := by linarith
  have hD := actualAbsolutePrimeMomentUpperConstant_pos
  have hu := actualClosedAbsolutePrimeMoment_le hA
  have hp : 0 < actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 := by
    positivity
  calc
    _ = 1 / (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9) := by
      rw [Real.exp_neg]
      field_simp
    _ ≤ _ := div_le_div₀ (by norm_num : (0 : ℝ) ≤ 1) le_rfl hV hu

/-- Both reciprocal bounds concern the same literal complete source mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c52e163417e37caafd5b2f2a13cd0cc98db55c8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
