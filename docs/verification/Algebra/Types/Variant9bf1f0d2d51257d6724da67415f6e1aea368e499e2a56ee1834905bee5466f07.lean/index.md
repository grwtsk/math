# Verification target: GRWTSK.Algebra.Types.Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0572c221a4ef8956d74e60b958477bf21355fbf1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/index.md) · [Full source](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0572c221a4ef8956d74e60b958477bf21355fbf1`.

Source path: `GRWTSK/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean.json)

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
| 1 | `abbrev` | [RingExpr](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/ringexpr--b772b64078568bb50eee1ee1.md) | 22 | `declaration-track:b772b64078568bb50eee1ee111b0721c9eab52e43f7768480b18c45e26cc0584` |
| 2 | `abbrev` | [SemiringExpr](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/semiringexpr--2927047cb75bc61ee56fede7.md) | 27 | `declaration-track:2927047cb75bc61ee56fede70f8eb2c892213104b9ef5c0779bf6020feea37eb` |
| 3 | `structure` | [Semiring](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/semiring--89ae6a45e21a26e4daa71b59.md) | 30 | `declaration-track:89ae6a45e21a26e4daa71b59d1a7b4c0b61cbcefc7950d08c978c1c2e91b3aa1` |
| 4 | `structure` | [Ring](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/ring--bb7dc65f67d7ff3ffbc2a625.md) | 44 | `declaration-track:bb7dc65f67d7ff3ffbc2a625748a9e3d587865bf9502cda5e708709364dd2a76` |
| 5 | `structure` | [CommRing](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/commring--6ddb7bdc68d3936961a94000.md) | 66 | `declaration-track:6ddb7bdc68d3936961a94000538bca79da82cb39523dc36cfc94fb06d00823e9` |
| 6 | `structure` | [CommSemiring](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/commsemiring--2a0db243d54a8569bd191a07.md) | 88 | `declaration-track:2a0db243d54a8569bd191a07b67d370a4351f741799362a21a66cfe31c8585a6` |
| 7 | `inductive` | [ClassifyResult](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/classifyresult--7b4a03d67dbad300638e0927.md) | 99 | `declaration-track:7b4a03d67dbad300638e09277243f79395a07b4998149a894789cd476f0c4ef9` |
| 8 | `structure` | [State](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/state--842c10cb5c049015781060a5.md) | 108 | `declaration-track:842c10cb5c049015781060a5afd64fa7a3dc27d0f557cdcb41d81d424af58035` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/builtin-initialize--a717f076194eb1a3e8048b32.md) | 123 | `declaration-track:a717f076194eb1a3e8048b3280f6cccdee2f468d770d26ea7629c9f04ec33b4c` |
| 10 | `def` | [getArithState](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/getarithstate--94a5f596b704beb13cb7f324.md) | 125 | `declaration-track:94a5f596b704beb13cb7f324dc872edc3d69f1ec5456019617ebe2a9d71fc48a` |
| 11 | `def` | [modifyArithState](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/modifyarithstate--ef99eb3ab99e255026f17f6a.md) | 128 | `declaration-track:ef99eb3ab99e255026f17f6a5897c7d891ef3eb83bbae590d47cbd8a91a5d213` |
| 12 | `def` | [getExpThreshold](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/getexpthreshold--fb3d42bfab25a988f3cdd7cd.md) | 132 | `declaration-track:fb3d42bfab25a988f3cdd7cd93f31097e29e8fe9d67404891367c4d05d9e142a` |
| 13 | `def` | [setExpThreshold](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/setexpthreshold--eb862547e605cd7f02153b04.md) | 136 | `declaration-track:eb862547e605cd7f02153b0428de8bcae07d840b0f5c878f486c03e87e367824` |
| 14 | `def` | [withExpThreshold](../../../../mathematics/Algebra/Types/Variant9bf1f0d2d51257d6724da67415f6e1aea368e499e2a56ee1834905bee5466f07.lean/declarations/withexpthreshold--d5a415c4bc1d5db943416d1f.md) | 140 | `declaration-track:d5a415c4bc1d5db943416d1f8f5cff4bd17c40b341c51639e895d4be7f41a1d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
