# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Abel.Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd5cc13ad2b370435d0c41571df10828d325d823",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd5cc13ad2b370435d0c41571df10828d325d823`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Chebyshev` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KM](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/km--491b99f509f401ed773426a5.md) | 29 | `declaration-track:491b99f509f401ed773426a561df788ef89fd1b419b023d53087362ec9fe3940` |
| 2 | `lemma` | [KM_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/km-pos--9a92c5452afc044447fa41fe.md) | 31 | `result-track:9a92c5452afc044447fa41fed3a9650d4dbfb6e7c2fcd984bfbf28021a0081fd` |
| 3 | `lemma` | [KM_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/km-nonneg--8b92dcf49d582492308098de.md) | 32 | `result-track:8b92dcf49d582492308098de673d7d7b78ba82d7a82eb6c46d9dff441cad5079` |
| 4 | `def` | [Mfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/mfun--2dd87ebe318d5083ee3fdafb.md) | 35 | `declaration-track:2dd87ebe318d5083ee3fdafb6d0fcb7b57ab62b40733efae7a423c605e79221f` |
| 5 | `lemma` | [sum_Icc_eq_sum_Ioc'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/sum-icc-eq-sum-ioc--4953b433cc458d9377b7caa7.md) | 37 | `result-track:4953b433cc458d9377b7caa7f5583d6f67adfcc3e797a00349bab17c15caafd7` |
| 6 | `lemma` | [Mfun_eq_Ioc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/mfun-eq-ioc--703c02f069c372337c3a6e1a.md) | 41 | `result-track:703c02f069c372337c3a6e1acb2bc8c1d3d443de60fe5a55fef49fe604474486` |
| 7 | `lemma` | [Mfun_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/mfun-mono--c8b3b1492c67a86bec5ffb11.md) | 44 | `result-track:c8b3b1492c67a86bec5ffb1158ac963f123ea1dc4146c1dee9725850b0bcefdc` |
| 8 | `lemma` | [Mfun_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/mfun-nonneg--6f12b4cb8884190f707287fc.md) | 48 | `result-track:6f12b4cb8884190f707287fc118387626d3288ade5234f0945701d243b41b3e2` |
| 9 | `lemma` | [abs_Mfun_sub_log_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/abs-mfun-sub-log-le--f8cd01bf677698f38f0bc5d0.md) | 51 | `result-track:f8cd01bf677698f38f0bc5d032ec2878e766ee4045482c3a28167ab3f6391049` |
| 10 | `theorem` | [abel_mertens_t](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/abel-mertens-t--4b40b055a151941a507f50fd.md) | 56 | `result-track:4b40b055a151941a507f50fdc7742a13a0e5204793f200cafd1ef06fc17d0e5d` |
| 11 | `theorem` | [mertens_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/declarations/mertens-step--98cc578f24b29ab3991e41eb.md) | 140 | `result-track:98cc578f24b29ab3991e41ebed504991dfbeb7df1f68e8b67b04e8739c5265c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
