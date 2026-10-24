# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FactorCompletionV1.Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a83cad45f4e6ed759aae267d4fde57026e4fe84a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a83cad45f4e6ed759aae267d4fde57026e4fe84a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.FactorState` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [canonicalExactExtraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/declarations/canonicalexactextraction--e4e48a5bee527aced692ff63.md) | 27 | `result-track:e4e48a5bee527aced692ff634b46e98db706ecdc28360143e5911b4cfe08ccb7` |
| 2 | `inductive` | [ExtractionPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/declarations/extractionpath--b9745dcf3972a694a7719ebe.md) | 37 | `declaration-track:b9745dcf3972a694a7719ebe5740e6983a819b037855cba4b5afb1f57c92868d` |
| 3 | `def` | [identityRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/declarations/identityrefinement--2f79d6259dbd3f554561bf7b.md) | 44 | `declaration-track:2f79d6259dbd3f554561bf7bb56d036eb7c0a30490e0eff7adaadf30d1a34598` |
| 4 | `theorem` | [ExtractionPath.refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/declarations/extractionpath-refines--4511044903a5b3d3fc76b841.md) | 52 | `result-track:4511044903a5b3d3fc76b841ed36245390f15bd0491dcfabf174e27e29eaf168` |
| 5 | `theorem` | [ExtractionPath.preserves_exclusions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/declarations/extractionpath-preserves-exclusions--e309ffc48a1bd68c605a8c70.md) | 61 | `result-track:e309ffc48a1bd68c605a8c709b88ed405394eb276995a4bfe6c6b37b0b7099e0` |
| 6 | `theorem` | [nonterminal_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/declarations/nonterminal-step--41a59e4c46c3ed8afe26121a.md) | 67 | `result-track:41a59e4c46c3ed8afe26121a715615760d4383cbbc0d6673080f3877b3fd2da9` |
| 7 | `theorem` | [finite_terminal_completion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/declarations/finite-terminal-completion--5903c0bbccd7c59a4f61294e.md) | 77 | `result-track:5903c0bbccd7c59a4f61294ee7ddc2fd2bfbeb81bc16cade04757e091fdc21ab` |
| 8 | `theorem` | [finite_complete_factorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant571c68ca1f1c9b00d0cca2838ded1c55cb3adfd2a803a62c82d017a88915fd91.lean/declarations/finite-complete-factorization--2ea853450989b600d0260860.md) | 100 | `result-track:2ea853450989b600d0260860bf2fd5a80e02888f93a2ebad4413867fea4c70ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
