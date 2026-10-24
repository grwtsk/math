# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Limits.Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c3b49594843bc6d829bba4a7a13b887b05ede55",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c3b49594843bc6d829bba4a7a13b887b05ede55`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Pullbacks` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [specZIsTerminal](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/speczisterminal--b680b5e484fec8c1e308bbfb.md) | 44 | `declaration-track:b680b5e484fec8c1e308bbfb60546720a13a22d5de4826760aa9e4bfc6159fed` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--9ae86b298b00ce529e86d792.md) | 49 | `declaration-track:9ae86b298b00ce529e86d7923f691ccb6a763f4c9c06efa869e32f3a604b525c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--5943692e1738bebe8fe50948.md) | 52 | `declaration-track:5943692e1738bebe8fe5094862fc24cb358f6daa56301f6df60e8a1ab745a086` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--a9ab478bbd57d1ee23a12893.md) | 55 | `declaration-track:a9ab478bbd57d1ee23a128931c1215cda3d2866cbf43ed2dab9cda75ab10adaf` |
| 5 | `def` | [Scheme.emptyTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/scheme-emptyto--a4180385b14208a7eae2fbbc.md) | 62 | `declaration-track:a4180385b14208a7eae2fbbc051998aac4a4ac3014e152f88eb428ccab48fedb` |
| 6 | `theorem` | [Scheme.empty_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/scheme-empty-ext--0eedd6c31d29444373a5368f.md) | 68 | `result-track:0eedd6c31d29444373a5368fea88bc851fb879677c29c3dbd90363f74f2ba68b` |
| 7 | `theorem` | [Scheme.eq_emptyTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/scheme-eq-emptyto--1998c67f9c9953b1154b6a7e.md) | 75 | `result-track:1998c67f9c9953b1154b6a7e54bbf69318bff699417af5200c52486a46581cec` |
| 8 | `instance` | [Scheme.hom_unique_of_empty_source](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/scheme-hom-unique-of-empty-source--852925ac1d94a8df23960706.md) | 79 | `declaration-track:852925ac1d94a8df23960706b921496048c259fe5512d452da8bdcd5ac75c6b9` |
| 9 | `def` | [emptyIsInitial](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/emptyisinitial--9fac29b0e0e6ae80eb29a1bf.md) | 83 | `declaration-track:9fac29b0e0e6ae80eb29a1bfc47c82c90ff0d9e3b83ea0175a8099d62733615d` |
| 10 | `theorem` | [emptyIsInitial_to](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/emptyisinitial-to--0992f424d4c851fb9953b5c6.md) | 88 | `result-track:0992f424d4c851fb9953b5c64770785e4b9474d17914c53ef845969fdd149134` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--009e8e8fcdfc05eca9a869f4.md) | 92 | `declaration-track:009e8e8fcdfc05eca9a869f4d621b9a89c2050a6225665efc383b2b609edde93` |
| 12 | `instance` | [spec_punit_isEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/spec-punit-isempty--3a857db20757a8074b985739.md) | 95 | `declaration-track:3a857db20757a8074b9857394a66682e5f3910dfd3864d6272d1bdb643186f78` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--46c5238d683b6239fd7cf6d0.md) | 99 | `declaration-track:46c5238d683b6239fd7cf6d032fc2c1368fdba2f08758027cd2758ec2bd652a9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--878f86ec814f4f385cab83f4.md) | 110 | `declaration-track:878f86ec814f4f385cab83f4118c79f3301ba5864e31d023004d96aa7f5c89a6` |
| 15 | `def` | [isInitialOfIsEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/isinitialofisempty--0c63ea281ccee09b313386dd.md) | 120 | `declaration-track:0c63ea281ccee09b313386dd4bd3351d05207cf8d5b5d661ce489b47bc4b8aba` |
| 16 | `def` | [specPunitIsInitial](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/specpunitisinitial--3fafed0b30384ffa73689af3.md) | 125 | `declaration-track:3fafed0b30384ffa73689af39972cb619a09717692aa079678fb9f46ff5ccbf6` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--c77e6b1e8b73082926e31208.md) | 129 | `declaration-track:c77e6b1e8b73082926e312083c245cee5165b95e7a221a98babc41bfa7867c9d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--88f06ecb68dd20af5698ddfb.md) | 134 | `declaration-track:88f06ecb68dd20af5698ddfbb2414d371e7893c167b5b313f98b11ef7be94bd3` |
| 19 | `instance` | [initial_isEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/initial-isempty--a15a81b0ba2cc40ebefb307a.md) | 139 | `declaration-track:a15a81b0ba2cc40ebefb307a1bf51f223e88ae46d8598f06873cc48dc8964954` |
| 20 | `theorem` | [bot_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/bot-isaffineopen--dd8310cfbbec77a59a8ffcbd.md) | 143 | `result-track:dd8310cfbbec77a59a8ffcbdd99185c14b9de9c97bbcedc8743184606d8ac9cd` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant1bebffa1c27f805d27affa4cf2698bf8b04d72b421d2fa89220fc213195d6e55.lean/declarations/instance--f519133b2c7d2764bfc895cc.md) | 152 | `declaration-track:f519133b2c7d2764bfc895ccbdd781286e11ff10a275d858d626fe0dedad15ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
