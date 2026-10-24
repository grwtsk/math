# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trunc.Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c5cd38d9eff1080f2dcec2859f5271c54ee468b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c5cd38d9eff1080f2dcec2859f5271c54ee468b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Interval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/truncfun--f0212b9296cfcf6f84a377f6.md) | 68 | `declaration-track:f0212b9296cfcf6f84a377f670adfec0adceba8a3198cbeceefb4b9f930cb756` |
| 2 | `theorem` | [coeff_truncFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/coeff-truncfun--9db66a773d7152aed5f681bf.md) | 71 | `result-track:9db66a773d7152aed5f681bfafd3393609929813c8d54048ac668857ee209521` |
| 3 | `def` | [trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc--96c3a0acd50b9e59c28a80c9.md) | 83 | `declaration-track:96c3a0acd50b9e59c28a80c966fae708270f239efe7ea5bf2020f07527fdfd41` |
| 4 | `theorem` | [coeff_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/coeff-trunc--48881f79dc717d891bd7a1df.md) | 95 | `result-track:48881f79dc717d891bd7a1dfd461f00dfa7de62dc7abd29ac60e772c4807b291` |
| 5 | `theorem` | [trunc_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc-one--71be82b2ce49b232d2a15082.md) | 100 | `result-track:71be82b2ce49b232d2a15082548cfae70c05c9e8fdddcb8e9dbb66fab050aebe` |
| 6 | `theorem` | [trunc_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc-c--999dbb8bb91aaca3c291100f.md) | 118 | `result-track:999dbb8bb91aaca3c291100f51131f016969caa6e24f83fadb2cc16e767fdaa9` |
| 7 | `theorem` | [trunc_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc-c-mul--45a2a75ed038616f87ed7b46.md) | 126 | `result-track:45a2a75ed038616f87ed7b4620cfbb50d26ee0b2515fdfc3abb8cc544e421258` |
| 8 | `theorem` | [trunc_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc-map--c703ebb3253d43f26acfc5f0.md) | 131 | `result-track:c703ebb3253d43f26acfc5f02e0da22beea85f274817be058b32e5e6bd651f14` |
| 9 | `def` | [truncFun'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/truncfun--a1137a498427e7419cdd2d28.md) | 142 | `declaration-track:a1137a498427e7419cdd2d28393b3d20d406572fca0131257f21f279c4172d35` |
| 10 | `theorem` | [coeff_truncFun'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/coeff-truncfun--c1225ebe0344864696e45222.md) | 146 | `result-track:c1225ebe0344864696e452223f920e43cc7ab56e436328faeda47ae466d0b5fe` |
| 11 | `def` | [trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc--f0690cc5489fa6a97f1b15e1.md) | 158 | `declaration-track:f0690cc5489fa6a97f1b15e1bc0896425e92d506edd06e568c7fc859a225175c` |
| 12 | `theorem` | [coeff_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/coeff-trunc--235bf3c4e6a8236675a8e53c.md) | 169 | `result-track:235bf3c4e6a8236675a8e53cdec875a447b729fb9e1ef919450e83aebf0d4fa2` |
| 13 | `theorem` | [trunc'_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc-one--344e2d78c40e1388bebf3517.md) | 175 | `result-track:344e2d78c40e1388bebf35173457dfe004ce07a31198f3f180fb623f4c4ff060` |
| 14 | `theorem` | [trunc'_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc-c--a4ed91caaecaaf54c4d356ff.md) | 187 | `result-track:a4ed91caaecaaf54c4d356ffb8829cb2cae98bacc634b9e8be10811c2e4c81cd` |
| 15 | `theorem` | [coeff_mul_eq_coeff_trunc'_mul_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--14cde4588f2dde8f36fca021.md) | 196 | `result-track:14cde4588f2dde8f36fca02106755ff6be2d97fd0d523272805760a10c363bd7` |
| 16 | `theorem` | [trunc'_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc-c-mul--123211258b5f42325de253c0.md) | 211 | `result-track:123211258b5f42325de253c00971d3f4dcbea7edfcfdbcfbe6551c8c2a248fe2` |
| 17 | `theorem` | [trunc'_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantcc48c133c96057ab6fbfb3aca1be9fae862833cbc622272e41bafd7e20dccae5.lean/declarations/trunc-map--01027f2f1d3290db5cb60959.md) | 216 | `result-track:01027f2f1d3290db5cb60959f65cfdccdb85cf6877a83a9a1e43d9f97c815ba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
