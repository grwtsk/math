# Verification target: GRWTSK.Algebra.Bimodule.Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7419fbb9d7f7256db7d5ae449c27112aa28dba8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7419fbb9d7f7256db7d5ae449c27112aa28dba8`.

Source path: `GRWTSK/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/declarations/mk--88b47e0ead62327bf1321d3e.md) | 90 | `declaration-track:88b47e0ead62327bf1321d3ec141e1e15b9c5152d96dafd11a185459a94163d9` |
| 2 | `theorem` | [smul_mem](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/declarations/smul-mem--56532e3831bda00a68e9b2d8.md) | 99 | `result-track:56532e3831bda00a68e9b2d8750c41c5a7570e7dea217b4383a018357d982bbf` |
| 3 | `theorem` | [smul_mem'](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/declarations/smul-mem--75f76309fcb4c7cd88ca300f.md) | 103 | `result-track:75f76309fcb4c7cd88ca300f783ffa4822825a464a22331f29190c378912494d` |
| 4 | `def` | [baseChange](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/declarations/basechange--843559cf3e906c2db6fb915d.md) | 110 | `declaration-track:843559cf3e906c2db6fb915de30a4b6b1991ec76f60b923be8f05bbe700b7c37` |
| 5 | `def` | [toSubmodule](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/declarations/tosubmodule--a9e3eb975c8a9d2fabcbfee4.md) | 117 | `declaration-track:a9e3eb975c8a9d2fabcbfee4b81137c9a96d2acf3f5def1f165c19e0a6600b53` |
| 6 | `def` | [toSubmodule'](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/declarations/tosubmodule--71161fefa01a4bff57dc0d51.md) | 124 | `declaration-track:71161fefa01a4bff57dc0d513e1c26e5f24f0d0b649340e6df833d8bc0319d32` |
| 7 | `def` | [toSubbimoduleInt](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/declarations/tosubbimoduleint--1473722fd089cc6729096437.md) | 139 | `declaration-track:1473722fd089cc67290964376e1073d50e8c764f61c1273343548a26f21276fc` |
| 8 | `def` | [toSubbimoduleNat](../../../../mathematics/Algebra/Bimodule/Variant571f3add49eb528e2eabda621facdbe05f078baf76a7ef165867e29b532024e7.lean/declarations/tosubbimodulenat--530e74173a574180e1ca32ea.md) | 145 | `declaration-track:530e74173a574180e1ca32ea328f2f66e477d206bbda5b839e5dfbbd3233893f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
