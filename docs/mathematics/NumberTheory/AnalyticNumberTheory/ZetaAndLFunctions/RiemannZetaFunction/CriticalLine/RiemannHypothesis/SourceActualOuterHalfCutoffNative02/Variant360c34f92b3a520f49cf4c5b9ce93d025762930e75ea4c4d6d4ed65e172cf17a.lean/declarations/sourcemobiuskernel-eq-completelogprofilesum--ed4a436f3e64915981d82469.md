# sourceMobiusKernel_eq_completeLogProfileSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:693b3df4-9aec-ebe6-d4e1-cb54df899eb5",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_eq_completeLogProfileSum",
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
  "slug": "sourcemobiuskernel-eq-completelogprofilesum--ed4a436f3e64915981d82469",
  "source": {
    "blob": "f295b81e9487ebdc1f5a8232e300e36cfd28bf63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOuterHalfCutoffNative02/Variant360c34f92b3a520f49cf4c5b9ce93d025762930e75ea4c4d6d4ed65e172cf17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed4a436f3e64915981d82469fdc2e6daa71272c51b4b45eba404e3dfea8f1d4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOuterHalfCutoffNative02/Variant360c34f92b3a520f49cf4c5b9ce93d025762930e75ea4c4d6d4ed65e172cf17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:693b3df4-9aec-ebe6-d4e1-cb54df899eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_eq_completeLogProfileSum (A : ℝ) {d : ℝ} (hd : 0 < d) :
    sourceMobiusKernel A d =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A d (k : ℝ) := by
  unfold sourceMobiusKernel
  apply Finset.sum_congr rfl
  intro k hk
  exact sourceKernelTerm_eq_actualLogProfile A hd (Finset.mem_Icc.mp hk).1

/-- Sharp scalar zero includes the touching half-support point and the true unit term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOuterHalfCutoffNative02/Variant360c34f92b3a520f49cf4c5b9ce93d025762930e75ea4c4d6d4ed65e172cf17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOuterHalfCutoffNative02/Variant360c34f92b3a520f49cf4c5b9ce93d025762930e75ea4c4d6d4ed65e172cf17a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f295b81e9487ebdc1f5a8232e300e36cfd28bf63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
