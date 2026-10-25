# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Balanced.Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d26cc37f11b9fe4d16992df6f7d06e33dc10f95",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d26cc37f11b9fe4d16992df6f7d06e33dc10f95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BalancedAtRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot--680520f91569a868aaa3abf3.md) | 45 | `declaration-track:680520f91569a868aaa3abf3f2c32e0cffb5a9c21a0e84ba98e753bdeeaed8a8` |
| 2 | `inductive` | [Balanced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balanced--e8d073407922cc6b9c64b886.md) | 52 | `declaration-track:e8d073407922cc6b9c64b886edc03788f45b3fe1f6f307bd588fa0e4392fb838` |
| 3 | `theorem` | [balanced_inner_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balanced-inner-iff--c2a5a2c1c8c3d95d8f5da6ff.md) | 65 | `result-track:c2a5a2c1c8c3d95d8f5da6ff894c47bb05a30100bacfbf3b3937146b3eba1339` |
| 4 | `theorem` | [balancedAtRoot_zero_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-zero-zero--ecafc739a04cfca8cb01197e.md) | 71 | `result-track:ecafc739a04cfca8cb01197e23f046e4f80f4283eceeb205cdccbbb681a72770` |
| 5 | `theorem` | [balancedAtRoot_zero_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-zero-one--a107be44240e95d72f9fbcd2.md) | 75 | `result-track:a107be44240e95d72f9fbcd2d6d4f209f0206b12e2347d93c692238420f26535` |
| 6 | `theorem` | [balancedAtRoot_one_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-one-zero--7fa0574daf973f7a5bf6440d.md) | 79 | `result-track:7fa0574daf973f7a5bf6440dad46b10968ed886f609f3e89f18b66dece9ebd8b` |
| 7 | `theorem` | [balancedAtRoot_one_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-one-one--38f1e64d01cef83a51cba7f5.md) | 83 | `result-track:38f1e64d01cef83a51cba7f53819e56fa0755a8072f2a4996222242d000ab4fc` |
| 8 | `theorem` | [balancedAtRoot_two_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-two-one--51058f85ebba13df5710a078.md) | 87 | `result-track:51058f85ebba13df5710a078cdb9b9ae0b2ec5c72f641aabe8055dc709e05ac1` |
| 9 | `theorem` | [balancedAtRoot_one_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-one-two--e27116a603eff10174ff9953.md) | 91 | `result-track:e27116a603eff10174ff99534a579bb06b9e4fe9b2da244a5f394cd8425596ac` |
| 10 | `theorem` | [balanced_one_leaf_leaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balanced-one-leaf-leaf--82dc1dea9a43c09613b3f422.md) | 94 | `result-track:82dc1dea9a43c09613b3f422708440c166f772d32bd62e727b9e9517e3f3c772` |
| 11 | `theorem` | [balancedAtRoot_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-zero-iff--4136573b76f11c173fc185b4.md) | 97 | `result-track:4136573b76f11c173fc185b4c1e1dc9ecdafffde87175a0fed76f50157751912` |
| 12 | `theorem` | [balancedAtRoot_zero_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-zero-iff--f6374c9e4a8673aef87e05c7.md) | 100 | `result-track:f6374c9e4a8673aef87e05c756b75e81f3e89f9d86aa57db58190eab4eebbb2e` |
| 13 | `theorem` | [Balanced.one_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balanced-one-le--6ecb45aef931942d27e7582c.md) | 103 | `result-track:6ecb45aef931942d27e7582c40536a7e2ec66641128ac00485a8bfa07f4259ed` |
| 14 | `theorem` | [Balanced.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balanced-eq--63bb049b5daa2612e6def82e.md) | 106 | `result-track:63bb049b5daa2612e6def82eba42566e37e1f6e0562dd3ac8eb86ea9c9baa09b` |
| 15 | `theorem` | [Balanced.left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balanced-left--9787f987873d0acfe9bfdd4a.md) | 109 | `result-track:9787f987873d0acfe9bfdd4a94a58d3d1bf27f77a74f5bfa178eb826b8b4863c` |
| 16 | `theorem` | [Balanced.right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balanced-right--b69f6082eb351dd0ed86ef79.md) | 112 | `result-track:b69f6082eb351dd0ed86ef79557c4df55c0ca49618b05346d3519e50a431691a` |
| 17 | `theorem` | [Balanced.at_root](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balanced-at-root--a7d176776aa3fba1b4c81096.md) | 115 | `result-track:a7d176776aa3fba1b4c81096f64583c29f4b5802cd00488f1f3623e05803dfe4` |
| 18 | `theorem` | [BalancedAtRoot.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantc7ff1bc6fa72b2f470026bcd75dd268fe1c4b263e4837883482495663b4868a3.lean/declarations/balancedatroot-symm--36d57e40aca87fc7eed6881e.md) | 119 | `result-track:36d57e40aca87fc7eed6881e146c5c2c141f32af2d097ebf1cc6171fa6d2dfa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
