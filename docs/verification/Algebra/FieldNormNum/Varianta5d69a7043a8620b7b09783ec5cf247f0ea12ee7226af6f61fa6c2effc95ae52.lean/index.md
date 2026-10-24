# Verification target: GRWTSK.Algebra.FieldNormNum.Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9af8050ec25a626c255ecf71918dc1aece9d1d6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9af8050ec25a626c255ecf71918dc1aece9d1d6`.

Source path: `GRWTSK/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.FieldNormNum` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.SynthInstance` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.LitValues` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Util.SafeExponentiation` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/context--20da675a71a5434bcc814e34.md) | 25 | `declaration-track:20da675a71a5434bcc814e3424986873b5907adcb520e8f1a28d1ae40a2dc98d` |
| 2 | `abbrev` | [M](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/m--a921578c9a4fec2262832111.md) | 33 | `declaration-track:a921578c9a4fec2262832111f9db62009578a26192e2f80ae2d533d3e3153482` |
| 3 | `def` | [run?](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/run--a9930cd67667e8240a3678d5.md) | 35 | `declaration-track:a9930cd67667e8240a3678d52f2fe85d408c20279c7814395b212622b61257c6` |
| 4 | `def` | [isAddInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isaddinst--a34b9a1cdfd0e1f6b9e43181.md) | 46 | `declaration-track:a34b9a1cdfd0e1f6b9e43181c84415af2faf386cf756313d07a0b5f75bd9d94d` |
| 5 | `def` | [isMulInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/ismulinst--b83ab5fd6cec188360485b65.md) | 51 | `declaration-track:b83ab5fd6cec188360485b65e9bc4e0ce207ee028167656fc461d1b713f31474` |
| 6 | `def` | [isSubInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/issubinst--2ec136df25dc53ec2f380a9d.md) | 56 | `declaration-track:2ec136df25dc53ec2f380a9d3de2f09db46dfdc68e9848d152a1bd1cd5351bd2` |
| 7 | `def` | [isDivInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isdivinst--735ce9ab4b248e7db1604c9a.md) | 61 | `declaration-track:735ce9ab4b248e7db1604c9a8827c70998c40cfea76511350a17b0f4a34c6779` |
| 8 | `def` | [isNegInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isneginst--f21c6564782b5dbb7e60d68f.md) | 66 | `declaration-track:f21c6564782b5dbb7e60d68f62d2b9cc0462d234c746122b109f0ae01d4ed7db` |
| 9 | `def` | [isInvInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isinvinst--bb97a2148fa710398ae77620.md) | 71 | `declaration-track:bb97a2148fa710398ae776200dcfd0a0cda8760ce33d1e943e3a39c8305a3f55` |
| 10 | `def` | [isNPowInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isnpowinst--eb303b10ab24fafd7a1230bb.md) | 76 | `declaration-track:eb303b10ab24fafd7a1230bb447405461675f827d6fcc11056235478c5e9c62f` |
| 11 | `def` | [isZPowInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/iszpowinst--b728fef928dd42d29002db57.md) | 81 | `declaration-track:b728fef928dd42d29002db573f4a61836638eaa1da7919a71a29266fd640a919` |
| 12 | `def` | [isOfNatInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isofnatinst--d5b42a9bb1915843f3aae96c.md) | 86 | `declaration-track:d5b42a9bb1915843f3aae96c0deaf2c20ee915141752ef704816fdf9c7ebb245` |
| 13 | `def` | [mkNatCastInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/mknatcastinst--cb2f56595366a5ba4105613e.md) | 91 | `declaration-track:cb2f56595366a5ba4105613e1c71e89b2f9de0bc6620131f7d80022fe5fb8407` |
| 14 | `def` | [isNatCastInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isnatcastinst--fc9e3f81fda43a46059da4d9.md) | 95 | `declaration-track:fc9e3f81fda43a46059da4d929bcf831bec5f17c2530b7df34bcea6f55dc4016` |
| 15 | `def` | [mkNatCast](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/mknatcast--d3a5b00902a8d7cd572af3dc.md) | 98 | `declaration-track:d3a5b00902a8d7cd572af3dc45fc0cc0e7c07d984b71a3f54a559c54d24e629a` |
| 16 | `def` | [mkIntCastInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/mkintcastinst--0d97029820ca63ec9e2d0fb9.md) | 110 | `declaration-track:0d97029820ca63ec9e2d0fb93b97836fc9f88b3f8648e5dfdba6012e8191ee78` |
| 17 | `def` | [isIntCastInst](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isintcastinst--5300241153dc485f8bd748a3.md) | 114 | `declaration-track:5300241153dc485f8bd748a3c7795ae991da2a0828b69d8041f8a9afe13efc1a` |
| 18 | `def` | [mkIntCast](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/mkintcast--07be3a89cf04e06084494757.md) | 117 | `declaration-track:07be3a89cf04e06084494757a4aa383060c640ca8eec7add2602c9d0a92b059f` |
| 19 | `def` | [mkBin](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/mkbin--1f56c64b388ca7a7a621e9ce.md) | 129 | `declaration-track:1f56c64b388ca7a7a621e9ce4ef7df8f841eb2ccfdeb4b87727b36509e12572e` |
| 20 | `def` | [mkUnary](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/mkunary--f3fe89c4e2a16921da2e337f.md) | 138 | `declaration-track:f3fe89c4e2a16921da2e337ff674ae3ef439fc5638f7f00d77269ceeed697165` |
| 21 | `def` | [eval](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/eval--92704c2767d46d09d6087a21.md) | 145 | `declaration-track:92704c2767d46d09d6087a21d73707ede51b3f31000f40be4946c6149e40dccb` |
| 22 | `def` | [isApplicable](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/isapplicable--dd3af19d904fd03a9340b5f5.md) | 208 | `declaration-track:dd3af19d904fd03a9340b5f5df248f1e782d445497b2127e34296868c9a89535` |
| 23 | `def` | [evalFieldExpr?](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/evalfieldexpr--497677ae6769176556e765da.md) | 230 | `declaration-track:497677ae6769176556e765dad26d3e8012254f21c52ddc835b11e9f1ec6b2ee1` |
| 24 | `def` | [normFieldExpr?](../../../../mathematics/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/declarations/normfieldexpr--76f049b46dfef08ccdbb54f6.md) | 234 | `declaration-track:76f049b46dfef08ccdbb54f6244017fd029837a1c9408a94fce264a2aea473f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
