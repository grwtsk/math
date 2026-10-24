# klDiv_map_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15dd2409-15fd-0c9f-6e35-a8914ecfe304",
  "kind": "theorem",
  "lexical_name": "klDiv_map_le",
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
  "slug": "kldiv-map-le--eadccbb3085b5e6c62f13b51",
  "source": {
    "blob": "93946a6fef0ae4d0214857d8d031e11e9aaae0a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 168,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eadccbb3085b5e6c62f13b51c706eafc92e4819c66174c6c12ae7ae8b3b2f2cb",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15dd2409-15fd-0c9f-6e35-a8914ecfe304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem klDiv_map_le (hg : Measurable g) : klDiv (μ.map g) (ν.map g) ≤ klDiv μ ν := by
  by_cases hμν : μ ≪ ν
  swap; · simp [hμν]
  by_cases h_int : Integrable (llr μ ν) μ
  swap; · simp [klDiv_of_not_integrable h_int]
  rw [klDiv_map_of_ac hμν hg h_int, klDiv_eq_integral_klFun]
  simp only [hμν, h_int, and_self, ↓reduceIte]
  conv_rhs => rw [← integral_condExp hg.comap_le]
  gcongr 1
  have hf : StronglyMeasurable klFun := by fun_prop
  have hf_cont : ContinuousWithinAt klFun (Ici 0) 0 := by fun_prop
  have h_int' : Integrable (fun x ↦ klFun (μ.rnDeriv ν x).toReal) ν := by
    rwa [integrable_klFun_rnDeriv_iff hμν]
  refine integral_mono_ae ?_ integrable_condExp ?_
  · exact convexOn_klFun.integrable_comp_condExp_rnDeriv hg.comap_le hμν hf hf_cont h_int'
  · refine ae_of_ae_trim hg.comap_le ?_
    exact convexOn_klFun.map_condExp_rnDeriv_le hg.comap_le hf hf_cont h_int'

variable (μ ν) in
/-- **Data processing inequality** for the Kullback-Leibler divergence and sub-sigma-algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93946a6fef0ae4d0214857d8d031e11e9aaae0a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
