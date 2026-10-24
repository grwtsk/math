# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Ring.Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96284595035807963eb423dbc69673323607bda2",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96284595035807963eb423dbc69673323607bda2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasSum.mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-mul-left--739c3fdf72fc1d95df39f1be.md) | 29 | `result-track:739c3fdf72fc1d95df39f1be36873c7fe33629de675ada78c1cce7a28407c52a` |
| 2 | `theorem` | [HasSum.mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-mul-right--05e19073e3d6e55e45150bb3.md) | 32 | `result-track:05e19073e3d6e55e45150bb30306c153bbc3b1a139ed42e666161cd33e5f8931` |
| 3 | `theorem` | [Summable.mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-mul-left--d4b7d0c8c9801f99f5ad89d7.md) | 35 | `result-track:d4b7d0c8c9801f99f5ad89d797f8fdb4b8a7c9b5319bbb4e156cdd7a0eb88fff` |
| 4 | `theorem` | [Summable.mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-mul-right--668afc0bf7ab5bc6606ff2ba.md) | 38 | `result-track:668afc0bf7ab5bc6606ff2ba53d1c6cdbee7e8b8808e84efe02204097b20d1ea` |
| 5 | `theorem` | [Summable.tsum_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-tsum-mul-left--7678176185a2784172e99fbb.md) | 45 | `result-track:7678176185a2784172e99fbb26d32a1160ccb12430d748c4477d602d3ae93130` |
| 6 | `theorem` | [Summable.tsum_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-tsum-mul-right--f83c1bda03ee512c5f5579d7.md) | 48 | `result-track:f83c1bda03ee512c5f5579d719c48c9288dda78a537ec027e13ced63cf75a2ed` |
| 7 | `theorem` | [Commute.tsum_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/commute-tsum-right--7dcb52ac5bd6fc6f572b4dce.md) | 51 | `result-track:7dcb52ac5bd6fc6f572b4dce45d95cad635d423f213c47220d6d63a7da301855` |
| 8 | `theorem` | [Commute.tsum_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/commute-tsum-left--6921a0589d153d41236c91f3.md) | 57 | `result-track:6921a0589d153d41236c91f3f906c611c043627c465e903cbaa642685fe87db5` |
| 9 | `theorem` | [HasSum.div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-div-const--a6792f154ea628460a4fc85e.md) | 69 | `result-track:a6792f154ea628460a4fc85ea01a6fe5a0c20bfce955128de2f5c64ada0ef138` |
| 10 | `theorem` | [Summable.div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-div-const--9fcf3ad5730eb54b70445676.md) | 72 | `result-track:9fcf3ad5730eb54b7044567677e484c0557f9d04ad22f6f8bae870991c410ae4` |
| 11 | `theorem` | [hasSum_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-mul-left-iff--ef81c6fb67a15237706e7633.md) | 75 | `result-track:ef81c6fb67a15237706e76339669da32793fe7d1f9430b586e774b61b21864d6` |
| 12 | `theorem` | [hasSum_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-mul-right-iff--5b5cf159ae57b15b89c4e23c.md) | 78 | `result-track:5b5cf159ae57b15b89c4e23cbc1b25326d04f8a84e8c3f5dc606f2a7ddf0fe1b` |
| 13 | `theorem` | [hasSum_div_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-div-const-iff--767c8f78189e431a7b4dc865.md) | 81 | `result-track:767c8f78189e431a7b4dc8654c2c8b9939755051c710476fddd3298d01c9a476` |
| 14 | `theorem` | [summable_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-mul-left-iff--06a71c21ec0633e3994cc3b9.md) | 84 | `result-track:06a71c21ec0633e3994cc3b97215947831b8d6ef224db46a0009e9eb681e6964` |
| 15 | `theorem` | [summable_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-mul-right-iff--095aa0e2f8093e965ff20664.md) | 87 | `result-track:095aa0e2f8093e965ff206645a02c34d7840c30dd8d5635e0ed1c0841c3a838f` |
| 16 | `theorem` | [summable_div_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-div-const-iff--6da99503c3a9bd6af1da2849.md) | 90 | `result-track:6da99503c3a9bd6af1da2849ae9a973c6428a5335af3d11acb48b2180a7cda9e` |
| 17 | `theorem` | [tsum_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/tsum-mul-left--d73232bfe48a2775b4c0169d.md) | 93 | `result-track:d73232bfe48a2775b4c0169d5f2c51fd1828cd902dfd0a754e12fe570cdb5bda` |
| 18 | `theorem` | [tsum_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/tsum-mul-right--7ee400173a8d94ba0d40fb3f.md) | 100 | `result-track:7ee400173a8d94ba0d40fb3fd533d7ebfaee488297c467478145376b42c11b4c` |
| 19 | `theorem` | [tsum_div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/tsum-div-const--ba255e401575b6132ec84468.md) | 107 | `result-track:ba255e401575b6132ec844687392e77128b1f853e70b884beb6446e78b5d31eb` |
| 20 | `theorem` | [HasSum.const_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-const-div--de531adcd89e802cf7bc8da6.md) | 110 | `result-track:de531adcd89e802cf7bc8da68d4ea14fd6622ae3e3923e446a7478304e6d8979` |
| 21 | `theorem` | [Summable.const_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-const-div--a44e0cf133b3d634f2953445.md) | 115 | `result-track:a44e0cf133b3d634f2953445963d3327dd3abd88b5baf8b2b7540e503785923c` |
| 22 | `theorem` | [hasSum_const_div_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-const-div-iff--fe0545b195cd592c13d78f2c.md) | 119 | `result-track:fe0545b195cd592c13d78f2c446b67a7f7b5f245a580d87eb542f5b84c39060d` |
| 23 | `theorem` | [summable_const_div_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-const-div-iff--a00d253e49d7608a617ec73f.md) | 123 | `result-track:a00d253e49d7608a617ec73f66a3f5ee60c28a22cc8906a282ebb73f7a3e183e` |
| 24 | `theorem` | [HasSum.mul_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-mul-eq--ca1c6159a336cb6a109a7dce.md) | 149 | `result-track:ca1c6159a336cb6a109a7dce3abb5bafafb79758cd4675a2ed1a6a378dc4380f` |
| 25 | `theorem` | [HasSum.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/hassum-mul--7dbb615e1f9fa66a93d60d9c.md) | 156 | `result-track:7dbb615e1f9fa66a93d60d9c0ae78472b520cbb6fa774552858ccc5347469648` |
| 26 | `theorem` | [Summable.tsum_mul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-tsum-mul-tsum--a947ddbfeaddea8a27841ca0.md) | 164 | `result-track:a947ddbfeaddea8a27841ca0ef748ba46eb36fadfc90aa7c9b0e2f926485a1fc` |
| 27 | `theorem` | [summable_mul_prod_iff_summable_mul_sigma_antidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-mul-prod-iff-summable-mul-sigma-antidiagonal--62957e617b90226a0338640a.md) | 194 | `result-track:62957e617b90226a0338640a66e2599dfcad1765a15061020fee59b0e18de563` |
| 28 | `theorem` | [summable_sum_mul_antidiagonal_of_summable_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-sum-mul-antidiagonal-of-summable-mul--08b98a5a55d66af568314791.md) | 201 | `result-track:08b98a5a55d66af568314791f33f61ca8a40b0c51837cf23130b61e84d566a3a` |
| 29 | `theorem` | [Summable.tsum_mul_tsum_eq_tsum_sum_antidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-tsum-mul-tsum-eq-tsum-sum-antidiagonal--e1e58502d0c3a4fe0ec6999a.md) | 213 | `result-track:e1e58502d0c3a4fe0ec6999ab456600fcff5d778dfb9b78701d273873fcdb215` |
| 30 | `theorem` | [summable_sum_mul_range_of_summable_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-sum-mul-range-of-summable-mul--5df33ccebc1e79975d5e670a.md) | 232 | `result-track:5df33ccebc1e79975d5e670accef231aec64a8b06530d6564fc0b6afa185bba5` |
| 31 | `theorem` | [Summable.tsum_mul_tsum_eq_tsum_sum_range](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/declarations/summable-tsum-mul-tsum-eq-tsum-sum-range--c955262179cb813a99f6baef.md) | 242 | `result-track:c955262179cb813a99f6baef25cd1824c053378e57c596ce7b4c39d8798c813d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
