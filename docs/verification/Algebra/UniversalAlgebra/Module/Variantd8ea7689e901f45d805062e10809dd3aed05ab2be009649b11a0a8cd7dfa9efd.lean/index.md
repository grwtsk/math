# Verification target: GRWTSK.Algebra.UniversalAlgebra.Module.Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6ad9ea964ca1d20919e4553d722005329ffef69",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6ad9ea964ca1d20919e4553d722005329ffef69`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean.json)

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
| 1 | `instance` | [instSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/declarations/instsmul--20992aac1ed18607413c3203.md) | 44 | `declaration-track:20992aac1ed18607413c3203f686b89a076dd5b5f6ab36626e8f0a5c83ec0e9b` |
| 2 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/declarations/coe-smul--529b18f0e8cbf799bae61b8c.md) | 48 | `result-track:529b18f0e8cbf799bae61b8c696f03adc99d18885f430e555b2d3ffe2450eb73` |
| 3 | `lemma` | [mk_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/declarations/mk-smul--30e60295972e34143b904ef1.md) | 52 | `result-track:30e60295972e34143b904ef108ec5c51931b6d784804a65555f03097944d36e0` |
| 4 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/declarations/instisscalartower--ecc68694d2230e5cee5c4934.md) | 61 | `declaration-track:ecc68694d2230e5cee5c4934970d7732c89be698526f1411dcd02f749400d258` |
| 5 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/declarations/instsmulwithzero--c29aa9934dd67191c40c0fc5.md) | 70 | `declaration-track:c29aa9934dd67191c40c0fc5706c30cff31ee090fa2feb36c9e234fbe4ad53ce` |
| 6 | `instance` | [instIsOrderedModule](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/declarations/instisorderedmodule--f6a9e8438d090cb29666dcd1.md) | 81 | `declaration-track:f6a9e8438d090cb29666dcd19e57168e5938600305fe3054d4b41cf9734de760` |
| 7 | `instance` | [instIsStrictOrderedModule](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/declarations/instisstrictorderedmodule--4c82d841b2978f76d351ab02.md) | 85 | `declaration-track:4c82d841b2978f76d351ab02ba37ea5531888fe59f053d8246ac245232aa58d8` |
| 8 | `instance` | [instModule](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd8ea7689e901f45d805062e10809dd3aed05ab2be009649b11a0a8cd7dfa9efd.lean/declarations/instmodule--32444dd21f32d782cb7b02ce.md) | 97 | `declaration-track:32444dd21f32d782cb7b02ce17ff7c038433485a9d45c25221b553e6717599b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
