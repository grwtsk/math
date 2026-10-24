# Verification target: GRWTSK.Analysis.ComplexAnalysis.BigOperators.Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02af83a94a767ae66829f90ce9cd640c9fbfca95",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02af83a94a767ae66829f90ce9cd640c9fbfca95`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Balance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofReal_prod](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/ofreal-prod--47267e100de0c69f49c90980.md) | 21 | `result-track:47267e100de0c69f49c909808f387658835439fc34e3e30a8ff63cb8da61c01d` |
| 2 | `theorem` | [ofReal_sum](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/ofreal-sum--44a842789994140c962e1430.md) | 25 | `result-track:44a842789994140c962e1430bc04be81f321fdccf034b13fbe5fcdf58ae91b16` |
| 3 | `lemma` | [ofReal_expect](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/ofreal-expect--dafa5307ffd56cd719ee679f.md) | 29 | `result-track:dafa5307ffd56cd719ee679f0f5543a7c86f13cd8315874babfe17e667ab4c17` |
| 4 | `lemma` | [ofReal_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/ofreal-balance--52b053cc7226a504c4af9441.md) | 33 | `result-track:52b053cc7226a504c4af9441513552a0c9d54fb94fcc38b5e5a6e0146e33599b` |
| 5 | `lemma` | [ofReal_comp_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/ofreal-comp-balance--ad4ed051cb0031a9c2476731.md) | 36 | `result-track:ad4ed051cb0031a9c247673163129e5baa0d2c710e8adc87f26b3b0850680b59` |
| 6 | `theorem` | [re_sum](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/re-sum--ae4ad3ef4a36e1dce1103691.md) | 40 | `result-track:ae4ad3ef4a36e1dce1103691789b46cec83ca114cd3b3b7d64ce5cca817189b6` |
| 7 | `lemma` | [re_expect](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/re-expect--9d0bf71f1a1eef01b78459aa.md) | 44 | `result-track:9d0bf71f1a1eef01b78459aac8211d7983390ef35ef42959beab9c9da34a7744` |
| 8 | `lemma` | [re_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/re-balance--8dc154472a5191862ace3e30.md) | 48 | `result-track:8dc154472a5191862ace3e30d7db064297fb019b5723921374d503c1508822f8` |
| 9 | `lemma` | [re_comp_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/re-comp-balance--31daa1b1d6a3aa572ebe599d.md) | 51 | `result-track:31daa1b1d6a3aa572ebe599d329d50093cb5766744fa2fad3921c5cfa03dcc0c` |
| 10 | `theorem` | [im_sum](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/im-sum--2230958a4a9500efe7266ca6.md) | 55 | `result-track:2230958a4a9500efe7266ca684a42b0d87a7fbbaf223842430baca9acafe4878` |
| 11 | `lemma` | [im_expect](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/im-expect--830aa9b1e5a642eb822a4d82.md) | 59 | `result-track:830aa9b1e5a642eb822a4d8295e0356a785d9262a2ffe26ca66a6f0596715d9f` |
| 12 | `lemma` | [im_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/im-balance--251d525a957330b856f9be75.md) | 63 | `result-track:251d525a957330b856f9be7524400c87ae3c74ed97e73746a65862c9f84869b4` |
| 13 | `lemma` | [im_comp_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572.lean/declarations/im-comp-balance--930b3fc29769801c08bdc26d.md) | 66 | `result-track:930b3fc29769801c08bdc26dac57067fdaae17a7d3816abe2edb5ebc23dc3013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
