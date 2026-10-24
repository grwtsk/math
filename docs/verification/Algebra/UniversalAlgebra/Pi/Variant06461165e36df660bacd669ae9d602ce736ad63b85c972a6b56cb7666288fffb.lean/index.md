# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e85c5eb68bf73c1af341e241913747c012ef406",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e85c5eb68bf73c1af341e241913747c012ef406`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/instance--f4eb9d53c216e09f610430da.md) | 27 | `declaration-track:f4eb9d53c216e09f610430da940aec2f78da1ec051064c0cc601656a1903d0b1` |
| 2 | `theorem` | [star_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/star-apply--d6387a2569b84d9f3f9ddc81.md) | 30 | `result-track:d6387a2569b84d9f3f9ddc81a8371121a8192a5b03b423c421a329ffe6116ef1` |
| 3 | `theorem` | [star_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/star-def--ae6b45e87668798547d5b745.md) | 33 | `result-track:ae6b45e87668798547d5b74502dcdb738e03607011a670f7f01c81daa78d483c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/instance--a47ec651c3a323ce5502064a.md) | 36 | `declaration-track:a47ec651c3a323ce5502064a530bc7865f239b74186c3e49f2c49de8fdea5bf4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/instance--4e1c0f90a2736f2b847ec979.md) | 39 | `declaration-track:4e1c0f90a2736f2b847ec97946251d6bb54c30cd802bea98b038c8bdd5d87419` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/instance--196fc75a30f52e6e0f775ff3.md) | 42 | `declaration-track:196fc75a30f52e6e0f775ff3413aa7186ff1d870cffeae26eb7a0c571fb39219` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/instance--76a5cbab3e655d1093e84464.md) | 45 | `declaration-track:76a5cbab3e655d1093e84464344c9e5125f10a51b3454b1427d2c67fe48a0b6d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/instance--997d72b1ab0ea0dd61efc394.md) | 48 | `declaration-track:997d72b1ab0ea0dd61efc39484ef7e0ffd78e58cd175d69ac5ac88d205dacff3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/instance--4a63e2538ec013262b0a26cf.md) | 51 | `declaration-track:4a63e2538ec013262b0a26cf3f2d7588016d3201de6b854b6e0bfe2941162c30` |
| 10 | `theorem` | [single_star](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/single-star--2572ebf61e6bee7ee90fce1d.md) | 55 | `result-track:2572ebf61e6bee7ee90fce1d54bb5384b130a4dfe508ef5ef0bc2103f82bfaa0` |
| 11 | `lemma` | [conj_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/conj-apply--65be3a2ad73fafa7279caae8.md) | 62 | `result-track:65be3a2ad73fafa7279caae8f30c3ef050e19be6c663d0586cf06cd87bbf58b7` |
| 12 | `theorem` | [update_star](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/update-star--66cd739f4fe60d3ed7ab5e62.md) | 69 | `result-track:66cd739f4fe60d3ed7ab5e62eecfb8698316e143f050e41c5101b984d9fa0033` |
| 13 | `theorem` | [star_sumElim](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant06461165e36df660bacd669ae9d602ce736ad63b85c972a6b56cb7666288fffb.lean/declarations/star-sumelim--77a8f9b9be693f2cf74229c1.md) | 73 | `result-track:77a8f9b9be693f2cf74229c193fe5d972277466c5d0f91c63b64265722e37d1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
