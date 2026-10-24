# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ANF.Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c15caa7414202db60f7f6752d2a3ff04c5ccd00",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c15caa7414202db60f7f6752d2a3ff04c5ccd00`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Eval` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Eval` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/monomial--b621f96852fa31e3778b6b5b.md) | 13 | `declaration-track:b621f96852fa31e3778b6b5bee685a3521b2bab98710abb44506b9b8ba420311` |
| 2 | `structure` | [Polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial--a7b28b962404d9b9904839ad.md) | 17 | `declaration-track:a7b28b962404d9b9904839ad78846e2e8635e6c5b857900dc7b760253bd68a06` |
| 3 | `def` | [xorTree](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/xortree--214ce74f2b9d9d816d181e88.md) | 22 | `declaration-track:214ce74f2b9d9d816d181e8811f51a7e3417628f1704019e1140574f9e11d62e` |
| 4 | `theorem` | [eval_xorTree](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/eval-xortree--e8053d2c3815b96650f1edd2.md) | 25 | `result-track:e8053d2c3815b96650f1edd2f55ee0bf48ef5d7435df9875548d4b43f4b9c0c1` |
| 5 | `def` | [Monomial.eval](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/monomial-eval--a27d1b7f97720b626652e7e4.md) | 34 | `declaration-track:a27d1b7f97720b626652e7e4deecfc18bbaf75c6508ff84997c49c0658eb81c5` |
| 6 | `def` | [Monomial.toTree](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/monomial-totree--73d27135842bbd2b1f736d91.md) | 39 | `declaration-track:73d27135842bbd2b1f736d91b7428986817bb1793c3ffe568625521a5809a25f` |
| 7 | `theorem` | [Monomial.eval_toTree](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/monomial-eval-totree--b9ec6d79bdafcf7d2447b504.md) | 43 | `result-track:b9ec6d79bdafcf7d2447b504d7ab2db7c646a523ce3a3de0627077a2ad570586` |
| 8 | `def` | [evalTerms](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/evalterms--b773d5af1e7f3c69ece8aa38.md) | 53 | `declaration-track:b773d5af1e7f3c69ece8aa3876822cb18e63d880a068ec64707d1dfd9658162c` |
| 9 | `def` | [termsToTree](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/termstotree--a8dce1c9f1e55c5088870023.md) | 58 | `declaration-track:a8dce1c9f1e55c5088870023c667cb3b4566bb511871a74024a0ae801b2a3332` |
| 10 | `def` | [Polynomial.eval](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval--7d40b99d391fa21c3376e9e2.md) | 63 | `declaration-track:7d40b99d391fa21c3376e9e2c66b37c05237e60c4a7da6d76318a79b4b625605` |
| 11 | `def` | [Polynomial.toTree](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-totree--dd3c357584a440937b1009a1.md) | 67 | `declaration-track:dd3c357584a440937b1009a1f5b7c3e8cc192ebd6dc9a220d71357e9903e0d1a` |
| 12 | `def` | [Polynomial.zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-zero--9677fc3c06d62c5eea04c3a1.md) | 71 | `declaration-track:9677fc3c06d62c5eea04c3a1803666a60653a7229194d62cb57af104d4e613d5` |
| 13 | `def` | [Polynomial.one](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-one--fa6ff2411bdc1e721c7979c8.md) | 75 | `declaration-track:fa6ff2411bdc1e721c7979c8f299ed6a6fcb3e6d6c127bba7500c6cec9f6f982` |
| 14 | `def` | [Polynomial.var](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-var--057ab20cef62a7b61ce93732.md) | 79 | `declaration-track:057ab20cef62a7b61ce937327785b4078c01b65d544d0ee77f3474716b64bea5` |
| 15 | `def` | [Polynomial.add](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-add--8ccc8a6ff06127655e04eae1.md) | 83 | `declaration-track:8ccc8a6ff06127655e04eae1648c05740833e38678b32df3535746d4ffb4f3e1` |
| 16 | `def` | [multiplyMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/multiplymonomial--1055e2788fc02d0785e42056.md) | 87 | `declaration-track:1055e2788fc02d0785e42056cdb05bcf9469f6ab0d833fb9fdf4d3e7ab31add7` |
| 17 | `def` | [multiplyTerms](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/multiplyterms--1ebb085ddbfa9291c8a60539.md) | 92 | `declaration-track:1ebb085ddbfa9291c8a60539085593db1f006da94ab9bb9a7066be8819e209df` |
| 18 | `def` | [Polynomial.mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-mul--dff92c10b6f1b8ac6973df91.md) | 97 | `declaration-track:dff92c10b6f1b8ac6973df9145dc7dcf9b56181a1e3cb4dce83829cb187c9fe7` |
| 19 | `def` | [Polynomial.compl](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-compl--13ee83f37f5bd7080cdfbf9e.md) | 101 | `declaration-track:13ee83f37f5bd7080cdfbf9e9c9483da26f28646b1b283009320f4e53bfb2d25` |
| 20 | `def` | [Polynomial.disj](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-disj--630a400cbb05e65512087c20.md) | 105 | `declaration-track:630a400cbb05e65512087c20a5e29c31ca286f5f7df50f062d08249c83dc06c0` |
| 21 | `def` | [Polynomial.impl](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-impl--90d181bc786e6c4ed8df91ce.md) | 109 | `declaration-track:90d181bc786e6c4ed8df91ce2e5e78eb9bc34b7f0ef1e02ac20138b0fca79831` |
| 22 | `def` | [Polynomial.eqv](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eqv--d2f952680faa6beeea98c415.md) | 113 | `declaration-track:d2f952680faa6beeea98c415ac1504bec218ef2356bf3cde48609f51fe99133d` |
| 23 | `def` | [Polynomial.nand](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-nand--7f33cd37dc5f240798e8dace.md) | 117 | `declaration-track:7f33cd37dc5f240798e8dace6276faf0985af4d5828e309068313f270b763d50` |
| 24 | `theorem` | [Monomial.eval_append](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/monomial-eval-append--5400081b9ac4c5aa0787a484.md) | 120 | `result-track:5400081b9ac4c5aa0787a484c203aa9db4ac7ebc9a0ae3d0b0cd42b86f04afaf` |
| 25 | `theorem` | [evalTerms_append](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/evalterms-append--6dcd739d9886777a2b1f5632.md) | 133 | `result-track:6dcd739d9886777a2b1f563292bf1025f863f285748b4943d1e42d666fad865b` |
| 26 | `theorem` | [evalTerms_multiplyMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/evalterms-multiplymonomial--eb22701e6ef3b078883eb1c2.md) | 147 | `result-track:eb22701e6ef3b078883eb1c2c6d1bd02f0b4c943983dcdd72891f6dcac041d9d` |
| 27 | `theorem` | [evalTerms_multiplyTerms](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/evalterms-multiplyterms--bb6936fbf59e77be2bac6776.md) | 162 | `result-track:bb6936fbf59e77be2bac67761feaa11009cd874e4f088f9bf234d59b55a463a3` |
| 28 | `theorem` | [Polynomial.eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-zero--a6b9ffbb2e4530c5e4d53e95.md) | 176 | `result-track:a6b9ffbb2e4530c5e4d53e9547ca5631bc7c57c6d070cf2ae0a7b0db82d51d2d` |
| 29 | `theorem` | [Polynomial.eval_one](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-one--fe776d7bcefa84f8244bb777.md) | 180 | `result-track:fe776d7bcefa84f8244bb777413282233eda8c92c75834d2cc9b472406c1122e` |
| 30 | `theorem` | [Polynomial.eval_var](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-var--8a68212ad83233312a50f3de.md) | 184 | `result-track:8a68212ad83233312a50f3de9f6c3e5774a35e4b900e7d14516b55116246cda6` |
| 31 | `theorem` | [Polynomial.eval_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-add--5c4a1da3bc3ac8aa2d84488a.md) | 190 | `result-track:5c4a1da3bc3ac8aa2d84488abe5338dca9860a9985551bc0356e7b533fc58862` |
| 32 | `theorem` | [Polynomial.eval_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-mul--2e2157de6b13b12d27cc5329.md) | 199 | `result-track:2e2157de6b13b12d27cc53294167d5f5f9541dcfc9fb38e0dd55108de9cb5507` |
| 33 | `theorem` | [Polynomial.eval_compl](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-compl--321534dd6ca6ae1a3f95bd7c.md) | 208 | `result-track:321534dd6ca6ae1a3f95bd7ce70d497775a17e72f087a5f2f4b2e89e8d7c366c` |
| 34 | `theorem` | [Polynomial.eval_disj](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-disj--c99574773ae6f313a3ac2fcf.md) | 214 | `result-track:c99574773ae6f313a3ac2fcf7a0c899dbf4708e600b15bb15849e590147ba726` |
| 35 | `theorem` | [Polynomial.eval_impl](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-impl--1caedca1d8f484705bb6a8aa.md) | 223 | `result-track:1caedca1d8f484705bb6a8aa89548934bae738c662a1804399d4a7692aa29d94` |
| 36 | `theorem` | [Polynomial.eval_eqv](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-eqv--c6df1eb743c91acab0f17fc7.md) | 232 | `result-track:c6df1eb743c91acab0f17fc7d1efda87626335f38977bc8fe42075f835987f6b` |
| 37 | `theorem` | [Polynomial.eval_nand](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-nand--7dfee3d4eb5bd83f6812c262.md) | 241 | `result-track:7dfee3d4eb5bd83f6812c2620a88f13543984988040586bb5a977c971de59fc4` |
| 38 | `theorem` | [evalTerms_toTree](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/evalterms-totree--04177df1023a75cb414a473e.md) | 250 | `result-track:04177df1023a75cb414a473e5bfdfbf066197af8519b49a3fb6965e88791d86b` |
| 39 | `theorem` | [Polynomial.eval_toTree](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/polynomial-eval-totree--a4f38efbddf730f7ac34f26c.md) | 259 | `result-track:a4f38efbddf730f7ac34f26c93e51ebf14698c740024f98d535c39d18d887301` |
| 40 | `def` | [toANF](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/toanf--4744aabbacc9d2428fdcf84b.md) | 269 | `declaration-track:4744aabbacc9d2428fdcf84b758e911e6689e029ed9e4e956d3dd640f0070383` |
| 41 | `theorem` | [eval_toANF](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/eval-toanf--05622ba90ba927d5df34bd9b.md) | 280 | `result-track:05622ba90ba927d5df34bd9bca99b5f6b31e1bfbcda21398151c227af78b900c` |
| 42 | `def` | [toANF](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/toanf--74d3f4cfdf32f3c27d00ed41.md) | 300 | `declaration-track:74d3f4cfdf32f3c27d00ed412995bb578f1a5ab25826b0ea9b98e1a602c8a04d` |
| 43 | `theorem` | [eval_toANF](../../../../../mathematics/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/declarations/eval-toanf--d8363baad390a318622eb281.md) | 310 | `result-track:d8363baad390a318622eb281252799bc1bc3fd681d7376eb314873ca347f6364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
