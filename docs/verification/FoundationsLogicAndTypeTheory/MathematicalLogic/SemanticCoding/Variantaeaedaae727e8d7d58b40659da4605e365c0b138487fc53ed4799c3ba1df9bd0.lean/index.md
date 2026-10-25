# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SemanticCoding.Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d83b0edfcfd289f44fade1f03537f0ae70f8ccbd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d83b0edfcfd289f44fade1f03537f0ae70f8ccbd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemanticTyping](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/declarations/semantictyping--f2fbd4b0623e7deafd787ced.md) | 24 | `declaration-track:f2fbd4b0623e7deafd787cedf2c1d2c62a711a278738f5286aa298f1f975ff33` |
| 2 | `structure` | [CodingEquivalenceInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/declarations/codingequivalenceinvariant--ede828ea8d8ffd9075649ac3.md) | 38 | `declaration-track:ede828ea8d8ffd9075649ac30a074bfbed551121c458db45ce62d91eaa5a5021` |
| 3 | `theorem` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/declarations/encode-injective--a6ac3bc3bf069bc58a07042b.md) | 52 | `result-track:a6ac3bc3bf069bc58a07042bff1e56b72d8c2fe3e62883b7161e45247d31427c` |
| 4 | `theorem` | [encode_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/declarations/encode-surjective--ec48c4fd4f9d6afb065f2fc6.md) | 63 | `result-track:ec48c4fd4f9d6afb065f2fc658fd3aa0d3ff5b1c2c7150e16ed8098908c6bf4a` |
| 5 | `structure` | [SemanticAutomorphism](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/declarations/semanticautomorphism--a1d9ddf65b17712cc1c124f4.md) | 80 | `declaration-track:a1d9ddf65b17712cc1c124f467ac9767dbf6656ce842c766bd41c8f9e1bc389a` |
| 6 | `theorem` | [SemanticAutomorphism.encode_equivariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/declarations/semanticautomorphism-encode-equivariant--56c3410d6537bd90b7ebed70.md) | 93 | `result-track:56c3410d6537bd90b7ebed706510046163a00694bcaf5a6a1fbfc708010d4dfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
