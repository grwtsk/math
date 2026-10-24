# Verification target: GRWTSK.Algebra.GroupTheory.IterateAct.Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a945ca46a66afd5fb352fca72be502387926a59",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a945ca46a66afd5fb352fca72be502387926a59`.

Source path: `GRWTSK/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean.json)

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
| 1 | `structure` | [IterateAddAct](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean/declarations/iterateaddact--5a259f82e0a6f14b851da906.md) | 24 | `declaration-track:5a259f82e0a6f14b851da90611167ee7f82f858fff6967fdb7e840e067b06cbc` |
| 2 | `structure` | [IterateMulAct](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean/declarations/iteratemulact--62b360ea7a9612c7ef9910bb.md) | 30 | `declaration-track:62b360ea7a9612c7ef9910bb19141d2ce697c2e66a1a7562ad13fa235296e9e5` |
| 3 | `instance` | [instCountable](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean/declarations/instcountable--7abec048f0586c76dd248c15.md) | 39 | `declaration-track:7abec048f0586c76dd248c15b550618fd9755be082cf0a5bac4934bcdc4f5c96` |
| 4 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean/declarations/instcommmonoid--af18a7548f2894f6b7abbf3c.md) | 43 | `declaration-track:af18a7548f2894f6b7abbf3c5118428691c9ba5047c74896d06a3ce42f25b351` |
| 5 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean/declarations/instmulaction--30f1c8473aa6488d8fe26a62.md) | 55 | `declaration-track:30f1c8473aa6488d8fe26a625fa0c6d44abc30750faa0173cf94fbea55905b3b` |
| 6 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa.lean/declarations/mk-smul--b7aa9da76e692d1667d4b4ab.md) | 61 | `result-track:b7aa9da76e692d1667d4b4ab4ee9f5baaea27d2728134873a903eb646352689e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
