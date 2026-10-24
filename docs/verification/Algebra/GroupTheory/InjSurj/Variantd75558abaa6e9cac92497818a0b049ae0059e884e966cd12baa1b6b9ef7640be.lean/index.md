# Verification target: GRWTSK.Algebra.GroupTheory.InjSurj.Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cad54b262db1124ac76e3f210fb047e4ee1f38d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cad54b262db1124ac76e3f210fb047e4ee1f38d`.

Source path: `GRWTSK/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Injective.mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-mulzeroclass--ad71e70ab5235a8470cffae0.md) | 28 | `declaration-track:ad71e70ab5235a8470cffae05c99ed67bb8bc123a2a51c2197ef4df06160e78e` |
| 2 | `def` | [Function.Surjective.mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-surjective-mulzeroclass--04e8664eaf2bac4fe0d907d4.md) | 39 | `declaration-track:04e8664eaf2bac4fe0d907d488be769294569d7d9e86ba3460fe8a37af82f8ee` |
| 3 | `theorem` | [Function.Injective.noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-nozerodivisors--eb0a10b294d90dc7195499dd.md) | 56 | `result-track:eb0a10b294d90dc7195499dd94fa1b13dd0ca0161361b65ff858302b1429859c` |
| 4 | `theorem` | [Function.Injective.isLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-isleftcancelmulzero--ee7e41fe5e43b27a1617977c.md) | 63 | `result-track:ee7e41fe5e43b27a1617977ccffa1d1e801912d07dde2960168baf041efd4666` |
| 5 | `theorem` | [Function.Injective.isRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-isrightcancelmulzero--edbcabde1ca623e8c87fe9de.md) | 70 | `result-track:edbcabde1ca623e8c87fe9dee71d10c2ad611f6b3a6131229023c5e1acf62cef` |
| 6 | `def` | [Function.Injective.mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-mulzerooneclass--4dfca09c02397c719765a593.md) | 86 | `declaration-track:4dfca09c02397c719765a59310cabc3e7e4ae36c624e88d328f1d44fd54cd8d7` |
| 7 | `def` | [Function.Surjective.mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-surjective-mulzerooneclass--9384a0829afc896cc0eb5899.md) | 95 | `declaration-track:9384a0829afc896cc0eb5899332e609566f5c8aa4d7baea813b61d96a539b085` |
| 8 | `def` | [Function.Injective.semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-semigroupwithzero--7d6d12a8c17cdbe89612f34c.md) | 108 | `declaration-track:7d6d12a8c17cdbe89612f34c1903b57d3da13a0792c34181e2f293b1bd1eb516` |
| 9 | `def` | [Function.Surjective.semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-surjective-semigroupwithzero--faec72f4db17679a29d9f291.md) | 117 | `declaration-track:faec72f4db17679a29d9f2918868c4cc794c2c6210833b674dd15f5a9c476280` |
| 10 | `def` | [Function.Injective.monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-monoidwithzero--5977384014610241a8bbae73.md) | 130 | `declaration-track:5977384014610241a8bbae73965aaaee1d9425537a7951a20c08cf05c26cbe52` |
| 11 | `def` | [Function.Surjective.monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-surjective-monoidwithzero--2c8a7df42d507589221f1c97.md) | 140 | `declaration-track:2c8a7df42d507589221f1c979a690da04fb5e2c3be6c8abf704b4636394b6229` |
| 12 | `def` | [Function.Injective.commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-commmonoidwithzero--f72e6363260e5b3ac10f48b0.md) | 150 | `declaration-track:f72e6363260e5b3ac10f48b0f24521ad5fbaa56ccfd692dc45b403adecea0b09` |
| 13 | `def` | [Function.Surjective.commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-surjective-commmonoidwithzero--1acce52b1510fbedcba38a7f.md) | 160 | `declaration-track:1acce52b1510fbedcba38a7f2097979317ef504aa1737f88c174c89387f0d0d7` |
| 14 | `def` | [Function.Injective.cancelMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-cancelmonoidwithzero--eaa6494865ce8cb799bf82d3.md) | 176 | `declaration-track:eaa6494865ce8cb799bf82d3693fc14006373ee73d12dc8eda10395d3c194219` |
| 15 | `def` | [Function.Injective.cancelCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-cancelcommmonoidwithzero--7c1658844cefb93418f58df1.md) | 196 | `declaration-track:7c1658844cefb93418f58df1eb9470ff1a6a7853426af07f14317d2564dafaf4` |
| 16 | `def` | [Function.Injective.groupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-groupwithzero--fc8e405d332db252b5aa6710.md) | 212 | `declaration-track:fc8e405d332db252b5aa67108594bea0f8f0cf884c1b537b9b55b9af18c9c6d3` |
| 17 | `def` | [Function.Surjective.groupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-surjective-groupwithzero--e7d6fb6aa8ec4784d50e7e56.md) | 228 | `declaration-track:e7d6fb6aa8ec4784d50e7e568245b76f0010d9e55c242b082c2494700f463e27` |
| 18 | `def` | [Function.Injective.commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-injective-commgroupwithzero--eff26c0890eca922f33a639a.md) | 250 | `declaration-track:eff26c0890eca922f33a639a86b888dc9ef792be8e1bc8b4fa3c71f26476b389` |
| 19 | `def` | [Function.Surjective.commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/declarations/function-surjective-commgroupwithzero--dfa1e3474fbe92007a36961f.md) | 260 | `declaration-track:dfa1e3474fbe92007a36961feb76cf85b7f108dc24918114a5690cb4db49cfad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
