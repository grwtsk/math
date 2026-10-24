# Verification target: GRWTSK.Algebra.GroupTheory.TypeTags.Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "226a4ab5f372da7c51794be47e60494f2bc26407",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `226a4ab5f372da7c51794be47e60494f2bc26407`.

Source path: `GRWTSK/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Additive.vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/additive-vadd--cd85e223600fdf59ba4b2728.md) | 35 | `declaration-track:cd85e223600fdf59ba4b27289bd3ed1273241c38ae8f4afd3ffaea7f55cf1a3a` |
| 2 | `instance` | [Multiplicative.smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/multiplicative-smul--1ae8034b487ae55cb595a608.md) | 37 | `declaration-track:1ae8034b487ae55cb595a6082ff0df83c05a0eb7af59d0905402ea7bee42ba54` |
| 3 | `lemma` | [toMul_smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/tomul-smul--9da15e2a0fecf8514b969f17.md) | 39 | `result-track:9da15e2a0fecf8514b969f17eea7bba288fc25dcbb38b29073969d195ada2008` |
| 4 | `lemma` | [ofMul_vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/ofmul-vadd--c2dde97b6aa4e67dedb7af7c.md) | 41 | `result-track:c2dde97b6aa4e67dedb7af7ca841ff3bdfe106b9db7d8e8a093d7fd7cdc833a8` |
| 5 | `lemma` | [toAdd_vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/toadd-vadd--c5efa7984480902f1029fe45.md) | 43 | `result-track:c5efa7984480902f1029fe4584443805ce8aeda18013e2bd9c56547e45090c60` |
| 6 | `lemma` | [ofAdd_smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/ofadd-smul--af2e8a7f9790e3c43330e628.md) | 45 | `result-track:af2e8a7f9790e3c43330e62837fe62342273ef90034c0e1d3ca92745a53c36d9` |
| 7 | `instance` | [Additive.addAction](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/additive-addaction--91d18080fa24e9ee34cd61af.md) | 48 | `declaration-track:91d18080fa24e9ee34cd61afb215ef7b478c598dd2a77d875a0a284eaa4fb156` |
| 8 | `instance` | [Multiplicative.mulAction](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/multiplicative-mulaction--80f0969b0fac55a93b11c5a8.md) | 52 | `declaration-track:80f0969b0fac55a93b11c5a8fbbd996fab9b0895d0a8da2ceca6d0fe7ab2dd42` |
| 9 | `instance` | [Additive.vaddCommClass](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/additive-vaddcommclass--ab2b29029118c3016335c4ed.md) | 57 | `declaration-track:ab2b29029118c3016335c4ed7c1577aaa0d228d1213a99c4d71c198dc48f9e04` |
| 10 | `instance` | [Multiplicative.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant7f86290002a4ac1a6777648914f7595fa2c6b416257ef79440ecce66aea70cd7.lean/declarations/multiplicative-smulcommclass--0ad54cd1544fb11f15b09798.md) | 61 | `declaration-track:0ad54cd1544fb11f15b097988792c7d469603f6bc7f7788fecdb569cb9062e27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
