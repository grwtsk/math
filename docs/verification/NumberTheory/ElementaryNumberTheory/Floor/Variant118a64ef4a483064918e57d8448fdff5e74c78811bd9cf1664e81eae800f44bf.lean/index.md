# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Floor.Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc45e636c37af014f8d36964ef49eeff4aeac2db",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc45e636c37af014f8d36964ef49eeff4aeac2db`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Round` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [floor_def'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/floor-def--c835175c7638e81b82fd6ab8.md) | 40 | `result-track:c835175c7638e81b82fd6ab8c8e9f1f529812387e7539a6fa6fc6bbc5a3d137b` |
| 2 | `theorem` | [le_floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/le-floor--5737ed774f180ab1056a8da4.md) | 46 | `result-track:5737ed774f180ab1056a8da49408762adefdabc54c90fda6762f27eb5d03c221` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/instance--1d361261b5de703b75a74a63.md) | 56 | `declaration-track:1d361261b5de703b75a74a63808db2618dec3d931efa77e3fb1293200338e51e` |
| 4 | `theorem` | [floor_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/floor-def--bea1a8089ab4a9c8650bd32a.md) | 59 | `result-track:bea1a8089ab4a9c8650bd32a80f9761d27a3281c033bcf700c5faceda4faca84` |
| 5 | `theorem` | [ceil_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/ceil-def--ff57b8b5d19b143e89d2049c.md) | 61 | `result-track:ff57b8b5d19b143e89d2049c419687fe9ef258a4ceb1965006ca607f1169b0fd` |
| 6 | `theorem` | [floor_intCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/floor-intcast-div-natcast--0c1aad8faff8960c88f0690a.md) | 67 | `result-track:0c1aad8faff8960c88f0690af9bac1e55e88faa4fd02fc848dbcb82119b5edae` |
| 7 | `theorem` | [ceil_intCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/ceil-intcast-div-natcast--4d1c67350182f03ddeb44326.md) | 80 | `result-track:4d1c67350182f03ddeb44326d643b6ccac1eba29da3a560b9295cb8cb883c954` |
| 8 | `theorem` | [floor_natCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/floor-natcast-div-natcast--85e366f9717c6a8a8a164b79.md) | 85 | `result-track:85e366f9717c6a8a8a164b7968afe102d9dabfd6e1f01844f07f86946afc59f5` |
| 9 | `theorem` | [ceil_natCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/ceil-natcast-div-natcast--7fde75342737cc79ac1cd448.md) | 89 | `result-track:7fde75342737cc79ac1cd448ba8e201b8c09a13f5ab18fff76ab9fbd202f7dc2` |
| 10 | `theorem` | [natFloor_natCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/natfloor-natcast-div-natcast--fd9e4e213b9449c414d16173.md) | 93 | `result-track:fd9e4e213b9449c414d16173f0339cb0ffcd18556a3c904dd59fb2a95ac0e2be` |
| 11 | `theorem` | [floor_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/floor-cast--6429d15c5a5f24b3ab957268.md) | 99 | `result-track:6429d15c5a5f24b3ab95726839e6354ed2ab93116fc2b1adcf8647982057abac` |
| 12 | `theorem` | [ceil_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/ceil-cast--0f2912a265de4a374c04db48.md) | 103 | `result-track:0f2912a265de4a374c04db48d5f64dc6a70511455107618e68b15f64b8c738e5` |
| 13 | `theorem` | [round_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/round-cast--0ef1fc3ec41024693c97e440.md) | 107 | `result-track:0ef1fc3ec41024693c97e440e16df2bd8e415ce09e5c716e8a74a84f8e9daae7` |
| 14 | `theorem` | [cast_fract](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/cast-fract--3e51b242b83441130f3f28bc.md) | 112 | `result-track:3e51b242b83441130f3f28bc22a248ae723683b07c9b5641cb7a51f06a275005` |
| 15 | `theorem` | [isNat_intFloor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/isnat-intfloor--d3c36d741c3249f296888ef7.md) | 119 | `result-track:d3c36d741c3249f296888ef70f62948b578e5ba9b4fcaba864098943a5a79ea7` |
| 16 | `theorem` | [isInt_intFloor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/isint-intfloor--02341547c9db95ce0000886a.md) | 123 | `result-track:02341547c9db95ce0000886abb34ee709d6088e95e86ea2d7823a05743b924d5` |
| 17 | `theorem` | [isInt_intFloor_ofIsRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/isint-intfloor-ofisrat--c13736926e3941bad6c21537.md) | 127 | `result-track:c13736926e3941bad6c21537a937c098a7d169120595541fc9bb750ba63ee6af` |
| 18 | `def` | [evalIntFloor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/evalintfloor--987b205589d1f8e086f3509a.md) | 137 | `declaration-track:987b205589d1f8e086f3509a7f71a0cdff7dae1ef61305304b86d69613b9964a` |
| 19 | `theorem` | [isNat_intCeil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/isnat-intceil--6a25ecdbabe267f4ee26faa3.md) | 160 | `result-track:6a25ecdbabe267f4ee26faa302fe6940601e5acb3d4b7342a4834a12975e8e26` |
| 20 | `theorem` | [isInt_intCeil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/isint-intceil--c356b6ffeb76275180906a28.md) | 164 | `result-track:c356b6ffeb76275180906a281b58b9f645d073fa9a0af069eea9101f7bf66fc6` |
| 21 | `theorem` | [isInt_intCeil_ofIsRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/isint-intceil-ofisrat--81662246b31df7037976e813.md) | 168 | `result-track:81662246b31df7037976e81399041e537e2b1ace01aaebb80e397d1412498487` |
| 22 | `def` | [evalIntCeil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/evalintceil--da7e98107d9a4c6ccf04fc57.md) | 178 | `declaration-track:da7e98107d9a4c6ccf04fc5779d6ed9019617bcc1d7484111fdc283fd5f66975` |
| 23 | `theorem` | [Int.mod_nat_eq_sub_mul_floor_rat_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/int-mod-nat-eq-sub-mul-floor-rat-div--fd9c3ca471d760afdacacb19.md) | 205 | `result-track:fd9c3ca471d760afdacacb192fed3d32c3ca798102544a65fdc7b4e3a657a8a7` |
| 24 | `theorem` | [Nat.coprime_sub_mul_floor_rat_div_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/nat-coprime-sub-mul-floor-rat-div-of-coprime--5ac210c0208a4bee19fd0ce5.md) | 208 | `result-track:5ac210c0208a4bee19fd0ce57b6126079149cd7a89220eb2b4f64a262769e2fe` |
| 25 | `theorem` | [num_lt_succ_floor_mul_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/num-lt-succ-floor-mul-den--543ed2c6c94c10b298dd467a.md) | 217 | `result-track:543ed2c6c94c10b298dd467a8033432f71768a970312577d20ce0f5320e89c50` |
| 26 | `theorem` | [fract_inv_num_lt_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/declarations/fract-inv-num-lt-num-of-pos--48aa310cb3e509328bf905e6.md) | 238 | `result-track:48aa310cb3e509328bf905e6b9c0a40475a3ba5c0cf1103f794ecca19212e88b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
