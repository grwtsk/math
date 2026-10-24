# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonovaryOrder.Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec79f2fb806f36deebe3c2b21193544b3852fe2b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec79f2fb806f36deebe3c2b21193544b3852fe2b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean.json)

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
| 1 | `def` | [MonovaryOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/monovaryorder--00de50c3b486b771e4c6fa30.md) | 38 | `declaration-track:00de50c3b486b771e4c6fa3043e8b35d3c986ac80ca998594e7273625c6f6a3e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/instance--3a736abf5e44a844bf6ff9f0.md) | 41 | `declaration-track:3a736abf5e44a844bf6ff9f03e8e19faa8cfe44fd4ee86b9a9fd389b6e8cc5ff` |
| 3 | `lemma` | [monovaryOn_iff_exists_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/monovaryon-iff-exists-monotoneon--9325c0122b31ca509e224ee6.md) | 52 | `result-track:9325c0122b31ca509e224ee69c305f69b326b40256b24d8cc9a5887465f6bcdd` |
| 4 | `lemma` | [antivaryOn_iff_exists_monotoneOn_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/antivaryon-iff-exists-monotoneon-antitoneon--a6f717f94704499179c88339.md) | 65 | `result-track:a6f717f94704499179c88339b7f096513b3e6e6a32cd8af54f41379c31f4dc32` |
| 5 | `lemma` | [monovaryOn_iff_exists_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/monovaryon-iff-exists-antitoneon--8fbe2ff6f545fbe0fd3671fc.md) | 69 | `result-track:8fbe2ff6f545fbe0fd3671fc3f94bc47e700a73051fb8b1d7aa0bfe58fe70c30` |
| 6 | `lemma` | [antivaryOn_iff_exists_antitoneOn_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/antivaryon-iff-exists-antitoneon-monotoneon--f56f30fc26333ebc16837364.md) | 74 | `result-track:f56f30fc26333ebc16837364172a1039272cb594989265b5a8458f52fe40b47d` |
| 7 | `lemma` | [monovary_iff_exists_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/monovary-iff-exists-monotone--78165b72db4c63053d028c42.md) | 78 | `result-track:78165b72db4c63053d028c4257fa866d9cbb8808b3ad7abfe7269aee49eac4e4` |
| 8 | `lemma` | [monovary_iff_exists_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/monovary-iff-exists-antitone--a1e26eb3e37f29e579cbb321.md) | 82 | `result-track:a1e26eb3e37f29e579cbb321aa9433b921683d503909a8b945095786254c59c5` |
| 9 | `lemma` | [antivary_iff_exists_monotone_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/antivary-iff-exists-monotone-antitone--a5e20f08e5d65b989e72606b.md) | 86 | `result-track:a5e20f08e5d65b989e72606b73a9da21b8e52e75b98f883e91de8819610c17ae` |
| 10 | `lemma` | [antivary_iff_exists_antitone_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant9ef9f79b5aba59927c51cd0f3fd96584d849fc3e3db392f94cd715dfe6431fb2.lean/declarations/antivary-iff-exists-antitone-monotone--05f6adc58780b7a00dac5958.md) | 90 | `result-track:05f6adc58780b7a00dac5958c1cfbc5ee0eb586338e682e8e784b7a8e044034d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
