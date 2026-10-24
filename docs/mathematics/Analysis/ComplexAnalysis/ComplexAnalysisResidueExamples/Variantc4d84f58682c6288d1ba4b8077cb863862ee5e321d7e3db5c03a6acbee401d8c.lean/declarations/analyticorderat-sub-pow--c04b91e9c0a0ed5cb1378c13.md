# analyticOrderAt_sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82287280-a334-5ac9-10e3-a65ba88177a8",
  "kind": "theorem",
  "lexical_name": "analyticOrderAt_sub_pow",
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
  "slug": "analyticorderat-sub-pow--c04b91e9c0a0ed5cb1378c13",
  "source": {
    "blob": "20488969545424643d3e5f7240b8e74358ba5653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 25,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantc4d84f58682c6288d1ba4b8077cb863862ee5e321d7e3db5c03a6acbee401d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c04b91e9c0a0ed5cb1378c1387fdd348cf4221fb43811ad2a5729be8eb6ea10e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantc4d84f58682c6288d1ba4b8077cb863862ee5e321d7e3db5c03a6acbee401d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82287280-a334-5ac9-10e3-a65ba88177a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem analyticOrderAt_sub_pow
    (z : ℂ) (n : ℕ) :
    analyticOrderAt (fun w : ℂ ↦ (w - z) ^ n) z = n := by
  have hbase : AnalyticAt ℂ (fun w : ℂ ↦ w - z) z := by
    fun_prop
  have hbaseOrder :
      analyticOrderAt (fun w : ℂ ↦ w - z) z = 1 := by
    apply hbase.analyticOrderAt_eq_natCast.mpr
    refine ⟨fun _ ↦ 1, analyticAt_const, one_ne_zero, ?_⟩
    filter_upwards
    intro w
    simp [smul_eq_mul]
  change analyticOrderAt ((fun w : ℂ ↦ w - z) ^ n) z = n
  rw [analyticOrderAt_pow hbase, hbaseOrder]
  simp

/-- The local coefficient of the logarithmic derivative of a pure monomial
is its exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantc4d84f58682c6288d1ba4b8077cb863862ee5e321d7e3db5c03a6acbee401d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantc4d84f58682c6288d1ba4b8077cb863862ee5e321d7e3db5c03a6acbee401d8c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20488969545424643d3e5f7240b8e74358ba5653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
