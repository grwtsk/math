# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "322ce7a612f66b952da05c860f6bd23b4ae6053f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `322ce7a612f66b952da05c860f6bd23b4ae6053f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/mul-zero-subset--4fc5a3f3424839fba7a8d28f.md) | 35 | `result-track:4fc5a3f3424839fba7a8d28f6970e9c3c89464cc44a91b328284b4dfbd41a045` |
| 2 | `lemma` | [zero_mul_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/zero-mul-subset--d41585496d062c7f7dfa2652.md) | 36 | `result-track:d41585496d062c7f7dfa2652c7d1c6989a75455013d2b908c1c66a9d0e24fdbb` |
| 3 | `lemma` | [Nonempty.mul_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/nonempty-mul-zero--0bf2ddd6a96c727ba4f73348.md) | 38 | `result-track:0bf2ddd6a96c727ba4f73348a0e6941ce81d7166cbb9cdacd825d66abf6f3e53` |
| 4 | `lemma` | [Nonempty.zero_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/nonempty-zero-mul--48f50e25e2ddd444f685e2ef.md) | 41 | `result-track:48f50e25e2ddd444f685e2ef6068336dff046280ac616a06d10fc1ef57566c19` |
| 5 | `lemma` | [div_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/div-zero-subset--775fb072114adf5abd0870c2.md) | 49 | `result-track:775fb072114adf5abd0870c2bfeb4bb6db35cd0b232da397200634bd57e9feed` |
| 6 | `lemma` | [zero_div_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/zero-div-subset--7b570476829f6dc65ae4305d.md) | 51 | `result-track:7b570476829f6dc65ae4305dc7c52289d378fe5f706f18727ae9f59378042066` |
| 7 | `lemma` | [Nonempty.div_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/nonempty-div-zero--2950ce8a687eeae885567bc5.md) | 53 | `result-track:2950ce8a687eeae885567bc57708da6e91bd13f8e7a57781ee424ec0849739a7` |
| 8 | `lemma` | [Nonempty.zero_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/nonempty-zero-div--877b42a119dc193f2857733d.md) | 56 | `result-track:877b42a119dc193f2857733de12541986fdc3f39b49aaacbaca20c554589de25` |
| 9 | `lemma` | [inv_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5dc66a142aae972301f7d8f641bdacdb66b82b29adcf0c94f9ee75d0b062d222.lean/declarations/inv-zero--3f0830deb040fae1805ca919.md) | 59 | `result-track:3f0830deb040fae1805ca919acc510c23aee728b1784d9bf7cd28a67e2db515b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
