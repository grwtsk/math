# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SumIteratedDerivative.Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e5e1dc4749544825108ba6ea4b127c4c06fa777",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e5e1dc4749544825108ba6ea4b127c4c06fa777`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv--ade8a0c5bbf8c726da0c5734.md) | 58 | `declaration-track:ade8a0c5bbf8c726da0c573413e1c2d790ed5c1e1298cdd7ac14bf4f555ff714` |
| 2 | `theorem` | [sumIDeriv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv-apply--6240c7b636da5ef49e01fd8b.md) | 61 | `result-track:6240c7b636da5ef49e01fd8bbd8641baf40efb6b3a93b5ce41cf18e19d6d38f9` |
| 3 | `theorem` | [sumIDeriv_apply_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv-apply-of-lt--97c9fda7c0ed8905f4ab3be1.md) | 66 | `result-track:97c9fda7c0ed8905f4ab3be18082f0f0586ab1f690d67e6591514d6016ea19e5` |
| 4 | `theorem` | [sumIDeriv_apply_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv-apply-of-le--bf5ffefea1532c89de3b0d73.md) | 71 | `result-track:bf5ffefea1532c89de3b0d7375c4047c6baedae23ad629f07e9b17b3066bc0b8` |
| 5 | `theorem` | [sumIDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv-c--54886ea2dc200cabf9898ede.md) | 77 | `result-track:54886ea2dc200cabf9898ede824b90ec882116f194d18ba8ee5d95dcf1fc5ccf` |
| 6 | `theorem` | [sumIDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv-x--56bba8c1516a8b022a9b8701.md) | 81 | `result-track:56bba8c1516a8b022a9b8701920dfb713cc3b96d13a201e01f05533251915d26` |
| 7 | `theorem` | [sumIDeriv_map](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv-map--26ed763591bd1261b3994a2b.md) | 86 | `result-track:26ed763591bd1261b3994a2be17541a101c5a9b1c54ca2b26ece7040da745401` |
| 8 | `theorem` | [sumIDeriv_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv-derivative--9eea9a58a93f16e734683cb3.md) | 93 | `result-track:9eea9a58a93f16e734683cb3d67e96ea68aaddb4a839e393dc38af6e339b7f01` |
| 9 | `theorem` | [sumIDeriv_eq_self_add](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/sumideriv-eq-self-add--f73324aabf8c6999519ec1d0.md) | 98 | `result-track:f73324aabf8c6999519ec1d0f06a429e9abca5d088607a062930f0323be6d0a0` |
| 10 | `theorem` | [exists_iterate_derivative_eq_factorial_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/exists-iterate-derivative-eq-factorial-smul--206969a53369ae3779542d62.md) | 104 | `result-track:206969a53369ae3779542d629d60f36a69e2e2feffd0f2dd8a02fff39ad96026` |
| 11 | `theorem` | [aeval_iterate_derivative_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/aeval-iterate-derivative-of-lt--b09fde571792278fd0e9684b.md) | 119 | `result-track:b09fde571792278fd0e9684b7535ad1c73fab35a8666e085a86b2d24956a9ebf` |
| 12 | `theorem` | [aeval_iterate_derivative_self](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/aeval-iterate-derivative-self--685e3edd957b0f8c421874df.md) | 131 | `result-track:685e3edd957b0f8c421874dffbb0bcaee3cea3ec8a1251370cdbb99ff93b8083` |
| 13 | `theorem` | [aeval_iterate_derivative_of_ge](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/aeval-iterate-derivative-of-ge--e0162b1ec3433f73201aecf6.md) | 152 | `result-track:e0162b1ec3433f73201aecf6605072b562f99649fb2f40c57decd8cae1a70c2c` |
| 14 | `theorem` | [aeval_sumIDeriv_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/aeval-sumideriv-eq-eval--3782ea7c1aface7629f4be01.md) | 161 | `result-track:3782ea7c1aface7629f4be01a86f5935458fac25ab05c6ce88090d49aa514773` |
| 15 | `theorem` | [aeval_sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/aeval-sumideriv--6a974827f8bd84ce170db0f9.md) | 165 | `result-track:6a974827f8bd84ce170db0f90671d29b005b4bf2ae2de1b99e0c85e6d40b048f` |
| 16 | `theorem` | [aeval_sumIDeriv_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/aeval-sumideriv-of-pos--8ac543f4bdfe66ee270fbc30.md) | 192 | `result-track:8ac543f4bdfe66ee270fbc30c853b233cf020e8f67065065b6e39313f59aaf48` |
| 17 | `theorem` | [eval_sumIDeriv_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant1defc0d58f718ee92d17f9889d922f512ed7e4e50324a7987af7bca89dec41bf.lean/declarations/eval-sumideriv-of-pos--1faa3f0629b419305725428e.md) | 253 | `result-track:1faa3f0629b419305725428e304f316efdb053c8a2c7ce83e7b5448c9b4313eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
