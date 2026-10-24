# Verification target: GRWTSK.Algebra.UniversalAlgebra.End.Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9f54fbeedda5d92ef2be232068dffc04380b4d7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9f54fbeedda5d92ef2be232068dffc04380b4d7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/applymulaction--d810af46a2cf0ee8049ca11e.md) | 20 | `declaration-track:d810af46a2cf0ee8049ca11e3a93f6bd9040570e6f4ea84d072cbbed29925355` |
| 2 | `lemma` | [smul_def](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/smul-def--2c66add0a6db22c19668b443.md) | 25 | `result-track:2c66add0a6db22c19668b4437246854f6f495504696d6874b92339c50d35bd9f` |
| 3 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/apply-faithfulsmul--dac28cc9eee818db78f3b6c0.md) | 27 | `declaration-track:dac28cc9eee818db78f3b6c0fa58d2765e09ef854efbc375ea32c39c60b77cb4` |
| 4 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/applymulaction--ef5707760cc961320e3259c9.md) | 35 | `declaration-track:ef5707760cc961320e3259c95576bea9208888f3e0aec121b73910648ff53fd8` |
| 5 | `lemma` | [smul_def](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/smul-def--3468e29d5eaf291df82c5954.md) | 40 | `result-track:3468e29d5eaf291df82c59541b724320dddd79bb23e20b98f6bc7d2341e4a886` |
| 6 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/apply-faithfulsmul--7376acafa37fef9bfd6b66a9.md) | 42 | `declaration-track:7376acafa37fef9bfd6b66a938d92cd097f741cc64ee3e2e7525a7be3807c1b5` |
| 7 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/applymulaction--3fd5b077f0e9c2a4777af4cb.md) | 50 | `declaration-track:3fd5b077f0e9c2a4777af4cb9a4a116005ea8aecb88a5c2c456f9f0830f3cab6` |
| 8 | `lemma` | [smul_def](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/smul-def--9c132f3bd6c6f914a2dea160.md) | 55 | `result-track:9c132f3bd6c6f914a2dea160843dd54e348921c4378ecf1c8b9ca06eb6975f34` |
| 9 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/UniversalAlgebra/End/Variantcbfabaf7be8d550313d7cf26732a75f9d8168608d5cd661604be7e4a138f2bbb.lean/declarations/apply-faithfulsmul--e73c612bc9f634f6b7c3360b.md) | 57 | `declaration-track:e73c612bc9f634f6b7c3360b0871926d525a0f5e57ec27972c6dd0602867c3c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
