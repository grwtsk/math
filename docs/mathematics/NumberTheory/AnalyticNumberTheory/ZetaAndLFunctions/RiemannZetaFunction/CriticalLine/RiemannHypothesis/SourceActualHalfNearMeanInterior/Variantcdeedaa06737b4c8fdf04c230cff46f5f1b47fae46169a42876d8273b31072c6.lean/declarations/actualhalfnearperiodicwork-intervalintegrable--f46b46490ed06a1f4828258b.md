# actualHalfNearPeriodicWork_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:068f92ce-cc9a-2582-5442-73872b2d168e",
  "kind": "theorem",
  "lexical_name": "actualHalfNearPeriodicWork_intervalIntegrable",
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
  "slug": "actualhalfnearperiodicwork-intervalintegrable--f46b46490ed06a1f4828258b",
  "source": {
    "blob": "613f6c447d8eb77c4c0557e5d2d89c43e4dec751",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variantcdeedaa06737b4c8fdf04c230cff46f5f1b47fae46169a42876d8273b31072c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f46b46490ed06a1f4828258b588d7d0a4697ea022381e5c785a00259a8330167",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variantcdeedaa06737b4c8fdf04c230cff46f5f1b47fae46169a42876d8273b31072c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:068f92ce-cc9a-2582-5442-73872b2d168e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfNearPeriodicWork_intervalIntegrable {A : ℝ} (hA : 25600 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ)
        (Real.exp (A / 2))) volume
          (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  exact actualFarPeriodicWork_intervalIntegrable (by linarith : 91 ≤ A)
    (by simp) (actualHalfExponentialPeriodicCutoff_lower_column hA) (time_order hA)

/-- The full actual adjusted interior splits at the proved smaller cutoff, with no lost term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variantcdeedaa06737b4c8fdf04c230cff46f5f1b47fae46169a42876d8273b31072c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variantcdeedaa06737b4c8fdf04c230cff46f5f1b47fae46169a42876d8273b31072c6.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `613f6c447d8eb77c4c0557e5d2d89c43e4dec751` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
