# Verification target: GRWTSK.Analysis.ComplexAnalysis.Analytic.Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "708d78cdedd9e8a55ef3b8cb22a13cec03c07dd3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `708d78cdedd9e8a55ef3b8cb22a13cec03c07dd3`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Composition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticAt_clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticat-clog--07e96dc04d3cb39ba0a50e6a.md) | 25 | `result-track:07e96dc04d3cb39ba0a50e6a5822bd568fe6e50ab8784f0e783cb26c606280b7` |
| 2 | `theorem` | [AnalyticAt.clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticat-clog--8a25194f192b562ca3ac7afd.md) | 33 | `result-track:8a25194f192b562ca3ac7afd7ca431b4e36484f4e42793ea286922b9cf3f6384` |
| 3 | `theorem` | [AnalyticWithinAt.clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticwithinat-clog--ca94d64f0eaad6e299176566.md) | 37 | `result-track:ca94d64f0eaad6e299176566fb3cba1184388678fc847cb5c931709e95d6f105` |
| 4 | `theorem` | [AnalyticOnNhd.clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticonnhd-clog--794e4ce8e1d785a240658758.md) | 42 | `result-track:794e4ce8e1d785a240658758dd8e6e4c0791b1f268a6c74f5c18f504c9c4c835` |
| 5 | `theorem` | [AnalyticOn.clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticon-clog--72cab65ca48944796194467c.md) | 46 | `result-track:72cab65ca48944796194467c9015d8ff8de883cf99ab07db7ad73a39a6c7ce48` |
| 6 | `theorem` | [AnalyticWithinAt.cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticwithinat-cpow--2d0035fef91035df855e26f5.md) | 51 | `result-track:2d0035fef91035df855e26f5aa7fa0e87d729466149d8fabb742337fd16386a5` |
| 7 | `theorem` | [AnalyticAt.cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticat-cpow--07a2b721c729decfacaa88c3.md) | 62 | `result-track:07a2b721c729decfacaa88c36320a61728d8b3e456c1d53df56145fe445e2ebf` |
| 8 | `theorem` | [AnalyticOn.cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticon-cpow--19193f3bfd38a03869e57aa5.md) | 68 | `result-track:19193f3bfd38a03869e57aa5a6a995ca61560d55567c1a400777c8dbd74c70f2` |
| 9 | `theorem` | [AnalyticOnNhd.cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticonnhd-cpow--61218830e8e4b95a12d3b1f4.md) | 73 | `result-track:61218830e8e4b95a12d3b1f4c5a447146fe7ffd9e37b784857b25cc346f952b5` |
| 10 | `lemma` | [AnalyticAt.re_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticat-re-ofreal--e7a03c6a0cf714cd4bb525b7.md) | 82 | `result-track:e7a03c6a0cf714cd4bb525b78e23963a00c7f38f5c4eda5a0475936d112ca57d` |
| 11 | `lemma` | [AnalyticAt.im_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticat-im-ofreal--ad8afafff2ff277c3cd56e0a.md) | 87 | `result-track:ad8afafff2ff277c3cd56e0abd7ce1eebb3387ecf023499a210605d6ed11fde8` |
| 12 | `lemma` | [AnalyticWithinAt.re_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticwithinat-re-ofreal--ca31131dd8edcfa022eac951.md) | 91 | `result-track:ca31131dd8edcfa022eac951ac0d9cc0f63be175bf752be476abec47626e3e5a` |
| 13 | `lemma` | [AnalyticWithinAt.im_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticwithinat-im-ofreal--13049d9bb360bdb11ebaae83.md) | 96 | `result-track:13049d9bb360bdb11ebaae83873d168fd98500586aacfb07a4f14d54efb4537d` |
| 14 | `lemma` | [AnalyticOn.re_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticon-re-ofreal--3985a6c6a41a4572d571815a.md) | 101 | `result-track:3985a6c6a41a4572d571815a4e4561a3f9169048b1c7170f034800c1dec4358a` |
| 15 | `lemma` | [AnalyticOn.im_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticon-im-ofreal--3cc7f54a412a8e0b54dd3aae.md) | 106 | `result-track:3cc7f54a412a8e0b54dd3aae807370284c6a2660a1945b7a20c589da1ea73984` |
| 16 | `lemma` | [AnalyticOnNhd.re_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticonnhd-re-ofreal--da7e63767b24b017840e118e.md) | 111 | `result-track:da7e63767b24b017840e118e6787912bc0e5560943136cf2edb4e4421ce6c737` |
| 17 | `lemma` | [AnalyticOnNhd.im_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticonnhd-im-ofreal--7deb4a9f6b36b4fedeefc308.md) | 116 | `result-track:7deb4a9f6b36b4fedeefc3083a85c466b1e56ebf507124376751e73cc97a4ffb` |
| 18 | `lemma` | [analyticAt_log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticat-log--61de4735387521da09258e34.md) | 128 | `result-track:61de4735387521da09258e3425ea7c2a2be63493d42fbc2414632648b130be11` |
| 19 | `lemma` | [analyticOnNhd_log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticonnhd-log--3a7c8b6e35356be217afb9c9.md) | 134 | `result-track:3a7c8b6e35356be217afb9c9ed65ab74c21c6054605c5b341da4d6caaa198bf8` |
| 20 | `lemma` | [analyticOn_log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticon-log--7bc45522f45a7ccef163602f.md) | 136 | `result-track:7bc45522f45a7ccef163602f166bbf7739a9fae750cab695aa30ecc1f1d909ae` |
| 21 | `lemma` | [AnalyticAt.log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticat-log--4ce8df81d47e86bda160a2b2.md) | 139 | `result-track:4ce8df81d47e86bda160a2b2bd15c889da47aebec77d2ec2f722659fd03f1675` |
| 22 | `lemma` | [AnalyticWithinAt.log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticwithinat-log--fa140ea02533bad16562231f.md) | 143 | `result-track:fa140ea02533bad16562231f6bce571e39894f160d63106324e602cf7256b3b1` |
| 23 | `lemma` | [AnalyticOnNhd.log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticonnhd-log--092b95fa18de7545c2d5b5f8.md) | 147 | `result-track:092b95fa18de7545c2d5b5f81c34025471039a8b1feb9d6ea41e1247e719460d` |
| 24 | `lemma` | [AnalyticOn.log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf148d41b42b140a25b3cda57d57cca352711c64514f63c83a83e91c63d96382d.lean/declarations/analyticon-log--e4bfc547dee45d9e317eec96.md) | 151 | `result-track:e4bfc547dee45d9e317eec968a52d2cbfe51ccacbe1a687e92eb50354406accd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
