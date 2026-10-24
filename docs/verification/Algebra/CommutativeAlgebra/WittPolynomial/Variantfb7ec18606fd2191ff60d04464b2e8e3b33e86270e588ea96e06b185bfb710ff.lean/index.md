# Verification target: GRWTSK.Algebra.CommutativeAlgebra.WittPolynomial.Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85fe636349227feac6e11bc4df6fbd29183d92c8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85fe636349227feac6e11bc4df6fbd29183d92c8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/wittpolynomial--658394b818629d3d01ab8403.md) | 88 | `declaration-track:658394b818629d3d01ab840384a7b05c239024b48c206aacd2bc6ca2f7f9fada` |
| 2 | `theorem` | [wittPolynomial_eq_sum_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/wittpolynomial-eq-sum-c-mul-x-pow--552e1d5bef432f2dec20c567.md) | 91 | `result-track:552e1d5bef432f2dec20c5674290cd60fd08380ebee53e49a587ad3452a2ec36` |
| 3 | `theorem` | [map_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/map-wittpolynomial--15a38d7e7d6602a06e1d868d.md) | 122 | `result-track:15a38d7e7d6602a06e1d868da8b253eec883fa692dc81622447589731931f6c9` |
| 4 | `theorem` | [constantCoeff_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/constantcoeff-wittpolynomial--7c72fcb59c2629507cb8349c.md) | 130 | `result-track:7c72fcb59c2629507cb8349ced523927ac080b4ec42e8323e303d9259a23b4c8` |
| 5 | `theorem` | [wittPolynomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/wittpolynomial-zero--f327013d8428e86761539bda.md) | 140 | `result-track:f327013d8428e86761539bda6c0952a9567190826069b9e871b7ecb2becba875` |
| 6 | `theorem` | [wittPolynomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/wittpolynomial-one--432748d6ff1ff8e4ed533f8c.md) | 144 | `result-track:432748d6ff1ff8e4ed533f8c3151ff45a7272b75291f168770f2066ff42c36c0` |
| 7 | `theorem` | [aeval_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/aeval-wittpolynomial--38288279abe90921d2783be8.md) | 148 | `result-track:38288279abe90921d2783be8ba2aad5f7af0768da99919abaf5e240bc68b6e41` |
| 8 | `theorem` | [wittPolynomial_zmod_self](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/wittpolynomial-zmod-self--0d66ac4be8a22b55d4616723.md) | 155 | `result-track:0d66ac4be8a22b55d4616723267b8a028fdf0678b5ed7e728916d409689e6156` |
| 9 | `theorem` | [wittPolynomial_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/wittpolynomial-vars--81bb1576e712eef0cc020670.md) | 170 | `result-track:81bb1576e712eef0cc02067066f1585a8f81cd57b849d34c005463c7821a6055` |
| 10 | `theorem` | [wittPolynomial_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/wittpolynomial-vars-subset--df602b64e78efe7211a84e3e.md) | 182 | `result-track:df602b64e78efe7211a84e3e862802f828649b992f01f6c86ca619e2173c2e03` |
| 11 | `def` | [xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/xintermsofw--c36c049d0389b7bb2b537c32.md) | 202 | `declaration-track:c36c049d0389b7bb2b537c323e87281be48e856f70a4cbc3e8ed3f8a150b2111` |
| 12 | `theorem` | [xInTermsOfW_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/xintermsofw-eq--792e63196451aa8e072bf280.md) | 206 | `result-track:792e63196451aa8e072bf2800f29583b402d2732e6bf7e2189712415c8e3b28f` |
| 13 | `theorem` | [constantCoeff_xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/constantcoeff-xintermsofw--02115c19f785220424d9623a.md) | 212 | `result-track:02115c19f785220424d9623aa6b09e387576a581f2abbb80b293d3f3f212e70a` |
| 14 | `theorem` | [xInTermsOfW_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/xintermsofw-zero--bb57ac14e7afbc173cac0f3c.md) | 224 | `result-track:bb57ac14e7afbc173cac0f3cf6b89440668f6d8b23f96a3c6785cc477e9d7e15` |
| 15 | `theorem` | [xInTermsOfW_vars_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/xintermsofw-vars-aux--d254b5961277c482fa56d762.md) | 231 | `result-track:d254b5961277c482fa56d762e8d4c13a095f44dda06b4561be9b37794908a13a` |
| 16 | `theorem` | [xInTermsOfW_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/xintermsofw-vars-subset--a5cff51c00e4cd273f99cdce.md) | 258 | `result-track:a5cff51c00e4cd273f99cdce729337df1e7b5f05c7d16bc7949ae77c2a78c008` |
| 17 | `theorem` | [xInTermsOfW_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/xintermsofw-aux--1d0c4bcf6d9ea315b615f00d.md) | 263 | `result-track:1d0c4bcf6d9ea315b615f00d2c47649d8e1078a4a768a15af32f1cb36c3cb109` |
| 18 | `theorem` | [bind₁_xInTermsOfW_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/bind-xintermsofw-wittpolynomial--c6daa2703156cf7fb8112fe0.md) | 270 | `result-track:c6daa2703156cf7fb8112fe09e525cffa98bb04eff1a69836f4f1428f82ccc3e` |
| 19 | `theorem` | [bind₁_wittPolynomial_xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/declarations/bind-wittpolynomial-xintermsofw--e88b4bbd8b89d22bda420bee.md) | 279 | `result-track:e88b4bbd8b89d22bda420bee2986e7dc15f931e8e733091f8fd41b767f662db3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
