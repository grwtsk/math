# Verification target: GRWTSK.Algebra.LinearAlgebra.InjectiveDimension.Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31012cc24d9d44422103ea48d50eb04ad55935a6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31012cc24d9d44422103ea48d50eb04ad55935a6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/declarations/instance--589eee58fc768dbcabf5e38e.md) | 34 | `declaration-track:589eee58fc768dbcabf5e38eded36c64796b3805c5e639f4dec5649c24b310e3` |
| 2 | `lemma` | [localizedModule_hasInjectiveDimensionLE](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/declarations/localizedmodule-hasinjectivedimensionle--062c9f5d1b4e68b2eb7e41e3.md) | 42 | `result-track:062c9f5d1b4e68b2eb7e41e37962914731fe8ba45509822bf6333b994065cd59` |
| 3 | `lemma` | [injectiveDimension_le_injectiveDimension_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/declarations/injectivedimension-le-injectivedimension-of-islocalizedmodule--dfc1dfa3ecdb2c9d37ed8417.md) | 69 | `result-track:dfc1dfa3ecdb2c9d37ed8417721dda2cbe2d7ae9ba08a4ddfdd766837918b803` |
| 4 | `lemma` | [hasInjectiveDimensionLE_iff_forall_maximalSpectrum](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/declarations/hasinjectivedimensionle-iff-forall-maximalspectrum--c55a4c04bdd46d08a05dace9.md) | 88 | `result-track:c55a4c04bdd46d08a05dace90764666645aac5b1573cf56c4d5c0ffa4ab1f523` |
| 5 | `lemma` | [hasInjectiveDimensionLE_iff_forall_primeSpectrum](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/declarations/hasinjectivedimensionle-iff-forall-primespectrum--71283f356b628d6f1f8c57f7.md) | 126 | `result-track:71283f356b628d6f1f8c57f7f73d10be20421cae2e4b0d83f7cdd64c1f44518c` |
| 6 | `lemma` | [injectiveDimension_eq_iSup_localizedModule_prime](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/declarations/injectivedimension-eq-isup-localizedmodule-prime--cf1ddd49b67712ce3719aeeb.md) | 133 | `result-track:cf1ddd49b67712ce3719aeeb0737e1217f059009e6851411ed38577cb9545e22` |
| 7 | `lemma` | [injectiveDimension_eq_iSup_localizedModule_maximal](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/declarations/injectivedimension-eq-isup-localizedmodule-maximal--9a77226b279046e7f4c5acb7.md) | 155 | `result-track:9a77226b279046e7f4c5acb7577b7e837fab69ec4702d2d1216b669a35d5189a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
