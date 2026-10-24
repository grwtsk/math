# Verification target: GRWTSK.Analysis.FunctionalAnalysis.ContinuousAlgEquiv.Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be31a3496bfe3fdec99c27c55ca181c5e7208440",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be31a3496bfe3fdec99c27c55ca181c5e7208440`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean.json)

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
| 1 | `theorem` | [ContinuousAlgEquiv.eq_continuousLinearEquivConjContinuousAlgEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/continuousalgequiv-eq-continuouslinearequivconjcontinuousalgequiv--8f117ffe40f7a3fe80e3f4b5.md) | 39 | `result-track:8f117ffe40f7a3fe80e3f4b5d44012b74d56b0730a5715d85384ed051140c58e` |
| 2 | `theorem` | [ContinuousLinearEquiv.conjContinuousAlgEquiv_surjective](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/continuouslinearequiv-conjcontinuousalgequiv-surjective--252eaa3773102c6a10efa8f4.md) | 94 | `result-track:252eaa3773102c6a10efa8f4a4c5b153365869ce8f2e330c2f65bf1f138e3de9` |
| 3 | `abbrev` | [auxContinuousLinearEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/auxcontinuouslinearequiv--cd52cfdf4d75b2270ca52041.md) | 111 | `declaration-track:cd52cfdf4d75b2270ca52041d772c49d693d1abba64e465b96b7d936d26c62eb` |
| 4 | `theorem` | [coe_auxContinuousLinearEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/coe-auxcontinuouslinearequiv--b12ef1c4d8730b6a8f2da013.md) | 124 | `result-track:b12ef1c4d8730b6a8f2da013f398bcc0391e645a0030229a67586a4303cd3090` |
| 5 | `abbrev` | [auxIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/auxisometry--c49326496fb882f590ac10fb.md) | 130 | `declaration-track:c49326496fb882f590ac10fb521cb10b9ffdc63bee39b25e8c70d3a138a75cd1` |
| 6 | `theorem` | [coe_auxIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/coe-auxisometry--95041d2cd0ed92d49c0d3558.md) | 140 | `result-track:95041d2cd0ed92d49c0d35584059858513257c0db7ff28619e9cb2f9026a840d` |
| 7 | `theorem` | [coe_symm_auxIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/coe-symm-auxisometry--f3ee27c6b75ae35f75a4b85e.md) | 144 | `result-track:f3ee27c6b75ae35f75a4b85eff2ad4afd42046e339b98950443f20bf0d9e0a06` |
| 8 | `theorem` | [StarAlgEquiv.eq_linearIsometryEquivConjStarAlgEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/staralgequiv-eq-linearisometryequivconjstaralgequiv--b34c86b5d50a407723f1f131.md) | 161 | `result-track:b34c86b5d50a407723f1f131e5bd09a7f3704abc2f8c306fae0281bf0ce3b74a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/declarations/instance--38463637b97ede1c8c811af3.md) | 233 | `declaration-track:38463637b97ede1c8c811af393e8420221bbff759001cd3e22173e365fc501dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
