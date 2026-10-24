# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "211c963917049ac0e992864408ad1b56ff11b1b0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `211c963917049ac0e992864408ad1b56ff11b1b0`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyParameterSeries`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySectionJetEquiv`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compatibleJets](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/compatiblejets--4c4839b1885447a42cafd8ed.md) | 25 | `declaration-track:4c4839b1885447a42cafd8edab3c5c6cebc27c6e81cfd07966a38c9a384df0b0` |
| 2 | `abbrev` | [Limit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/limit--ab51a204a39b50d58dc69484.md) | 47 | `declaration-track:ab51a204a39b50d58dc69484b2ee981f1e69abb7d918e6b9cd432bc45d9de5fd` |
| 3 | `def` | [projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/projection--64ea728179f8632e51d2eeab.md) | 50 | `declaration-track:64ea728179f8632e51d2eeab0be8c4404af35b634e4a7c892d17e3da77cd8806` |
| 4 | `theorem` | [limit_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/limit-ext--c23118de51740631dcd23d97.md) | 59 | `result-track:c23118de51740631dcd23d97b976330916eb8f2e9e19726a84365269a79f7095` |
| 5 | `theorem` | [projection_compatible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/projection-compatible--7de6d3827662555c050891e2.md) | 66 | `result-track:7de6d3827662555c050891e26bd048d68acb9c85172a7c6d3eb3547c17e18168` |
| 6 | `def` | [lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/lift--b38280d9cc66cd20a64b3b9c.md) | 72 | `declaration-track:b38280d9cc66cd20a64b3b9c394f8566c87caa4af78fd3ae8dd49b6e4d8368aa` |
| 7 | `theorem` | [projection_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/projection-lift--ef7ec75afe4147a380485179.md) | 84 | `result-track:ef7ec75afe4147a380485179d57b56ee132287333f293292392ca05b532e5286` |
| 8 | `theorem` | [lift_unique](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/lift-unique--f72a9dc7e83f1476ef008530.md) | 93 | `result-track:f72a9dc7e83f1476ef008530bca781aad7016b24ed05887ccfa07cb3d865de52` |
| 9 | `def` | [toParameters](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/toparameters--b1cc43717ba7478a52884e40.md) | 105 | `declaration-track:b1cc43717ba7478a52884e40bfb73812b2b5465a1beab8b0688c9f6ad14a25f0` |
| 10 | `def` | [fromParameters](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/fromparameters--e48d1b6d7b0673afe35c84e5.md) | 120 | `declaration-track:e48d1b6d7b0673afe35c84e548a314e93355904730e7a62ac78c372fc288e512` |
| 11 | `def` | [limitEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/limitequiv--78c435b646c09140b111b73a.md) | 136 | `declaration-track:78c435b646c09140b111b73aeb15b66e15bfc5fb7fc1f86c2bfd0ce264f893aa` |
| 12 | `def` | [completionEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/completionequiv--7eba29320c2cdfb5fc6f7b73.md) | 155 | `declaration-track:7eba29320c2cdfb5fc6f7b73fe2b867bdbc28df381061932b1de785286a38fd4` |
| 13 | `theorem` | [completion_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/completion-projection--4492dee6c68dea008bfc3bfd.md) | 161 | `result-track:4492dee6c68dea008bfc3bfd13ba7c5ce87852caf6e7fe90101558cb4d36da57` |
| 14 | `theorem` | [projection_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/projection-zero-iff--7d5e7fa9e98da4334d10a966.md) | 169 | `result-track:7d5e7fa9e98da4334d10a9661e7c633c47933847603628fcca91315a1baf9c4a` |
| 15 | `def` | [yCoordinate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/ycoordinate--f0e2b710944ffc10e32227e4.md) | 183 | `declaration-track:f0e2b710944ffc10e32227e44dff05b656889cf1d204be539ed2fa819dc91c56` |
| 16 | `def` | [xCoordinate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/xcoordinate--eec33089eeb9fce16dad956a.md) | 187 | `declaration-track:eec33089eeb9fce16dad956a933e372869003eb2486566c10b27ed2dacf3523c` |
| 17 | `theorem` | [completion_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/completion-y--bea0f009c508909e02fe1040.md) | 191 | `result-track:bea0f009c508909e02fe10405db0e06055bf46f59bd183ce3f44e2f0c8127067` |
| 18 | `theorem` | [limit_cubic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/limit-cubic--9c1840f8eca460be1757c36e.md) | 201 | `result-track:9c1840f8eca460be1757c36e953c32733f83c4ccbf6d4144b18a8dd9f8fe4be2` |
| 19 | `theorem` | [completion_x_cubic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/completion-x-cubic--aad667f33e76dbc23b9ed8e2.md) | 211 | `result-track:aad667f33e76dbc23b9ed8e2cd33c4cd7d3eebf68a4732ac166a6f5942b063ef` |
| 20 | `abbrev` | [FreySectionCompletion](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/freysectioncompletion--1e1a632080c43598531a4798.md) | 228 | `declaration-track:1e1a632080c43598531a479871e9e7d4c4260b9291b615d8f80d5fd6d2e450d4` |
| 21 | `def` | [PrimitiveAdditiveTriple.freySectionCompletionEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/primitiveadditivetriple-freysectioncompletionequiv--a4172f740001e84d15d4a3d0.md) | 233 | `declaration-track:a4172f740001e84d15d4a3d0db4b9a817865e2d7475712eb8d8b46f498655992` |
| 22 | `theorem` | [PrimitiveAdditiveTriple.freySectionCompletion_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/primitiveadditivetriple-freysectioncompletion-projection--186c20476bf5e5282fd428ae.md) | 240 | `result-track:186c20476bf5e5282fd428aee450a4ed40c80cdfed797446e4017a712574511e` |
| 23 | `theorem` | [PrimitiveAdditiveTriple.freySectionCompletion_filtration](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/declarations/primitiveadditivetriple-freysectioncompletion-filtration--9dad218132a56acf04e13cd3.md) | 249 | `result-track:9dad218132a56acf04e13cd38eb9d4b5bccfd6adc68f5aefa6f3206a5be60f2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
