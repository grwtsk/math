# Verification target: GRWTSK.Algebra.GroupTheory.Sum.Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b009ac051d84dd818c6040fc10e46e3be979bdc",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b009ac051d84dd818c6040fc10e46e3be979bdc`.

Source path: `GRWTSK/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean.json)

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
| 1 | `instance` | [instSMul](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/instsmul--c3c7f499b75891b3e608ec21.md) | 45 | `declaration-track:c3c7f499b75891b3e608ec211fecde217f260323f97e0ab3f7d4aa7e1d3a53ba` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/smul-def--25c9d86e66ba14fb6db9345d.md) | 49 | `result-track:25c9d86e66ba14fb6db9345d9f128a779b3bea0b299390ab7439a3caf8e7ff56` |
| 3 | `theorem` | [smul_inl](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/smul-inl--00f67f37d48dc17e41363365.md) | 53 | `result-track:00f67f37d48dc17e41363365c380e1900cacb6faa328c0c9879df7d70f006bbe` |
| 4 | `theorem` | [smul_inr](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/smul-inr--7c417c741f71d7a557e4b516.md) | 57 | `result-track:7c417c741f71d7a557e4b516f78e8e93fc3e1a174b141665d26f111e42588e1f` |
| 5 | `theorem` | [smul_swap](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/smul-swap--afb942b2894242b35019e86d.md) | 61 | `result-track:afb942b2894242b35019e86d5cc2e1da3ee2a343582953fe318ec57f2ab6f9f8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/instance--6d4ba1cc5cec166112fe29fe.md) | 63 | `declaration-track:6d4ba1cc5cec166112fe29fe3111830205906e28fd7c737aec0caf68d24e1277` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/instance--dfe1838a9d42712293c766fc.md) | 69 | `declaration-track:dfe1838a9d42712293c766fcdd0121ae7468cc33d45022c3c597029b591f4fa1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/instance--af126a2fb221112966cb75dd.md) | 75 | `declaration-track:af126a2fb221112966cb75dda744211da9491699991314f09627407fcfaea5ea` |
| 9 | `instance` | [FaithfulSMulLeft](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/faithfulsmulleft--aca3eefc080c9b9a3b3fa023.md) | 82 | `declaration-track:aca3eefc080c9b9a3b3fa023a5f93488768937319a6aa2e48b62d98727400e33` |
| 10 | `instance` | [FaithfulSMulRight](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/faithfulsmulright--f7222cecba99af92596dbfe4.md) | 86 | `declaration-track:f7222cecba99af92596dbfe462532c19a9389f045d0b321aa72d5461a69b240f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01.lean/declarations/instance--622f5161c0fa0d69b84a6829.md) | 92 | `declaration-track:622f5161c0fa0d69b84a6829d7f3b072dda98246cf5e57ce803bb38ab7542d6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
