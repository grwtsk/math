# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Basic.Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3e5d5c1f337f986283b15ea47e13be53ce49435",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3e5d5c1f337f986283b15ea47e13be53ce49435`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intervalIntegrable_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-pow--22325445c2ad191014c32941.md) | 31 | `result-track:22325445c2ad191014c329418011da075bf3f6ab9693b44282bca81540f561da` |
| 2 | `theorem` | [intervalIntegrable_zpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-zpow--3b67f58c983858dda87176cc.md) | 34 | `result-track:3b67f58c983858dda87176cc16ced1f6b549f5c40fe72201367ca26e6027be35` |
| 3 | `theorem` | [intervalIntegrable_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-rpow--7933ce775ee6ba86c77b0b45.md) | 40 | `result-track:7933ce775ee6ba86c77b0b454438be50f35a7a60644cd9b0e0ce47e6609d1ba9` |
| 4 | `theorem` | [intervalIntegrable_rpow'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-rpow--f8f0c1562b95a4097c142b5c.md) | 47 | `result-track:f8f0c1562b95a4097c142b5c94fe55f3e39cd411069bea3ad430234d64b17047` |
| 5 | `lemma` | [integrableOn_Ioo_rpow_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/integrableon-ioo-rpow-iff--5b5c7a337ea1ff9a34decab3.md) | 72 | `result-track:5b5c7a337ea1ff9a34decab38fbe7fd08d925e9ef5294dfe0bfd7329c58e314a` |
| 6 | `theorem` | [intervalIntegrable_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-cpow--edded683897a11784a453ff4.md) | 95 | `result-track:edded683897a11784a453ff419c2f3031b3818141e94eb14b1a0655346aff9b1` |
| 7 | `theorem` | [intervalIntegrable_cpow'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-cpow--2d83f35da29bf2e6d82408be.md) | 139 | `result-track:2d83f35da29bf2e6d82408bef4164dc7e931a53349289380d2921e5bdbd5ce2a` |
| 8 | `theorem` | [integrableOn_Ioo_cpow_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/integrableon-ioo-cpow-iff--62d5cbd6c4060a3a3ff791ba.md) | 176 | `result-track:62d5cbd6c4060a3a3ff791baa0eaf7008991ca0f261192599959e8a8874a8ca2` |
| 9 | `theorem` | [intervalIntegrable_id](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-id--fac59346ec5e45a7e543ad04.md) | 189 | `result-track:fac59346ec5e45a7e543ad04e40b7d8bceb8c82191cf863262f923c7f0bdb5bf` |
| 10 | `theorem` | [intervalIntegrable_one_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-one-div--d75ebb0c186218f14bee703d.md) | 192 | `result-track:d75ebb0c186218f14bee703df298076310c2dfed939919eb26bb1e79760537bf` |
| 11 | `theorem` | [intervalIntegrable_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-inv--7e3f9bb25a61192068aaa7f0.md) | 197 | `result-track:7e3f9bb25a61192068aaa7f0d6ab867968a8ce39d06722b1502729059e7c272b` |
| 12 | `theorem` | [intervalIntegrable_sin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-sin--e64ced04d8c6fc1556b2b270.md) | 202 | `result-track:e64ced04d8c6fc1556b2b27028bd9f0e44e4dfca664b587a8e7f4e4dd5c17dfa` |
| 13 | `theorem` | [intervalIntegrable_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-cos--2f9276b907e0f2b4e7cc7def.md) | 206 | `result-track:2f9276b907e0f2b4e7cc7defae69918c8820cdd4e5cb7bdcc7bac8635a7f32f9` |
| 14 | `theorem` | [intervalIntegrable_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-exp--6b232f3c51c5324187f9a2cf.md) | 210 | `result-track:6b232f3c51c5324187f9a2cff3ffe0841d9969408ca286698151916199b186fc` |
| 15 | `theorem` | [_root_.IntervalIntegrable.log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/root-intervalintegrable-log--e7fdceeb40f55fcc9718aa2b.md) | 214 | `result-track:e7fdceeb40f55fcc9718aa2b6ab6062501d1aec70e7ba974e1256e7a1d1ec891` |
| 16 | `theorem` | [intervalIntegrable_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-log--fc09c55c4653a0129836f35c.md) | 225 | `result-track:fc09c55c4653a0129836f35c3d5cba441f654067a5631a5a199886efc566ed97` |
| 17 | `theorem` | [intervalIntegrable_log'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-log--1403ebcd7dd6f3cd663761df.md) | 234 | `result-track:1403ebcd7dd6f3cd663761dfa93f01b2755624818eb98428ec318f771615058a` |
| 18 | `theorem` | [intervalIntegrable_one_div_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-one-div-one-add-sq--8df64e031554b288153d64df.md) | 256 | `result-track:8df64e031554b288153d64df501bb1978a89724d5d33716a64552bc061fddfea` |
| 19 | `theorem` | [intervalIntegrable_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/declarations/intervalintegrable-inv-one-add-sq--9ce117978569f8920ba401b2.md) | 262 | `result-track:9ce117978569f8920ba401b2c327974eb086832f356c8dd32428080e5dd44627` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
