# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Ring.Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9e328f49ab5ed8fb7e76b20f1d60b82f364a8c1",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9e328f49ab5ed8fb7e76b20f1d60b82f364a8c1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasSum.mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/hassum-mul-left--93e09f5e2860cfc5afa07d76.md) | 42 | `result-track:93e09f5e2860cfc5afa07d76ea9a6abc804758db70886e9535ac34ecd459971e` |
| 2 | `theorem` | [HasSum.mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/hassum-mul-right--b3f920a723f81751a646f256.md) | 46 | `result-track:b3f920a723f81751a646f2563bf85c2c91b746ae2759af779ae0930dd18dfb3b` |
| 3 | `theorem` | [Summable.mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-mul-left--8c6583f87ce7c4dabfcd7772.md) | 50 | `result-track:8c6583f87ce7c4dabfcd777264bfe08ba0426573a756a1a6ef6a23c53bd5d4b8` |
| 4 | `theorem` | [Summable.mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-mul-right--84fe2e89529273c68fe71b5d.md) | 54 | `result-track:84fe2e89529273c68fe71b5d94a645c5e29ddcd548474fbf2a128945373c9f37` |
| 5 | `theorem` | [Summable.tsum_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-tsum-mul-left--09b1944d3199293bdfae6d11.md) | 62 | `result-track:09b1944d3199293bdfae6d11ef26e8b193a38efd4ef8ed4166ee814b84658af9` |
| 6 | `theorem` | [Summable.tsum_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-tsum-mul-right--eb8c03f78d86d54b1747a8cc.md) | 66 | `result-track:eb8c03f78d86d54b1747a8cc9ff61972188ff58aa9b2fefee93ac799fc6718ba` |
| 7 | `theorem` | [Commute.tsum_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/commute-tsum-right--0b3e21a65c94ef60d845d8ae.md) | 70 | `result-track:0b3e21a65c94ef60d845d8ae4df8fab294f08261a5db25151cb0db0a551203e7` |
| 8 | `theorem` | [Commute.tsum_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/commute-tsum-left--be6fade3be732e2286baa709.md) | 76 | `result-track:be6fade3be732e2286baa709a46dc2b559c2d77ef8d4ce605a698b3b47f9b8bf` |
| 9 | `theorem` | [HasSum.div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/hassum-div-const--47169e96ec69dc6ea2bb61c3.md) | 89 | `result-track:47169e96ec69dc6ea2bb61c352bc51fbb415f13f6a3f5db56cac8273865720e4` |
| 10 | `theorem` | [Summable.div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-div-const--924badbf3e96377261fca9e8.md) | 93 | `result-track:924badbf3e96377261fca9e8b2ef6520c2eb984c1a26e3cfd44691a5c68b585c` |
| 11 | `theorem` | [hasSum_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/hassum-mul-left-iff--4cfa87f184aad5caa108d08c.md) | 97 | `result-track:4cfa87f184aad5caa108d08cce2fe4967c9a204d0ef5fa8dca7348b74af742b8` |
| 12 | `theorem` | [hasSum_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/hassum-mul-right-iff--8981382fe1e657c12a5dc403.md) | 101 | `result-track:8981382fe1e657c12a5dc403118b1df2cfd117e1d28703774bef85200dd96288` |
| 13 | `theorem` | [hasSum_div_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/hassum-div-const-iff--973a568527351fb1aa5cfc78.md) | 105 | `result-track:973a568527351fb1aa5cfc78526eb1f7e4ec66495e7e59f390a74acc14f3d1a5` |
| 14 | `theorem` | [summable_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-mul-left-iff--b1d980f46a045f5fd81a705f.md) | 109 | `result-track:b1d980f46a045f5fd81a705fe79e46692cc995b16e964468473cb353f03d2999` |
| 15 | `theorem` | [summable_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-mul-right-iff--7fbc937a6a46f712c33cc9db.md) | 113 | `result-track:7fbc937a6a46f712c33cc9dbedea4197e8c75454d2591fff654831c017729627` |
| 16 | `theorem` | [summable_div_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-div-const-iff--8584ad5d3218ded0c5c98d50.md) | 117 | `result-track:8584ad5d3218ded0c5c98d50be8979dfda42a7cd5c5aa9bcc587ec42a2456264` |
| 17 | `theorem` | [tsum_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/tsum-mul-left--301640fc0dd4bde623d0d1b8.md) | 121 | `result-track:301640fc0dd4bde623d0d1b8cc3f799ab94319e2ad285c9d999b3efb38d235c1` |
| 18 | `theorem` | [tsum_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/tsum-mul-right--e3c9c4b6ba6a4e8597f4fdbe.md) | 128 | `result-track:e3c9c4b6ba6a4e8597f4fdbe5df0653aac294163427532e8a6fee2ba5fd825be` |
| 19 | `theorem` | [tsum_div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/tsum-div-const--2888b08885abb3e3af7f40be.md) | 135 | `result-track:2888b08885abb3e3af7f40be485811a57860ac354c1a77643299eb4b06bc9f3b` |
| 20 | `theorem` | [HasSum.mul_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/hassum-mul-eq--5abc54af20f640c705be4582.md) | 162 | `result-track:5abc54af20f640c705be4582349e9103bb5066706da767bdb31a1176ee87272b` |
| 21 | `theorem` | [HasSum.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/hassum-mul--a38c041ccf36e482648259d1.md) | 170 | `result-track:a38c041ccf36e482648259d1dbb0ff1c142b03962e063bfe6b4dc87222ab7166` |
| 22 | `theorem` | [tsum_mul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/tsum-mul-tsum--e81ca75152f4bda7e23836ae.md) | 179 | `result-track:e81ca75152f4bda7e23836ae0b2a6aeeb714b2e2babec05dd2d29a757112e9ca` |
| 23 | `theorem` | [summable_mul_prod_iff_summable_mul_sigma_antidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-mul-prod-iff-summable-mul-sigma-antidiagonal--5b72e65eca1dc7c159ac64a4.md) | 205 | `result-track:5b72e65eca1dc7c159ac64a41c20dd64c5dd92dbdf81e7613629ac00c315efab` |
| 24 | `theorem` | [summable_sum_mul_antidiagonal_of_summable_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-sum-mul-antidiagonal-of-summable-mul--7b8bf3c2705d39908f9ccf63.md) | 213 | `result-track:7b8bf3c2705d39908f9ccf63ede1477b2a779a9f277fcbfa6545c74c646b042c` |
| 25 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_antidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/tsum-mul-tsum-eq-tsum-sum-antidiagonal--799af416b40365d9aafc7ab1.md) | 226 | `result-track:799af416b40365d9aafc7ab11487027e1bc325015079c03878034a14dc6845a2` |
| 26 | `theorem` | [summable_sum_mul_range_of_summable_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/summable-sum-mul-range-of-summable-mul--47100faf002e76fa2db18c5a.md) | 236 | `result-track:47100faf002e76fa2db18c5a09de70076b20392924f61a0b4d9a081641d9fd60` |
| 27 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_range](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/declarations/tsum-mul-tsum-eq-tsum-sum-range--38117ea193d958ba330235d9.md) | 247 | `result-track:38117ea193d958ba330235d945826cc9dda8b791c8f3de951643b1c2d19d6ea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
