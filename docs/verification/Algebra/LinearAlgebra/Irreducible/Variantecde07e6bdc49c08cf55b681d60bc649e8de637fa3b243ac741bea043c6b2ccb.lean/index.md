# Verification target: GRWTSK.Algebra.LinearAlgebra.Irreducible.Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07f2ccc62c2cadc77a3ec4710119ebd970b3b772",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07f2ccc62c2cadc77a3ec4710119ebd970b3b772`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean.json)

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
| 1 | `abbrev` | [IsIrreducible](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/isirreducible--3db6255bb033663c91cb44ab.md) | 38 | `declaration-track:3db6255bb033663c91cb44ab5ba79d35af88cfc0f7f1405ecd8f9761f7811de4` |
| 2 | `theorem` | [irreducible_iff_isSimpleModule_asModule](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/irreducible-iff-issimplemodule-asmodule--4a4ef704665874298559d3a5.md) | 41 | `result-track:4a4ef704665874298559d3a57c4a629da8128dfbff00f0c3e1e6daf7b4debf7e` |
| 3 | `theorem` | [isSimpleModule_iff_irreducible_ofModule](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/issimplemodule-iff-irreducible-ofmodule--65d8de3c5962c7808f180c61.md) | 47 | `result-track:65d8de3c5962c7808f180c612895343926b2203f6282b0230152201fee9d6e18` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/instance--eca11ca183190f3b73005174.md) | 56 | `declaration-track:eca11ca183190f3b730051741585963827877fb5a8d17dcc902b70cd777c6f8e` |
| 5 | `theorem` | [injective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/injective-or-eq-zero--5b32813d1bad789b61cd0ea7.md) | 61 | `result-track:5b32813d1bad789b61cd0ea70c170fc751e144f88906f457c3282bc583fa184b` |
| 6 | `theorem` | [surjective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/surjective-or-eq-zero--ca392a10fb221019348a127f.md) | 65 | `result-track:ca392a10fb221019348a127fd3386c7498f304774dd62f58bd3b1dac4b0a25f8` |
| 7 | `theorem` | [bijective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/bijective-or-eq-zero--f90dfce86ab5e8eaefb0f5d5.md) | 69 | `result-track:f90dfce86ab5e8eaefb0f5d593b90a0034e0e89ec749486d5d56c5658a50c9f5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/instance--158c55c864148f31f67f1eb4.md) | 73 | `declaration-track:158c55c864148f31f67f1eb474b60a1098523d37bc142e35bd7b4c28417802df` |
| 9 | `theorem` | [algebraMap_intertwiningMap_bijective_of_isAlgClosed](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/algebramap-intertwiningmap-bijective-of-isalgclosed--d22c3fc847265575a6117af9.md) | 79 | `result-track:d22c3fc847265575a6117af936bc625c2a511a252106797536bd4cfa998b61ab` |
| 10 | `theorem` | [finrank_intertwiningMap_self](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/finrank-intertwiningmap-self--8add7c3871fba32864b7d053.md) | 86 | `result-track:8add7c3871fba32864b7d053aef2fafb726a52e3e7f8a799648b03cd5484ac34` |
| 11 | `theorem` | [finrank_eq_one_of_isMulCommutative](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variantecde07e6bdc49c08cf55b681d60bc649e8de637fa3b243ac741bea043c6b2ccb.lean/declarations/finrank-eq-one-of-ismulcommutative--a5058a5a11886418f363a20c.md) | 94 | `result-track:a5058a5a11886418f363a20c24c56f514b470a3423fef223e6b33bb51f2f32b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
