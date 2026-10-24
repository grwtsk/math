# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Part.Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dd2b9174d884b73c8ac4b1e865bdffaf6da2e4d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dd2b9174d884b73c8ac4b1e865bdffaf6da2e4d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Part` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Monotone.partBind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/declarations/monotone-partbind--27247c368e621c101a979118.md) | 21 | `result-track:27247c368e621c101a97911888160840ced2d113877fa4cc4cfc539335afc0a6` |
| 2 | `lemma` | [Antitone.partBind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/declarations/antitone-partbind--2bb45d3dcf85f75e7cdb9eb9.md) | 27 | `result-track:2bb45d3dcf85f75e7cdb9eb9e58b2252bcf522a4357c5385081860152e929e52` |
| 3 | `lemma` | [Monotone.partMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/declarations/monotone-partmap--11b437dc423e3ce13d286c3d.md) | 38 | `result-track:11b437dc423e3ce13d286c3d0f6cac05bc881d78d349403ece472a1eb018ffc1` |
| 4 | `lemma` | [Antitone.partMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/declarations/antitone-partmap--1b9bf8b188624320f20d7a2e.md) | 41 | `result-track:1b9bf8b188624320f20d7a2ee729f250002e4ca780c0b0422b0bf5e185d5239b` |
| 5 | `lemma` | [Monotone.partSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/declarations/monotone-partseq--d6ef57c51dff95bd931fc57b.md) | 49 | `result-track:d6ef57c51dff95bd931fc57b21ad7896f936a9beb732c04ccebc0b0bb728797d` |
| 6 | `lemma` | [Antitone.partSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/declarations/antitone-partseq--ca320478b1ee46c9886e784e.md) | 52 | `result-track:ca320478b1ee46c9886e784ed18ab4dfc475d8175340c9d6b619996591798c95` |
| 7 | `def` | [partBind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f.lean/declarations/partbind--ab8b6021739d716109c12449.md) | 61 | `declaration-track:ab8b6021739d716109c124493cd3ba0ec2bd4b238a8102cf4a9862badf790562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
