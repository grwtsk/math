# originalSource_spatialMask

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e744f997-3a21-83bd-6d29-64b724a22d6c",
  "kind": "theorem",
  "lexical_name": "originalSource_spatialMask",
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
  "slug": "originalsource-spatialmask--079abcec143bf2988b71db9e",
  "source": {
    "blob": "793d4c104a3aea36c8a25b1c0c05d13fbb058541",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:079abcec143bf2988b71db9ec355144dcf3e3628ebb83a10c8fe1b68a041b61e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e744f997-3a21-83bd-6d29-64b724a22d6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem originalSource_spatialMask (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume] fun x =>
      (normalizedTest explicitSecondDerivative A x : ℂ)) :
    spatialMask (Icc (-A) A) measurableSet_Icc f = f := by
  apply Lp.ext
  filter_upwards [spatialMask_coe_ae (Icc (-A) A) measurableSet_Icc f, hf] with x hm hq
  rw [hm]
  by_cases hx : x ∈ Icc (-A) A
  · exact indicator_of_mem hx f
  · rw [indicator_of_notMem hx f, hq]
    have hab : A ≤ |x| := by
      have hx' : x < -A ∨ A < x := by simpa only [mem_Icc, not_and_or, not_le] using hx
      rcases hx' with hl | hr
      · have := neg_le_abs x; linarith
      · exact hr.le.trans (le_abs_self x)
    rw [normalizedTest_zero_of_le_abs A x (by linarith) hab]
    rfl

/-- Actual-source hostile fixture: the original compact mask cannot commute with T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793d4c104a3aea36c8a25b1c0c05d13fbb058541` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
