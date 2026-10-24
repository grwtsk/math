# Verification target: GRWTSK.Algebra.LinearAlgebra.OrzechProperty.Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa369c75e839dfc5571646c9a0f08ee7d2801a15",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa369c75e839dfc5571646c9a0f08ee7d2801a15`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Equiv.TransferInstance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrzechProperty](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean/declarations/orzechproperty--adc7c689db30880386f19af4.md) | 59 | `declaration-track:adc7c689db30880386f19af418fa8cf1180f597a504cc4e7e8a5f468aa91cc9e` |
| 2 | `theorem` | [injective_of_surjective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean/declarations/injective-of-surjective-of-injective--ea2bc01a51d07d8456eeb715.md) | 69 | `result-track:ea2bc01a51d07d8456eeb71543a0433f1e111dd03cd67fa56327de0b376da1f0` |
| 3 | `theorem` | [injective_of_surjective_of_submodule](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean/declarations/injective-of-surjective-of-submodule--13eb2adbf68888c90076f9fc.md) | 84 | `result-track:13eb2adbf68888c90076f9fc6dfef287ac0eee24410feedd6cbe4179eee576d9` |
| 4 | `theorem` | [injective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean/declarations/injective-of-surjective-endomorphism--ba97f1ae36863932515df971.md) | 88 | `result-track:ba97f1ae36863932515df971bd32d605aa605ddf57a1732b98667d7db2aabe82` |
| 5 | `theorem` | [bijective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variantb8d7f4a9169216b5567b7ef35b66926ad850887ed8764fdd913d1ebdfbb78815.lean/declarations/bijective-of-surjective-endomorphism--b2b1cd2972f3c25ef8bf449d.md) | 92 | `result-track:b2b1cd2972f3c25ef8bf449d00c4d5b6ec88ceeb93c724a551578d1531e60371` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
