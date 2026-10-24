# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8665646926aa906ea2dc54a0cb34b8fb656ece0e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8665646926aa906ea2dc54a0cb34b8fb656ece0e`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.DistribMulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OreLocalization.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_oreDiv'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/zero-orediv--8766d653a1645be7b41a829a.md) | 48 | `result-track:8766d653a1645be7b41a829a3297dfe0a335826987fb7d91e54b2684523755d3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instance--079751082131f40f42afdb0b.md) | 52 | `declaration-track:079751082131f40f42afdb0bed035abce52641052d8256cbfacb2495d9df5628` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instance--c557862a45ef5c2f93cb249c.md) | 66 | `declaration-track:c557862a45ef5c2f93cb249c094b8ab5869a4b2a91fbcd39c4da2171f62271b1` |
| 4 | `def` | [add''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/add--54a1fac76bc9cb9e5a3de951.md) | 77 | `declaration-track:54a1fac76bc9cb9e5a3de951c5f7c3ef3c7dde068e21181dabf2d33f45203aae` |
| 5 | `theorem` | [add''_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/add-char--b7fac11c73daa96257b40f1c.md) | 80 | `result-track:b7fac11c73daa96257b40f1c5e1afd2a537b415d012d1c1df1ab4c859ccb8322` |
| 6 | `def` | [add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/add--fb636c43ec7084a679e986e8.md) | 101 | `declaration-track:fb636c43ec7084a679e986e893854ac2d1ac573ec49748c56a4873bf16281e14` |
| 7 | `def` | [add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/add--42a2c8b630cdeea3a136afa4.md) | 125 | `declaration-track:42a2c8b630cdeea3a136afa459dd91f730d67db4d7e2966d35aac5e01f0a21a3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instance--7b914ca2a7e3642c63a566b6.md) | 144 | `declaration-track:7b914ca2a7e3642c63a566b619a41395ab9b861ced6edaee820f3fbc240531c9` |
| 9 | `theorem` | [oreDiv_add_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/orediv-add-orediv--79aec641aacb6e187032f917.md) | 147 | `result-track:79aec641aacb6e187032f9172be1bcb52571b990eec9dfb4eaf99d22ff660397` |
| 10 | `theorem` | [oreDiv_add_char'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/orediv-add-char--2804ddda991ace0adfc959e5.md) | 152 | `result-track:2804ddda991ace0adfc959e5550630797b1146922c8cb55f402036295dada672` |
| 11 | `theorem` | [oreDiv_add_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/orediv-add-char--419da0e96c958b6edef21d0d.md) | 159 | `result-track:419da0e96c958b6edef21d0dd68a8d4c9adac6950898374176314ad3782d30c1` |
| 12 | `def` | [oreDivAddChar'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/oredivaddchar--beaabd559650ca1032da01cd.md) | 165 | `declaration-track:beaabd559650ca1032da01cd1fc0be35a763b2678ebfc1b45ab0afcb372dcb62` |
| 13 | `theorem` | [add_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/add-orediv--3744aeb10aa8cdcc6e0d14a1.md) | 171 | `result-track:3744aeb10aa8cdcc6e0d14a1f4d83139584e864e2ece5f432018b75073181444` |
| 14 | `theorem` | [add_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/add-assoc--f32a35dd5ad62a87a654e9de.md) | 174 | `result-track:f32a35dd5ad62a87a654e9de9daa1e151143d71b36d9eb52eaa7fe5faa930cbf` |
| 15 | `theorem` | [zero_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/zero-orediv--268e7555ed1fac28514dfe92.md) | 187 | `result-track:268e7555ed1fac28514dfe92b9e347bb013b883cff64a0b0928a06e53141565a` |
| 16 | `theorem` | [zero_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/zero-add--bf0b3d8963c1439b635d3d91.md) | 191 | `result-track:bf0b3d8963c1439b635d3d91f791fd42b08602ec139e546ffb1e742e551a3465` |
| 17 | `theorem` | [add_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/add-zero--b2e26793b4b9640e249ad7d0.md) | 195 | `result-track:b2e26793b4b9640e249ad7d003ad3f68c2447498fb32608e074af9d6d2a3785a` |
| 18 | `def` | [nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/nsmul--cf4259e2d4d2815c25648bc5.md) | 200 | `declaration-track:cf4259e2d4d2815c25648bc545db552a9e1fbea48e2f4aafd0f8f597b8dad125` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instance--1fd8374d22bc67d663dd8315.md) | 202 | `declaration-track:1fd8374d22bc67d663dd8315607361649c209d149d4b6f2e848bf734189bd152` |
| 20 | `theorem` | [smul_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/smul-zero--bdaeb0cefc3749c1ebbb6015.md) | 210 | `result-track:bdaeb0cefc3749c1ebbb601563f615a187546804bd8070f017ab5e0845089b3e` |
| 21 | `theorem` | [smul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/smul-add--d414e3e8eed1b760c3d3c460.md) | 214 | `result-track:d414e3e8eed1b760c3d3c46000995f0907b36848032f83bc74c0fea1f9c5b0bc` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instance--fafed9ae31a54bce2ad43cb6.md) | 226 | `declaration-track:fafed9ae31a54bce2ad43cb61ea49cc6e998236a055034be3bdf4dbfe9e06954` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instance--b7ca4dda4a58268d7b448908.md) | 230 | `declaration-track:b7ca4dda4a58268d7b448908c9037904f24707d89cc222fea1291609539d9990` |
| 24 | `theorem` | [add_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/add-comm--7cd32b6a1f8d4a172a5de23d.md) | 243 | `result-track:7cd32b6a1f8d4a172a5de23d877a38042b02d581b955532f6c840701944d8e75` |
| 25 | `instance` | [instAddCommMonoidOreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instaddcommmonoidorelocalization--f6e3c20b2d48e5e577df630a.md) | 250 | `declaration-track:f6e3c20b2d48e5e577df630a4b23238e6e9dfe6d3a964843b7159537216f16b3` |
| 26 | `def` | [neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/neg--c99c03ec7d6e6f17d50c01bc.md) | 262 | `declaration-track:c99c03ec7d6e6f17d50c01bc1a17dc167b1bfa478aa7c3feec4e9fab38df89db` |
| 27 | `instance` | [instNegOreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instnegorelocalization--88891e80b052e9962a55631d.md) | 268 | `declaration-track:88891e80b052e9962a55631d89e76b1bbfff98e30d238d188b879ff237fabb32` |
| 28 | `theorem` | [neg_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/neg-def--c24ffc23ae5529a770a8d639.md) | 272 | `result-track:c24ffc23ae5529a770a8d6396a18a2c7326895c7004ff34097be1b68533a9102` |
| 29 | `theorem` | [neg_add_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/neg-add-cancel--f9b94600e6662f0396a81c87.md) | 275 | `result-track:f9b94600e6662f0396a81c87fdb223aafb2a9b2600427d83b8263b8874b2b773` |
| 30 | `def` | [zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/zsmul--4b23e37973b80820cc0127f4.md) | 280 | `declaration-track:4b23e37973b80820cc0127f4bf226b426968d8b1ebd490b8678dd8ed2a41d17b` |
| 31 | `instance` | [instAddGroupOreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instaddgrouporelocalization--e9fc6cd5c189a354cb5caf85.md) | 283 | `declaration-track:e9fc6cd5c189a354cb5caf8557a9765ac2d4c9dd9b444b67cadf4a35719aaaa9` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/declarations/instance--b05749f7841406a20184670a.md) | 294 | `declaration-track:b05749f7841406a20184670ae27aeec96c391d8f34683dc428e08200ce3432ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
