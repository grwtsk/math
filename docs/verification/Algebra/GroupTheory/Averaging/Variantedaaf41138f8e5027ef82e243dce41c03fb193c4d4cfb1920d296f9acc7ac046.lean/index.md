# Verification target: GRWTSK.Algebra.GroupTheory.Averaging.Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53999eea59b2e5fdc4e4c2908f4fe931b1a80d8d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53999eea59b2e5fdc4e4c2908f4fe931b1a80d8d`.

Source path: `GRWTSK/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Heat.Transport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeatAveragingDescriptor](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean/declarations/heataveragingdescriptor--0aa1c77137623142ca123d72.md) | 33 | `declaration-track:0aa1c77137623142ca123d726b246061416f2ec256e09d5524dd52e3203cbe4d` |
| 2 | `structure` | [CertifiedHeatAveragingOperator](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean/declarations/certifiedheataveragingoperator--1d4acc0070027fc3598851fe.md) | 41 | `declaration-track:1d4acc0070027fc3598851fe4b642f068d93ebb65bf66b580f859c7e48fac1d6` |
| 3 | `theorem` | [heatAveraging_not_reversible_without_certificate](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean/declarations/heataveraging-not-reversible-without-certificate--cfb46374726d6d1fb409e293.md) | 46 | `result-track:cfb46374726d6d1fb409e2933e54fd379cc4aa7a4272ee2a13da81c565c7085d` |
| 4 | `theorem` | [heatAveraging_reversibility_requires_inverse_certificate](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantedaaf41138f8e5027ef82e243dce41c03fb193c4d4cfb1920d296f9acc7ac046.lean/declarations/heataveraging-reversibility-requires-inverse-certificate--46e895039a167fc5ab347300.md) | 53 | `result-track:46e895039a167fc5ab347300fbf41a8954f69959cf3186b47775079ce6d7091d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
