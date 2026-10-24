# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lemmas.Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "231f20078ba89a97ae26539ceb42b33fb36f576f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `231f20078ba89a97ae26539ceb42b33fb36f576f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofReal_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/ofreal-eval--dfdcd929706db9a02aba8429.md) | 25 | `result-track:dfdcd929706db9a02aba8429509efbdf32c7b1a76d955948cd0c76e73c29869a` |
| 2 | `lemma` | [RCLike.span_one_I](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/rclike-span-one-i--8517261c7128a24fdad1bfd6.md) | 31 | `result-track:8517261c7128a24fdad1bfd6b24f9f911d4c5ec02a914d4c89d40a597b3b71ef` |
| 3 | `lemma` | [RCLike.rank_le_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/rclike-rank-le-two--e90e590201e99ae020038959.md) | 37 | `result-track:e90e590201e99ae02003895910eabbd04bce501088c2af2cb8e4641780c8bc78` |
| 4 | `lemma` | [RCLike.finrank_le_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/rclike-finrank-le-two--92d1c1140b064132f3de7f35.md) | 49 | `result-track:92d1c1140b064132f3de7f355c33c5e82f28fa0dba18399adf137f4b11f8d040` |
| 5 | `instance` | [rclike_to_real](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/rclike-to-real--e92253df0d4aee388edcdc5f.md) | 61 | `declaration-track:e92253df0d4aee388edcdc5fe68f309040c64d9452629688490d28ce21ae231e` |
| 6 | `theorem` | [proper_rclike](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/proper-rclike--118752632b3fb1c0169b5081.md) | 70 | `result-track:118752632b3fb1c0169b5081584e136c4ae71145afae9fc71a1a408339962ac2` |
| 7 | `instance` | [RCLike.properSpace_submodule](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/rclike-properspace-submodule--b037c0f79fb1f8bd746bdb60.md) | 77 | `declaration-track:b037c0f79fb1f8bd746bdb60208d8ac054d51d6e876fef841c7ad2bba7b08b55` |
| 8 | `theorem` | [reCLM_norm](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/reclm-norm--8186786ab1c473bba3e6258a.md) | 86 | `result-track:8186786ab1c473bba3e6258aed063e0bd0aa707fcb2372da93ed2cf94e207f70` |
| 9 | `theorem` | [conjCLE_norm](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/conjcle-norm--af7fc8efa9c7d06aa193d8bb.md) | 92 | `result-track:af7fc8efa9c7d06aa193d8bb98683a8d2c66b2c6fad9cfd1d273fd199cc2cd0e` |
| 10 | `theorem` | [ofRealCLM_norm](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/ofrealclm-norm--028067b279f9d93cd67d8265.md) | 96 | `result-track:028067b279f9d93cd67d82652169a85d6faa68778887986b03357f82fdb0a5c0` |
| 11 | `lemma` | [aeval_conj](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/aeval-conj--83426d448d0ca18cf2e29c5d.md) | 106 | `result-track:83426d448d0ca18cf2e29c5d5d89b203645f9372d21ea95a97826e2716eaf4f1` |
| 12 | `lemma` | [aeval_ofReal](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/declarations/aeval-ofreal--887888a06090e7a2fc89dbd8.md) | 109 | `result-track:887888a06090e7a2fc89dbd8c4c162af55159bf8cd58d7d0ed6569c615a286d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
