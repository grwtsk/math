# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootFinding.Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "315d17660f460f5b4b197971d55addc12669fe53",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `315d17660f460f5b4b197971d55addc12669fe53`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RootConfig](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/rootconfig--c691ec02cfa9eb0a70c3c2aa.md) | 52 | `declaration-track:c691ec02cfa9eb0a70c3c2aadcff7a1d90cac714461e1a76b9adcaf0eba7e47b` |
| 2 | `structure` | [NewtonConfig](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/newtonconfig--3fb9de7300a495c92f4dbe36.md) | 60 | `declaration-track:3fb9de7300a495c92f4dbe369cdde32a66e202572f2129baece8962e93e02b72` |
| 3 | `def` | [checkSignChange](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/checksignchange--78beb942a5e1322c3e88e373.md) | 71 | `declaration-track:78beb942a5e1322c3e88e37363ab70c9c4909f11e9212cd9fe67002a3135aa29` |
| 4 | `def` | [checkNoRoot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/checknoroot--e8de32bdf6a781acd69b1786.md) | 83 | `declaration-track:e8de32bdf6a781acd69b17868090c30f675244cdbeee569158c03e5cbb92de06` |
| 5 | `def` | [newtonStepCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/newtonstepcore--be993108169825c15312c12f.md) | 95 | `declaration-track:be993108169825c15312c12ffe143139eb936851c3b38ca063fc0218c412b0b5` |
| 6 | `lemma` | [newtonStepCore_extract](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/newtonstepcore-extract--1ace339191b81fd76ef89d9a.md) | 116 | `result-track:1ace339191b81fd76ef89d9abbcb0c3adbbd014b89edb317965bacdaaf8159d3` |
| 7 | `def` | [checkNewtonContractsCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/checknewtoncontractscore--b8460ee95eb1407c91a05dec.md) | 150 | `declaration-track:b8460ee95eb1407c91a05decff8a26ea7c37e13588ae080046bede7be4a8c387` |
| 8 | `def` | [checkNewtonContracts](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/checknewtoncontracts--c19e8db651108a70aeaf6c34.md) | 161 | `declaration-track:c19e8db651108a70aeaf6c3479c4d600547421c35d10ff84e11a10ff5b3597e7` |
| 9 | `theorem` | [verify_no_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/verify-no-root--bdc0d4d6e8bbaf7d4339b113.md) | 173 | `result-track:bdc0d4d6e8bbaf7d4339b113bff29296e2b586109336eedbd6db70bc4852150e` |
| 10 | `theorem` | [verify_unique_root_newton](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/verify-unique-root-newton--543965b54c3a07ddc5b9b439.md) | 204 | `result-track:543965b54c3a07ddc5b9b43945be416448653b41be6137b98257d612de9e4db1` |
| 11 | `lemma` | [mvt_lower_bound_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/mvt-lower-bound-core--889a228872dd2a122eae0d3b.md) | 234 | `result-track:889a228872dd2a122eae0d3bee806dbbf343d89435b36d98ad819a32e3661b19` |
| 12 | `lemma` | [mvt_upper_bound_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/mvt-upper-bound-core--4b7ba15fb650d426a7f7a6b0.md) | 258 | `result-track:4b7ba15fb650d426a7f7a6b05809ec606b00719e9610d3876b79ea759915df95` |
| 13 | `theorem` | [verify_unique_root_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/verify-unique-root-core--c9db1edeabc25d8c86d76429.md) | 294 | `result-track:c9db1edeabc25d8c86d764298f04bfe6da15ad46177cf9e274be7f74031ddc18` |
| 14 | `theorem` | [newton_preserves_root_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/newton-preserves-root-core--6912fae3bac916e857c8791f.md) | 312 | `result-track:6912fae3bac916e857c8791f614b744e553fb0f306c44538ef33ddcbc72d65ef` |
| 15 | `theorem` | [newton_step_core_at_most_one_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/newton-step-core-at-most-one-root--85a6a1e28ed8a37dd68f5d95.md) | 364 | `result-track:85a6a1e28ed8a37dd68f5d9500d78af5fdffafb633dfc8ebe174893a9b8c0e4c` |
| 16 | `lemma` | [mvt_fc_lower_bound_pos_increasing_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/mvt-fc-lower-bound-pos-increasing-core--53e7bd8e7df85b009fdc15ef.md) | 428 | `result-track:53e7bd8e7df85b009fdc15ef3552355c2bd4aff0e4de3a79da3dbbd8fab12ddd` |
| 17 | `lemma` | [mvt_fc_upper_bound_pos_increasing_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/mvt-fc-upper-bound-pos-increasing-core--747231823fb63370d34fe8ca.md) | 465 | `result-track:747231823fb63370d34fe8ca7d3928d24ed69d163b112d933cce2952891be97a` |
| 18 | `lemma` | [mvt_fc_upper_bound_neg_decreasing_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/mvt-fc-upper-bound-neg-decreasing-core--1b60a25c9322df2992e4fa71.md) | 502 | `result-track:1b60a25c9322df2992e4fa71b6480a182d7e2fe2c533314b9513c5bd853188a7` |
| 19 | `lemma` | [mvt_fc_lower_bound_neg_decreasing_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/mvt-fc-lower-bound-neg-decreasing-core--fbf1715c18c00a4e6ff3a1c9.md) | 539 | `result-track:fbf1715c18c00a4e6ff3a1c903967897f936ab5de1a351b43a306de203cbe9a9` |
| 20 | `theorem` | [verify_unique_root_computable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/verify-unique-root-computable--fe33dfaa93c1b177d32ff452.md) | 580 | `result-track:fe33dfaa93c1b177d32ff452c27119f025402e0420ec8ddac287bd7753677f4e` |
| 21 | `theorem` | [verify_sign_change](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/verify-sign-change--176739fee7ee7c9096c98131.md) | 797 | `result-track:176739fee7ee7c9096c9813186445c3add89b94a1b1c71218b5cb07a1786a736` |
| 22 | `def` | [checkHasRoot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/checkhasroot--81830df4a24d0b834ec682ad.md) | 876 | `declaration-track:81830df4a24d0b834ec682ad6dc975fc040833e79611cab4b29a63ab09e5c569` |
| 23 | `theorem` | [verify_has_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/declarations/verify-has-root--2a9cd2da4e5b37673e4e3a01.md) | 888 | `result-track:2a9cd2da4e5b37673e4e3a01932ebe06c2921137d84240abb16014f590511b3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
