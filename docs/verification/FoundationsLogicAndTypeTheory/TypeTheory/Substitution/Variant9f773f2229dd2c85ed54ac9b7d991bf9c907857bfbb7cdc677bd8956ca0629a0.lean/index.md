# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.Substitution.Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9fa6b419c04d4d3c1e68732bf467319897c5c2f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9fa6b419c04d4d3c1e68732bf467319897c5c2f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.ContextualEquivalence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SubstitutionCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean/declarations/substitutioncertificate--c1bdc2b4592a0f8bbb136a8b.md) | 15 | `declaration-track:c1bdc2b4592a0f8bbb136a8bf6eac7d8424af7372a97c543d9c24b5d8ca112f4` |
| 2 | `def` | [ContextualSynonymy](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean/declarations/contextualsynonymy--b37c3a0db5552d12deec1161.md) | 32 | `declaration-track:b37c3a0db5552d12deec1161b8e8671ccebfeef17ce0a3be4aebe10262d8c272` |
| 3 | `structure` | [GlobalSynonymyClaim](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean/declarations/globalsynonymyclaim--b9e54a72214f18cd2728d53a.md) | 37 | `declaration-track:b9e54a72214f18cd2728d53a54d9292525b8474f3d3d150f11843db9f7fa0d23` |
| 4 | `def` | [contextualSynonymyPromotesToGlobal](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean/declarations/contextualsynonymypromotestoglobal--fb9efa82eca3f709c3c84d6e.md) | 42 | `declaration-track:fb9efa82eca3f709c3c84d6e3c9144137183d79b31ec2417c12b12053aead792` |
| 5 | `theorem` | [global_synonymy_prohibition](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean/declarations/global-synonymy-prohibition--7ae3f5069bb29575ebb44e00.md) | 45 | `result-track:7ae3f5069bb29575ebb44e0089d3b72324ca3883b2f43db2a99040014ce5e702` |
| 6 | `structure` | [SingleWordEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variant9f773f2229dd2c85ed54ac9b7d991bf9c907857bfbb7cdc677bd8956ca0629a0.lean/declarations/singlewordequivalent--7fa5e4f1fb0591827434e12e.md) | 49 | `declaration-track:7fa5e4f1fb0591827434e12e790dd0af310a5ff473bb414533a2467dca3edc84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
