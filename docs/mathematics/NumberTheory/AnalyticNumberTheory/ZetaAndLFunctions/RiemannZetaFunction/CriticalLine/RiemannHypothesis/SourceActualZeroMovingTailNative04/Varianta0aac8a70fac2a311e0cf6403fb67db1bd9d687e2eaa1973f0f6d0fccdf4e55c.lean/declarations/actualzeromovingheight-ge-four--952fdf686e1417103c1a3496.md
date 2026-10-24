# actualZeroMovingHeight_ge_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:959cb778-a5b3-3725-bc42-1a77aad62aa0",
  "kind": "theorem",
  "lexical_name": "actualZeroMovingHeight_ge_four",
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
  "slug": "actualzeromovingheight-ge-four--952fdf686e1417103c1a3496",
  "source": {
    "blob": "6cb16567f89fe68720e859b6b82082cc59e7fc07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:952fdf686e1417103c1a3496f10fa75749983fceb86efaebdfcbcb1c6e4746e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:959cb778-a5b3-3725-bc42-1a77aad62aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroMovingHeight_ge_four (c A : ℝ) (hc : 1 < c)
    (hA : actualZeroMovingRadius c ≤ A) : 4 ≤ actualBumpMovingHeight A c := by
  have hp : 0 < 2 * c - 1 := by linarith
  have hh : 5 * Real.log 4 / (2 * c - 1) ≤ A :=
    (le_max_right _ _).trans hA
  have hh' := (div_le_iff₀ hp).mp hh
  have he : Real.log 4 ≤ (2 * c - 1) * A / 5 := by linarith
  calc
    (4 : ℝ) = Real.exp (Real.log 4) := (Real.exp_log (by norm_num)).symm
    _ ≤ actualBumpMovingHeight A c := Real.exp_le_exp.mpr he

/-- The full actual zero tail keeps equality atoms in its quantified moving-height budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb16567f89fe68720e859b6b82082cc59e7fc07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
