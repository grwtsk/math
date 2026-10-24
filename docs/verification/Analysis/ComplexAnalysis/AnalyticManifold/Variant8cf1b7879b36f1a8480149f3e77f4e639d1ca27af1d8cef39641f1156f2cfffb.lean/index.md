# Verification target: GRWTSK.Analysis.ComplexAnalysis.AnalyticManifold.Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f292f5677b62aeb8bdb06c3b15a9dd2d45bfc1f0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f292f5677b62aeb8bdb06c3b15a9dd2d45bfc1f0`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.IsManifold.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [analyticPregroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/analyticpregroupoid--cbdc46a567f015a1df3e312d.md) | 50 | `declaration-track:cbdc46a567f015a1df3e312dd59328fed041b426d54970ca942dec1cf7decdbe` |
| 2 | `def` | [analyticGroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/analyticgroupoid--f22481d263600f595b066bf1.md) | 85 | `declaration-track:f22481d263600f595b066bf14a42801eafecee391444e8187ca36de7bab76e79` |
| 3 | `theorem` | [ofSet_mem_analyticGroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/ofset-mem-analyticgroupoid--d86b66ec675eda24205e77ad.md) | 89 | `result-track:d86b66ec675eda24205e77adcf3cbf52b55065f87575c953b144dbd89a18b177` |
| 4 | `theorem` | [symm_trans_mem_analyticGroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/symm-trans-mem-analyticgroupoid--4cccb1f7c426906921caa47f.md) | 99 | `result-track:4cccb1f7c426906921caa47fd30cb892c8ec66c9f76b157b1c22cf65c5e54cc5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/instance--bb2fc4cc7b4defa1d54cdf32.md) | 106 | `declaration-track:bb2fc4cc7b4defa1d54cdf326d842fa71ae28861567ece8d93a06decbb3e3ff0` |
| 6 | `lemma` | [mem_analyticGroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/mem-analyticgroupoid--a2f46052100b2cf152fd3f72.md) | 114 | `result-track:a2f46052100b2cf152fd3f72cb84f21741c02d6dc9a7c62476ac7fc7399a4665` |
| 7 | `theorem` | [mem_analyticGroupoid_of_boundaryless](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/mem-analyticgroupoid-of-boundaryless--bfbb548005875f9246129f9e.md) | 122 | `result-track:bfbb548005875f9246129f9e7663ecbbd0df0a03b15a6c02cf050ed80a2d9ba2` |
| 8 | `theorem` | [analyticGroupoid_prod](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/analyticgroupoid-prod--9d9c352b084a4ab9ed5dc24f.md) | 131 | `result-track:9d9c352b084a4ab9ed5dc24f2d1dae5a5c0b4a8cafd1fad18710aac01a700953` |
| 9 | `class` | [AnalyticManifold](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/analyticmanifold--a3f0a3e6d9439d55b0e746a6.md) | 153 | `declaration-track:a3f0a3e6d9439d55b0e746a6254be5716c1b228547f7633f92f7e5bb22fa7555` |
| 10 | `instance` | [AnalyticManifold.self](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/analyticmanifold-self--5f8fe4263ec40798b55de391.md) | 157 | `declaration-track:5f8fe4263ec40798b55de391505258f98bc987eb2fdf2071233196c69691c2cc` |
| 11 | `instance` | [AnalyticManifold.prod](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/analyticmanifold-prod--9ca0de68cea501b690c865e4.md) | 160 | `declaration-track:9ca0de68cea501b690c865e4ecda009e9dd642f449362ed9b2821922587354f3` |
| 12 | `instance` | [AnalyticManifold.isManifold](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/declarations/analyticmanifold-ismanifold--79b4d77b69383cef11b2ac0f.md) | 173 | `declaration-track:79b4d77b69383cef11b2ac0f0d7f80d9f958502947f54ce3cc11ec4f2b2c0c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
