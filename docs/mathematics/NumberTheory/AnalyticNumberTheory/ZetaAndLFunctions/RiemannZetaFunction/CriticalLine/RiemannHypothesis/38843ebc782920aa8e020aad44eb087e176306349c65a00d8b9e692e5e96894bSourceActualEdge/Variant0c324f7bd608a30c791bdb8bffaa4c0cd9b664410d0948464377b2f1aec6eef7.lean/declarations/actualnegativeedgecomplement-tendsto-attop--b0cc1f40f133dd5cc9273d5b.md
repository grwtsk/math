# actualNegativeEdgeComplement_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:130cfad0-afca-07ce-ad28-94bb2f2738ff",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeComplement_tendsto_atTop",
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
  "slug": "actualnegativeedgecomplement-tendsto-attop--b0cc1f40f133dd5cc9273d5b",
  "source": {
    "blob": "a406903b28decf50eb9da669ea4380e0707c070d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894bSourceActualEdge/Variant0c324f7bd608a30c791bdb8bffaa4c0cd9b664410d0948464377b2f1aec6eef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0cc1f40f133dd5cc9273d5b82ce8910068094b2f96e22e1b83bfb705a5a20eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894bSourceActualEdge/Variant0c324f7bd608a30c791bdb8bffaa4c0cd9b664410d0948464377b2f1aec6eef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:130cfad0-afca-07ce-ad28-94bb2f2738ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeComplement_tendsto_atTop :
    Tendsto actualNegativeEdgeComplement atTop atTop := by
  obtain ⟨R,hR,hbound⟩ := actualNegativeEdgeComplement_eventually_positive_growth
  have hl : Tendsto (fun A : ℝ =>
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop
      (half_pos actualNegativeEdgeConstant_pos)
  apply tendsto_atTop_mono' atTop _ hl
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA

end
end FormalResearch.RiemannHypothesis.SourceActualEdgeComplementCancellation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894bSourceActualEdge/Variant0c324f7bd608a30c791bdb8bffaa4c0cd9b664410d0948464377b2f1aec6eef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894bSourceActualEdge/Variant0c324f7bd608a30c791bdb8bffaa4c0cd9b664410d0948464377b2f1aec6eef7.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a406903b28decf50eb9da669ea4380e0707c070d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
