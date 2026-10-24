# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ValuedCSP.Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80c7a8b6658c952c613ba47ba4ea13e61850645f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80c7a8b6658c952c613ba47ba4ea13e61850645f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Multiset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ValuedCSP](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/valuedcsp--3babba0931ddabac97a59f56.md) | 40 | `declaration-track:3babba0931ddabac97a59f569e884d1480cec1fc2e3c298b51f408b441f0e29b` |
| 2 | `structure` | [ValuedCSP.Term](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/valuedcsp-term--809ff6cd15e450d8e38f4cb4.md) | 46 | `declaration-track:809ff6cd15e450d8e38f4cb451b4db2ab2bb459ae719818d61a4e18a83597e6f` |
| 3 | `def` | [ValuedCSP.Term.evalSolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/valuedcsp-term-evalsolution--0e383e861751789dca4fa148.md) | 57 | `declaration-track:0e383e861751789dca4fa148b8e41c657634b3c0ba54e343dabb82a11c268539` |
| 4 | `abbrev` | [ValuedCSP.Instance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/valuedcsp-instance--34633d2a8addfc4c1698ebd2.md) | 62 | `declaration-track:34633d2a8addfc4c1698ebd22d2bf2b123cb72f58e696ffd116113854ca6fc45` |
| 5 | `def` | [ValuedCSP.Instance.evalSolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/valuedcsp-instance-evalsolution--a69177bda7c62732fa055757.md) | 66 | `declaration-track:a69177bda7c62732fa055757034b382de6ab24304b4df4df9aedce5548bd9935` |
| 6 | `def` | [ValuedCSP.Instance.IsOptimumSolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/valuedcsp-instance-isoptimumsolution--4280ad7017c8832427753aa1.md) | 71 | `declaration-track:4280ad7017c8832427753aa1b8c4d96b780d86f71c675a63989cf4f7315699f4` |
| 7 | `def` | [Function.HasMaxCutPropertyAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/function-hasmaxcutpropertyat--2883628333cfc4425ed3a0c2.md) | 77 | `declaration-track:2883628333cfc4425ed3a0c28654bed3c56bc95ef974e438b4b44e870393a994` |
| 8 | `def` | [Function.HasMaxCutProperty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/function-hasmaxcutproperty--fd10cc80508beaa0c6270c8f.md) | 82 | `declaration-track:fd10cc80508beaa0c6270c8fd91f98375d94037c9f28f730d7d7c98129a9f20d` |
| 9 | `abbrev` | [FractionalOperation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/fractionaloperation--d371bebf1885ff328dc44d84.md) | 86 | `declaration-track:d371bebf1885ff328dc44d8426074635796ef2fd7fdea5979aba9b2d3df7306c` |
| 10 | `def` | [FractionalOperation.size](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/fractionaloperation-size--85eee3159af7f4d99b119566.md) | 93 | `declaration-track:85eee3159af7f4d99b1195668c3a66b2ee1aa44adeb57420ee5f0f4f24e96714` |
| 11 | `def` | [FractionalOperation.IsValid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/fractionaloperation-isvalid--39d9e10dfc84ce116d3702e0.md) | 96 | `declaration-track:39d9e10dfc84ce116d3702e0a311ee25c2055678fd721b745aae6a3a3d168237` |
| 12 | `lemma` | [FractionalOperation.IsValid.contains](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/fractionaloperation-isvalid-contains--37838b1555120e83273f2371.md) | 100 | `result-track:37838b1555120e83273f23717623bc09f3d69e314fd8076a6e1458ae390b0daf` |
| 13 | `def` | [FractionalOperation.tt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/fractionaloperation-tt--ce0b49c1e23fa8be20b5735d.md) | 105 | `declaration-track:ce0b49c1e23fa8be20b5735d3bda0b4a1363a0a10c1853c2a6bc46a38c4bf545` |
| 14 | `def` | [Function.AdmitsFractional](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/function-admitsfractional--be2485e4f2ab3a5a2108cb05.md) | 110 | `declaration-track:be2485e4f2ab3a5a2108cb05910e92539c0feef39594bacdf11ca9c3ce52af68` |
| 15 | `def` | [FractionalOperation.IsFractionalPolymorphismFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/fractionaloperation-isfractionalpolymorphismfor--7b7e408f17f9f5972dd54668.md) | 115 | `declaration-track:7b7e408f17f9f5972dd546686bc7fa401bf342b8734c48d7e9ff82b4876412e6` |
| 16 | `def` | [FractionalOperation.IsSymmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/fractionaloperation-issymmetric--3e6ecf33cd649e8cf5526d40.md) | 120 | `declaration-track:3e6ecf33cd649e8cf5526d40405a88a4494bf3cc7b8754ae7c82070a0b8aea16` |
| 17 | `def` | [FractionalOperation.IsSymmetricFractionalPolymorphismFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/fractionaloperation-issymmetricfractionalpolymorphismfor--3fc7d8dc139920f3b7df8611.md) | 124 | `declaration-track:3fc7d8dc139920f3b7df8611cd5ecebcdf2e312a23571bfe3059845e275709c3` |
| 18 | `lemma` | [Function.HasMaxCutPropertyAt.rows_lt_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/function-hasmaxcutpropertyat-rows-lt-aux--270015d243cff5cb92cdf77f.md) | 128 | `result-track:270015d243cff5cb92cdf77f7679ce78459c6a3bb41b7ccfa563116a3ba90f96` |
| 19 | `lemma` | [Function.HasMaxCutProperty.forbids_commutativeFractionalPolymorphism](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variant229230efa440b2738ba226851111f438b942ce299ddec7d56724a575bf73ff29.lean/declarations/function-hasmaxcutproperty-forbids-commutativefractionalpolymorphism--3b65f7a5b7962ffeaa0060be.md) | 151 | `result-track:3b65f7a5b7962ffeaa0060be9cc7ba9ba3cbf7cb2984ab834767bec817325ccc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
