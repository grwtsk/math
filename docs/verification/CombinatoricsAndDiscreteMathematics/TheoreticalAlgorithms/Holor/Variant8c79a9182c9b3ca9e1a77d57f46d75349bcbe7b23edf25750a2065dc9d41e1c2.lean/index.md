# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Holor.Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3f28556d75481af55d82b50692184b6f44a68f2",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3f28556d75481af55d82b50692184b6f44a68f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HolorIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/holorindex--58045e59e0d8123f691913a5.md) | 49 | `declaration-track:58045e59e0d8123f691913a507268350f4d45337798c7a4e0f92d8c851834ed0` |
| 2 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/take--811b54da624018864b884b29.md) | 57 | `declaration-track:811b54da624018864b884b29497befb55d7c808a6f93745d8630c937e6f83ebf` |
| 3 | `def` | [drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/drop--28456ebd82415b9096682c73.md) | 61 | `declaration-track:28456ebd82415b9096682c73481ed58ec016377cc32cbc787df406ae4139c2f3` |
| 4 | `theorem` | [cast_type](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cast-type--65b8b9365efaaee3e77266f0.md) | 64 | `result-track:65b8b9365efaaee3e77266f0f3e65a1406d96e40f65a60db3d39968561431aa2` |
| 5 | `def` | [assocRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/assocright--747816e4d424eb0dde6fc64c.md) | 68 | `declaration-track:747816e4d424eb0dde6fc64c2dadac585b314ea70012dd7660bcc42f1c919c49` |
| 6 | `def` | [assocLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/assocleft--dd34b95225929c3d8e337c0c.md) | 72 | `declaration-track:dd34b95225929c3d8e337c0c8e8e6b6314360cfbc9297dd3a5b3bfd7afed2979` |
| 7 | `theorem` | [take_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/take-take--0f061ead32e177d851e300d0.md) | 75 | `result-track:0f061ead32e177d851e300d02322f7363f2f35556a579b7bbed97f3dd70b788d` |
| 8 | `theorem` | [drop_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/drop-take--83e56244b21cd935b5e8bdb9.md) | 80 | `result-track:83e56244b21cd935b5e8bdb99e1a387be911713d745e8d8bbfccc9c8260df970` |
| 9 | `theorem` | [drop_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/drop-drop--a485b041a04a474a2250986e.md) | 83 | `result-track:a485b041a04a474a2250986ec7bb546d695e6afcb895605d83677b49e27a0f36` |
| 10 | `def` | [Holor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/holor--b6f5d1a75d77d4553fd64c62.md) | 89 | `declaration-track:b6f5d1a75d77d4553fd64c62057d4a93e65b5d87e5905d063b7e2d46314dbd35` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--6d648964fb1bf91b55382fd8.md) | 96 | `declaration-track:6d648964fb1bf91b55382fd842a53598358af8c3fd9ea853914c9373cf07d1ca` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--288494119438039891e3057d.md) | 99 | `declaration-track:288494119438039891e3057d0b4acd73f46a3029de6a4d92c3114538bf767383` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--27e81b6029ec26b874f13581.md) | 102 | `declaration-track:27e81b6029ec26b874f135814a7916fdec9b58e57edbbb0b595c96cc2a515799` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--988e7e4f41e9ea4c27480abc.md) | 105 | `declaration-track:988e7e4f41e9ea4c27480abc8a4bb5f2b799d98cc7fd1b911ca46101cf2e5a9a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--e64ae33d80d31ab9c6dd7e8a.md) | 108 | `declaration-track:e64ae33d80d31ab9c6dd7e8a2ca7243298b840913879ab0651d2a571fd382856` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--04883e38ec33e443e82da0b1.md) | 110 | `declaration-track:04883e38ec33e443e82da0b1d818b465228275b696a77b593309d7b7da012b2b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--61334d567782a4b1c68866fd.md) | 112 | `declaration-track:61334d567782a4b1c68866fd3f8a38b9c485e37d390b2a643362083225f1cd87` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--1aa42ea9cc3ce2fbfca18047.md) | 114 | `declaration-track:1aa42ea9cc3ce2fbfca1804791d3d9e6cfe3e97fe9ddf66516aa8cf3e9c608b9` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--236adeeef85bbd87044ef82a.md) | 116 | `declaration-track:236adeeef85bbd87044ef82afbd0b52ed765cf340703b6b3854ac1db0c2c3d19` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--dc632f4c49484d0c482ba712.md) | 118 | `declaration-track:dc632f4c49484d0c482ba712966908e6d87f9ee22bc7339c0cc7a52044a6c1d0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--5603a25b28efc7c18a12f1e5.md) | 121 | `declaration-track:5603a25b28efc7c18a12f1e5afc96f6b99c3af2b0ebef1c34e6adc8722cb23b4` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/instance--6eb431ab22f373affdeb3a6e.md) | 124 | `declaration-track:6eb431ab22f373affdeb3a6ee56168ea318295978ea384d5836d6a1960486a32` |
| 23 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/mul--544fa7b1914a5d2925962b2f.md) | 127 | `declaration-track:544fa7b1914a5d2925962b2fe55e8e637c151db6a9932a0e0d69ddf674d5ba0a` |
| 24 | `theorem` | [cast_type](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cast-type--4f71bf47999d33a4e08ee0e2.md) | 132 | `result-track:4f71bf47999d33a4e08ee0e24b8aa8e5077f5c5c0e3d6ebbb2c486e33656f54b` |
| 25 | `def` | [assocRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/assocright--613d91ddba3f5fed10db88f0.md) | 137 | `declaration-track:613d91ddba3f5fed10db88f0bf3a1b209f18676b4e579cec2cb345019b01e545` |
| 26 | `def` | [assocLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/assocleft--414a2e34b439931d84f340fa.md) | 141 | `declaration-track:414a2e34b439931d84f340fa1d8fa0e6f0bc6331636f6d58952c8287786f9557` |
| 27 | `theorem` | [mul_assoc0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/mul-assoc0--2dcd18a8760c14b5f58fb604.md) | 144 | `result-track:2dcd18a8760c14b5f58fb604d357ab7fa3dde7b18f438881f54033998121f775` |
| 28 | `theorem` | [mul_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/mul-assoc--ab10bdc76c59879453bbd798.md) | 154 | `result-track:ab10bdc76c59879453bbd7982157f77df5872b4783fe424ed13ec70a448abdef` |
| 29 | `theorem` | [mul_left_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/mul-left-distrib--1c8a5e0e513a7baa3b80e04d.md) | 157 | `result-track:1c8a5e0e513a7baa3b80e04ddee46a779de242073cd7d791793dc31024310a4d` |
| 30 | `theorem` | [mul_right_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/mul-right-distrib--7b17d0338193d790705ca281.md) | 160 | `result-track:7b17d0338193d790705ca281fff428ce831c7e79dff4436a8a3e143ad9939c01` |
| 31 | `theorem` | [zero_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/zero-mul--16e1be90e6335dbf95d1ea33.md) | 164 | `result-track:16e1be90e6335dbf95d1ea334a30ea34615c6202b1d369848b85b5a9e40ec8c5` |
| 32 | `theorem` | [mul_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/mul-zero--e3b11566146dfa1b92f97d92.md) | 168 | `result-track:e3b11566146dfa1b92f97d9246e9fdabd364205af9c54fdd614743e9f442e8f3` |
| 33 | `theorem` | [mul_scalar_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/mul-scalar-mul--6eccf9dd527f0afc9c2be580.md) | 171 | `result-track:6eccf9dd527f0afc9c2be5803513a158a24b155c15567e0169a24ec4f66fee63` |
| 34 | `def` | [slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/slice--4d29bd87e1cf1438964a9422.md) | 178 | `declaration-track:4d29bd87e1cf1438964a942296ae4d65f850437d59c65171e06fc52d1956a3fa` |
| 35 | `def` | [unitVec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/unitvec--5efd67046749e61a286579dd.md) | 182 | `declaration-track:5efd67046749e61a286579dd626f922fafcdf960acf2b20aa8facede679bb8cc` |
| 36 | `theorem` | [holor_index_cons_decomp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/holor-index-cons-decomp--6cf3270b8a1784ad9561f8e0.md) | 185 | `result-track:6cf3270b8a1784ad9561f8e06907b871ea1017245f7deddc1e39babbf8493f9c` |
| 37 | `theorem` | [slice_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/slice-eq--483d53e02ea4109ee306355a.md) | 192 | `result-track:483d53e02ea4109ee306355aa6518434c8b0e0437333536629c0f11806b5e885` |
| 38 | `theorem` | [slice_unitVec_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/slice-unitvec-mul--3804ec239855b042bed83fd9.md) | 203 | `result-track:3804ec239855b042bed83fd9954853fe53fdcdf48beb5b1044e51983d3914fb3` |
| 39 | `theorem` | [slice_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/slice-add--05d3f84c0f4bf2e6b422f15e.md) | 209 | `result-track:05d3f84c0f4bf2e6b422f15e2f4136e478b128fbf20c13405844db681bc8e930` |
| 40 | `theorem` | [slice_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/slice-zero--ca389c29b7c094c93e713f9a.md) | 213 | `result-track:ca389c29b7c094c93e713f9a9030217b4b1868c232fc4342f2a5d3e4685d048d` |
| 41 | `theorem` | [slice_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/slice-sum--c39ec2ae31348e0881a023e5.md) | 216 | `result-track:c39ec2ae31348e0881a023e58d8b06fc79a56a017d586d08a87151f99947bc32` |
| 42 | `theorem` | [sum_unitVec_mul_slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/sum-unitvec-mul-slice--f51475ad27654e9a8ea74dac.md) | 227 | `result-track:f51475ad27654e9a8ea74dac486b67105808e47f2df94e250eb9f8c8431382c5` |
| 43 | `inductive` | [CPRankMax1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprankmax1--c6006e37b3e0bccd397c5a53.md) | 247 | `declaration-track:c6006e37b3e0bccd397c5a5383b4f40d2574054aa58907d4daf5f2aefe1135b1` |
| 44 | `inductive` | [CPRankMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprankmax--ce721798dbf3e7130cd9c2d6.md) | 253 | `declaration-track:ce721798dbf3e7130cd9c2d690993ddc12c6a50e5227424840308c4b0ba1d4a4` |
| 45 | `theorem` | [cprankMax_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprankmax-nil--10d8362639b4516c3c8c32b7.md) | 258 | `result-track:10d8362639b4516c3c8c32b795756850f7e12b4397151b85b2eea295024e1240` |
| 46 | `theorem` | [cprankMax_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprankmax-1--0e6917f5f3902bca3286c887.md) | 262 | `result-track:0e6917f5f3902bca3286c88799eb8cc628c5cc8c17b2aabd6eef7db2fb3ce7ab` |
| 47 | `theorem` | [cprankMax_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprankmax-add--227560f1067768a38da9006f.md) | 267 | `result-track:227560f1067768a38da9006f30ba51cd58b84cf89b2b5ef597eed50671446170` |
| 48 | `theorem` | [cprankMax_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprankmax-mul--06b375adabff603d078b3da3.md) | 280 | `result-track:06b375adabff603d078b3da3bdcbce1e68f7cf52de86ae762478c27a1e24743a` |
| 49 | `theorem` | [cprankMax_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprankmax-sum--7c4c11bb18623ea604bc790c.md) | 290 | `result-track:7c4c11bb18623ea604bc790c424b2fc050b4a02880aa5dd45c85de30f473b8af` |
| 50 | `theorem` | [cprankMax_upper_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprankmax-upper-bound--f9f34b7a6afd59fcf490ce49.md) | 305 | `result-track:f9f34b7a6afd59fcf490ce49099d3d5e69adc5828d6f23a4fddba92348de0bc8` |
| 51 | `def` | [cprank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprank--3cf6b62d058c7e7e2a48233a.md) | 329 | `declaration-track:3cf6b62d058c7e7e2a48233ac7ca9f3773a2f0f8133924faa2e93bf061ed97ad` |
| 52 | `theorem` | [cprank_upper_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant8c79a9182c9b3ca9e1a77d57f46d75349bcbe7b23edf25750a2065dc9d41e1c2.lean/declarations/cprank-upper-bound--09015a0e429dae742e45e935.md) | 332 | `result-track:09015a0e429dae742e45e935f612ddc7f0602e31cba70541b4466463c1cc3f30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
