# iIndepFun.indepFun_finset_prod_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37ef9717-3330-db44-a0cc-55a92e1b37e5",
  "kind": "theorem",
  "lexical_name": "iIndepFun.indepFun_finset_prod_of_not_mem",
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
  "slug": "iindepfun-indepfun-finset-prod-of-not-mem--09ebac40c80953cf7645d519",
  "source": {
    "blob": "960fa29c593c1f532f0aac1b481d491b8ede2fe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 620,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ebac40c80953cf7645d519bc5a08a7aa094a0ab2b1316a4d377b7ad01bb255",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37ef9717-3330-db44-a0cc-55a92e1b37e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.indepFun_finset_prod_of_not_mem [IsProbabilityMeasure μ] {ι : Type*} {β : Type*}
    {m : MeasurableSpace β} [CommMonoid β] [MeasurableMul₂ β] {f : ι → Ω → β}
    (hf_Indep : iIndepFun (fun _ => m) f μ) (hf_meas : ∀ i, Measurable (f i)) {s : Finset ι} {i : ι}
    (hi : i ∉ s) :
    IndepFun (∏ j in s, f j) (f i) μ :=
  kernel.iIndepFun.indepFun_finset_prod_of_not_mem hf_Indep hf_meas hi
set_option linter.uppercaseLean3 false in
#align probability_theory.Indep_fun.indep_fun_finset_prod_of_not_mem ProbabilityTheory.iIndepFun.indepFun_finset_prod_of_not_mem
set_option linter.uppercaseLean3 false in
#align probability_theory.Indep_fun.indep_fun_finset_sum_of_not_mem ProbabilityTheory.iIndepFun.indepFun_finset_sum_of_not_mem

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `960fa29c593c1f532f0aac1b481d491b8ede2fe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
