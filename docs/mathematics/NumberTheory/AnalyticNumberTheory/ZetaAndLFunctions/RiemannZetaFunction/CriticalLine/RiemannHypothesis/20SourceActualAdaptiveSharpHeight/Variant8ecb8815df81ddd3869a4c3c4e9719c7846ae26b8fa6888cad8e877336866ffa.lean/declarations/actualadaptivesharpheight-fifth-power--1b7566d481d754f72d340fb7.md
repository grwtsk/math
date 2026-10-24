# actualAdaptiveSharpHeight_fifth_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f17cf57-3aec-d1a8-bc4b-d9320dbdf5c0",
  "kind": "theorem",
  "lexical_name": "actualAdaptiveSharpHeight_fifth_power",
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
  "slug": "actualadaptivesharpheight-fifth-power--1b7566d481d754f72d340fb7",
  "source": {
    "blob": "4c51c0c1be67defe5c564f1655e5ea5dc4554c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/20SourceActualAdaptiveSharpHeight/Variant8ecb8815df81ddd3869a4c3c4e9719c7846ae26b8fa6888cad8e877336866ffa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b7566d481d754f72d340fb78766b88a7265c5789758edc940b5bf97c4bfff33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/20SourceActualAdaptiveSharpHeight/Variant8ecb8815df81ddd3869a4c3c4e9719c7846ae26b8fa6888cad8e877336866ffa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f17cf57-3aec-d1a8-bc4b-d9320dbdf5c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdaptiveSharpHeight_fifth_power {η A : ℝ} (hA : 0 < A) :
    actualAdaptiveSharpHeight η A ^ 5 = η ^ 5 * Real.exp A / A ^ 8 := by
  have hr : (A ^ ((8 : ℝ) / 5)) ^ 5 = A ^ 8 := by
    have h := Real.rpow_mul_natCast hA.le ((8 : ℝ) / 5) 5
    norm_num at h
    exact h.symm
  have he : Real.exp (A / 5) ^ 5 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  unfold actualAdaptiveSharpHeight
  rw [div_pow, mul_pow, hr, he]

/-- The logarithm keeps its growing A/5 term and original source-radius power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/20SourceActualAdaptiveSharpHeight/Variant8ecb8815df81ddd3869a4c3c4e9719c7846ae26b8fa6888cad8e877336866ffa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/20SourceActualAdaptiveSharpHeight/Variant8ecb8815df81ddd3869a4c3c4e9719c7846ae26b8fa6888cad8e877336866ffa.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c51c0c1be67defe5c564f1655e5ea5dc4554c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
