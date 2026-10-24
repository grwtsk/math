# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a701daf72467b547ed6ea294b2fd51388d42f7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a701daf72467b547ed6ea294b2fd51388d42f7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean.json)

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
| 1 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/declarations/basis--965600e547c3823c862b27f5.md) | 52 | `declaration-track:965600e547c3823c862b27f5656c16cc13e5fbf65c1348460348ec59cc26b6db` |
| 2 | `lemma` | [basis_A_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/declarations/basis-a-eq--147998934ff0eeb41bfda88b.md) | 96 | `result-track:147998934ff0eeb41bfda88bfad449142d8777ab6b3f3dc33f469d057bf5ec76` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/declarations/instance--4aba5191335a0e350bf63612.md) | 98 | `declaration-track:4aba5191335a0e350bf63612799d0bd04cedcddecf2a580ddf7c3c335bb44cf8` |
| 4 | `def` | [equivRootSystem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/declarations/equivrootsystem--0b8400244067f95652c5ea8a.md) | 106 | `declaration-track:0b8400244067f95652c5ea8a44f51ee4379c205a76de2a0d20906803053abe6b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/declarations/instance--4eb0c1bb12cc78da7ac4e130.md) | 110 | `declaration-track:4eb0c1bb12cc78da7ac4e13036c2bea5092181f91534cdfe8229b9cdabb4a12e` |
| 6 | `def` | [equivLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/declarations/equivliealgebra--8d5f31ee13941c0c83312e8a.md) | 126 | `declaration-track:8d5f31ee13941c0c83312e8afaa6a07c1a16d9370b5bd8442f3b1ab121963d2a` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106.lean/declarations/example--5df92573b9ecb4e8fad02b1b.md) | 134 | `declaration-track:5df92573b9ecb4e8fad02b1bec48223d48136c7d48826f790b8fdb02aeceb640` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
