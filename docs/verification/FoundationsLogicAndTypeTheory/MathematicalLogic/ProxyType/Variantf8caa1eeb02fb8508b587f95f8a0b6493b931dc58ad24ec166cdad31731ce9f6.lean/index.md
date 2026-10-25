# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProxyType.Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe39c29b57aa8afb2366bb56f5b303e3f5bf1a5c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe39c29b57aa8afb2366bb56f5b303e3f5bf1a5c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/initialize--3103aa1c167185bed3ccfed4.md) | 55 | `declaration-track:3103aa1c167185bed3ccfed43b477be32d4c7d582fe7b206f4ec9f00b0b2ea4a` |
| 2 | `structure` | [ProxyEquivConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/proxyequivconfig--9b7e59cdc84b725e7a1a1bd6.md) | 58 | `declaration-track:9b7e59cdc84b725e7a1a1bd68583ab3cd46bed4fd588e139847085741ab7528f` |
| 3 | `def` | [defaultMkCtorProxyType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/defaultmkctorproxytype--8bd0801dca7cae2b8c0b633b.md) | 86 | `declaration-track:8bd0801dca7cae2b8c0b633b73950e7d644b2d8fe993da7e04a0920b8088b913` |
| 4 | `def` | [defaultMkProxyType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/defaultmkproxytype--37f40472f06112dbddf2f18d.md) | 113 | `declaration-track:37f40472f06112dbddf2f18dc2fd96673e97845e43030ca563ad2843c97dd941` |
| 5 | `def` | [ProxyEquivConfig.default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/proxyequivconfig-default--36bfe97d0bb024858fe9f7b9.md) | 147 | `declaration-track:36bfe97d0bb024858fe9f7b9620f04f5526f69269afd2adf21e4eeefde61c4e8` |
| 6 | `def` | [ensureProxyEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/ensureproxyequiv--265b8d2e5b8ead49d0e72b3b.md) | 158 | `declaration-track:265b8d2e5b8ead49d0e72b3bc4aaeec9e4ec8833d86e19b61c1d8e8af2e65714` |
| 7 | `def` | [elabProxyEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/elabproxyequiv--dcfaf4bf7c57a82eafea15fd.md) | 243 | `declaration-track:dcfaf4bf7c57a82eafea15fd2bcf79d1866384b42a20fae99a13b4808798c28f` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/syntax--4f21bc913fe4d300228655cf.md) | 282 | `declaration-track:4f21bc913fe4d300228655cf5eb3d40b000e10c7e4204ca9231c333ee531f6c6` |
| 9 | `def` | [elab_proxy_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/declarations/elab-proxy-equiv--254e05c020580ce3d9dec466.md) | 285 | `declaration-track:254e05c020580ce3d9dec46625d1062874149c56c212a544e40aba605ba08f49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
