# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Arc.Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "909e1c060e2f906caf2111427e87a6de18cf4306",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `909e1c060e2f906caf2111427e87a6de18cf4306`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.GraphCut` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArcDirection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/arcdirection--021d02fdc8ce19062ba99c51.md) | 15 | `declaration-track:021d02fdc8ce19062ba99c51476fbbf434680199b78bff23a7f5871012861870` |
| 2 | `def` | [ArcDirection.code](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/arcdirection-code--3885cd1850e07c06f1189a3e.md) | 20 | `declaration-track:3885cd1850e07c06f1189a3e51c6595ce776ddc2ea6250ac9848218798bc404d` |
| 3 | `theorem` | [ArcDirection.code_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/arcdirection-code-injective--eeac0c05c2a2afc5090bec5e.md) | 24 | `result-track:eeac0c05c2a2afc5090bec5e427c1cfb9af22de928f1c6a100d311a455b8d640` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/instance--4ecf8232761695ecaa671aed.md) | 30 | `declaration-track:4ecf8232761695ecaa671aed82ec4d0c39f1ec4435e9fe0b2ae122ce17827d28` |
| 5 | `structure` | [Arc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/arc--573101226fff594973771d29.md) | 35 | `declaration-track:573101226fff594973771d297eb712dc2793e3aae6e4b9677e298e5a3e46ef02` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/instance--ef497108e2ea88f539cfee53.md) | 40 | `declaration-track:ef497108e2ea88f539cfee53f9f9a1f64e119cd26839dbf93ecc8e42d6ec2eb2` |
| 7 | `def` | [directionCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/directioncode--80d72a32752606a6c07eddbf.md) | 59 | `declaration-track:80d72a32752606a6c07eddbf8f8b825606e2d20c0b932ff9961e449cae335717` |
| 8 | `def` | [tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/tail--7571d2bc9c3ec1760dddc1fa.md) | 62 | `declaration-track:7571d2bc9c3ec1760dddc1fa42937c71fb38a2032d08996bcd43dfaacd571ee1` |
| 9 | `def` | [head](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/head--f79767c4ac9b82b463c492b4.md) | 69 | `declaration-track:f79767c4ac9b82b463c492b46c13694531ad313085fa0f411dda3e82957eef12` |
| 10 | `def` | [reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/reverse--e2a47ec4aebd9904d774f472.md) | 76 | `declaration-track:e2a47ec4aebd9904d774f472c06601220dcfc1e49536bde0a92c8c2d938984cb` |
| 11 | `theorem` | [reverse_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/reverse-reverse--fd844af4aba5e795f64cb4cb.md) | 86 | `result-track:fd844af4aba5e795f64cb4cbcba3db8492cdd86e7017b2ba11330a6590af6119` |
| 12 | `theorem` | [reverse_involutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/reverse-involutive--f6329e897de61367068a940d.md) | 94 | `result-track:f6329e897de61367068a940d02721ec0e22e96856bef972e09ec18dd819ef863` |
| 13 | `theorem` | [tail_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/tail-reverse--c24cfa32e79e932666075469.md) | 100 | `result-track:c24cfa32e79e9326660754694b8d64d837099c52b8231a15608985958114a678` |
| 14 | `theorem` | [reverse_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/reverse-tail--ee23d5200c2790f0e29b3b8b.md) | 108 | `result-track:ee23d5200c2790f0e29b3b8b5301b961b6084557d6573aa841cb213ae226e816` |
| 15 | `theorem` | [head_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/head-reverse--328c0e287a048013e055a8ad.md) | 115 | `result-track:328c0e287a048013e055a8adcfe99a14b6ef92a0003b04317567fa9d7c96f7e0` |
| 16 | `theorem` | [reverse_head](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/reverse-head--22bc3945e5bb083e0104b7b6.md) | 123 | `result-track:22bc3945e5bb083e0104b7b66a99b489035478e0a517c6325a07367d1990c553` |
| 17 | `def` | [canonicalKey](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/canonicalkey--d922b0a58e9966027b972148.md) | 129 | `declaration-track:d922b0a58e9966027b97214892ae88d11a4832d8ebc6fe499ea9ab5e4337a90d` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/instance--0b2579e48897d611fad14f5e.md) | 134 | `declaration-track:0b2579e48897d611fad14f5ecc14788f278cc6664705e7aa12c38d571c0e1296` |
| 19 | `theorem` | [canonicalKey_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/canonicalkey-injective--1086e7e847368b5348b31f12.md) | 138 | `result-track:1086e7e847368b5348b31f126c167e9292cddf8d71f786ff954bbf332c5b033b` |
| 20 | `def` | [canonicalLexKey](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/canonicallexkey--ccf4cee87b7c60ae88c5a94c.md) | 158 | `declaration-track:ccf4cee87b7c60ae88c5a94c345ebf3664089087e12798b4f09b81c4d9c53b8b` |
| 21 | `theorem` | [canonicalLexKey_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/canonicallexkey-injective--51dbe50cffb8d971f5395e3b.md) | 164 | `result-track:51dbe50cffb8d971f5395e3b176fde3a55d728b4e79741103b772e17d568ff20` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/instance--09a459f99226ebab325c72b5.md) | 171 | `declaration-track:09a459f99226ebab325c72b56b49f83ff955e0dcccfa03e007dc327616ba4697` |
| 23 | `theorem` | [forward_ne_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9.lean/declarations/forward-ne-reverse--0d0d547ec95e0cb0c6859a61.md) | 175 | `result-track:0d0d547ec95e0cb0c6859a619f0e76381e06ac1875b70165b8408c4d7a9435e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
