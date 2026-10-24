# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0525035fc672e911877cf60ba982d47c072a8c77",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0525035fc672e911877cf60ba982d47c072a8c77`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/test-sorry--877a8c1c9f75f7ae15f014c1.md) | 5 | `declaration-track:877a8c1c9f75f7ae15f014c1807ba5ca7574d5fbd2457f255efa6800d5bba6d0` |
| 2 | `axiom` | [Real](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/real--0b4f5b0d6845bf13de102329.md) | 9 | `declaration-track:0b4f5b0d6845bf13de1023291796ba53d51bd9e35fbfc3a5410cda323ce0edf6` |
| 3 | `axiom` | [Real.field](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/real-field--cd615fdc5c51043902bd05ef.md) | 11 | `declaration-track:cd615fdc5c51043902bd05ef10fee99eed0f7fee381c38a3ce63adf0e512e742` |
| 4 | `axiom` | [Real.linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/real-linearorder--d9bf31b640cd9e32a228402f.md) | 12 | `declaration-track:d9bf31b640cd9e32a228402fe4dd121908b096d8065ecb10714c4c3a024b0153` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/real-isstrictorderedring--76e201721f1968d527c517a9.md) | 13 | `declaration-track:76e201721f1968d527c517a9ae55250fbd12cf519f0d6fd101f0e60487377301` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--660cfe04bf16aea2a37ec1af.md) | 15 | `declaration-track:660cfe04bf16aea2a37ec1af9a8dbd1682d76c7502313911c9db590177947df0` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--f18134e17782943be201f968.md) | 16 | `declaration-track:f18134e17782943be201f968a97107025d0a6a211169ff9481befd8991b8a009` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--b7f5f2d3b75a033972eddbd6.md) | 17 | `declaration-track:b7f5f2d3b75a033972eddbd672aef9e669d4cf0ff9e026be502bc1b2058a3081` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--eb9403691bf2132953f2dc82.md) | 18 | `declaration-track:eb9403691bf2132953f2dc82e0ee8dc500d5ee960d6a811e44ff3af8527e9077` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--c5db3d31c268bf42f35baf0a.md) | 19 | `declaration-track:c5db3d31c268bf42f35baf0aa7e26499593c0bc28c81b1ef0788f8529de08890` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--4a5f59b59f4c1a0b947e2196.md) | 20 | `declaration-track:4a5f59b59f4c1a0b947e21962dac304aee24cf99aa1f45cdcfbfc821efb9e9ed` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--05f7db416ecd10ef77af96a0.md) | 22 | `declaration-track:05f7db416ecd10ef77af96a0bf1ef59ef27424f2bca686f9d2b8191e8eecdd0d` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--d2fe20fd32b9f30e0ecd3863.md) | 23 | `declaration-track:d2fe20fd32b9f30e0ecd386311cf0f5f7663becdf2f10a68d595c94aef19b9c9` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--c57fbb2de16bccdda5d7b3fc.md) | 24 | `declaration-track:c57fbb2de16bccdda5d7b3fcfd60c6b96908b2f3fda21830b66d84852196096f` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--99eac33787d1c1ba5f4bfcd4.md) | 25 | `declaration-track:99eac33787d1c1ba5f4bfcd41660595860887615f380ed5a1c5b566a42b1cb42` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--a97459dbe3cd551bca56ed27.md) | 26 | `declaration-track:a97459dbe3cd551bca56ed27be41220d37e784da8328c391c002eea518acdf07` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--769cd202deb9981f8d3dc480.md) | 27 | `declaration-track:769cd202deb9981f8d3dc48088e3bf6f6b7a980754367268cf55aba699753db8` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--037b984281f8d6f0e71e9d93.md) | 28 | `declaration-track:037b984281f8d6f0e71e9d93777c1bfc5b69d8f237fc49f94635da50ffc24083` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--a000b90a7ac3fb987bdfe921.md) | 30 | `declaration-track:a000b90a7ac3fb987bdfe921bd62ab922334ec22ac125ec2d45c792420275e03` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--85d2c1e084c4f30438d29645.md) | 32 | `declaration-track:85d2c1e084c4f30438d296457e73a7637b09b6e37c7ed77cb974b3da405a2290` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--846f6e9582737e54c5677795.md) | 33 | `declaration-track:846f6e9582737e54c5677795220fa09f7f54ae6ba3e29c2fcb19fd563b263d6c` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--f1d8218b5d3d630589f85220.md) | 34 | `declaration-track:f1d8218b5d3d630589f85220b2e9b6d2684bbd40f27181ff227a6e6505137aa9` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--b474b5eaad0db15d3d254286.md) | 36 | `declaration-track:b474b5eaad0db15d3d254286f528058cf224e7366ca2de159f024fdda33f49ec` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--6da31d66982e883807ff2bf0.md) | 38 | `declaration-track:6da31d66982e883807ff2bf03ca2717225f491b20703674a9d912d9ddc698877` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--06740f86acce10a9ea2e6d9b.md) | 40 | `declaration-track:06740f86acce10a9ea2e6d9bfa14d29b734e1eb137a25a2d297ff1ce8768c5fb` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--cc5ce3c92ec9ff61a6899807.md) | 44 | `declaration-track:cc5ce3c92ec9ff61a6899807bcf3e3111c8f7650e9c5ea81ec7557f6630cc2c3` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--23a965c46a447f766c6be32f.md) | 46 | `declaration-track:23a965c46a447f766c6be32f07006091263ef8fe8104be68cae12ece0c40ce31` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--6db4a890dfe0786fd5e00479.md) | 52 | `declaration-track:6db4a890dfe0786fd5e004795b8af79f552ab359e883a223d4595d7b930a626d` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--ef796f480e9b6dc6499b222e.md) | 53 | `declaration-track:ef796f480e9b6dc6499b222ec1caa47617879ee361e5f50ce4f73be5a6e16923` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--6e15ae7b9cffd7c4a54a1cd1.md) | 54 | `declaration-track:6e15ae7b9cffd7c4a54a1cd151d0bfeceadc494ccd4b8094260cf4b788f2fec9` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--58c9107dd3cad0746c9a09f4.md) | 55 | `declaration-track:58c9107dd3cad0746c9a09f4d5d3d785af249ba6ec90b2987ff5761034b77400` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--9ff13f9a02c57fe3bc295b9f.md) | 56 | `declaration-track:9ff13f9a02c57fe3bc295b9fa4dda1bb877d30489a3eec2e443061b3620efe47` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--7d892ea042ecceb184ab72fd.md) | 57 | `declaration-track:7d892ea042ecceb184ab72fd45da6773dcaa0ce072123310cdcb93fb5541931e` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--13edc0aacfd62a8d78b972d8.md) | 59 | `declaration-track:13edc0aacfd62a8d78b972d83bd09e9e74fc7203171b3b2c2d47c78f343baf6c` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--65d7956933d4d4da60bafe21.md) | 60 | `declaration-track:65d7956933d4d4da60bafe217cb6e1d4e303e02b7c4d5f8bea12003cb648afeb` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--0e385ec2ed989c7c7c8db284.md) | 61 | `declaration-track:0e385ec2ed989c7c7c8db284e6bdfd884c8f75a1ae4b5b1a942d87fceee8d109` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--fb2915dc97f35d0d2ae2cd76.md) | 65 | `declaration-track:fb2915dc97f35d0d2ae2cd76db5b0ec624aad66ebfea21020c0ad09247c759d4` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--d3227556f45dcd94b286a600.md) | 66 | `declaration-track:d3227556f45dcd94b286a600567eaebf055529ef659dc9612ae79d92c84febf2` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--9015762f613840e23c1aac51.md) | 70 | `declaration-track:9015762f613840e23c1aac5165fcc30508b6b55d212ad83a849b639f4b2dec43` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--74b40d13431f214c87d392b4.md) | 72 | `declaration-track:74b40d13431f214c87d392b447dd793ae7c8b2485fbb5f0e21691e56e200fa30` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--79810fb35b96cc45a80f0800.md) | 77 | `declaration-track:79810fb35b96cc45a80f08000555f13b0cdd60599d8ebe3cde2da9b2b9e9651c` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--d6957c155944185fb39a7e61.md) | 82 | `declaration-track:d6957c155944185fb39a7e61b7489db615e7d29559ca71bfea631343bd6ba158` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--81a0812bdbecfbd41e838e9b.md) | 84 | `declaration-track:81a0812bdbecfbd41e838e9b4b4378bcfc034eadb7d2a6705d566062b61ea031` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--2384c2f14add331c9386775c.md) | 91 | `declaration-track:2384c2f14add331c9386775c4a89caf52b1cef3bd22e9565832d6f2d332ccbe9` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--a7393218fa24cbf7f9142244.md) | 96 | `declaration-track:a7393218fa24cbf7f9142244b8d3eb51dcac64c820a0cb2589556ab22abd3efc` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--8d4a8d08cd1706d321ca1d22.md) | 98 | `declaration-track:8d4a8d08cd1706d321ca1d22f05b28e6f14ca6a6edad1862c1e504860abd2d8e` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--d6e4c4670b07f02124c91d57.md) | 101 | `declaration-track:d6e4c4670b07f02124c91d577d7cdaba696d45017ad7a18256d396a1d648d07e` |
| 48 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--0a35b23b0b8488781024e07a.md) | 102 | `declaration-track:0a35b23b0b8488781024e07a2535a37a2856c36527312b0097a7616c8e145750` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--3078143e70e515a884fa6ded.md) | 103 | `declaration-track:3078143e70e515a884fa6ded6201ad26443e25dda356f5966711acd243f9eb67` |
| 50 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--85ba09a733580daa688fffd9.md) | 106 | `declaration-track:85ba09a733580daa688fffd92d8871bb3e4d837052dfd483551c912e02c27948` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--09d82292092b01b3d92f4860.md) | 115 | `declaration-track:09d82292092b01b3d92f486088ae30e96651ce62217d2c1a7e9aa4aff7e84d87` |
| 52 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--74193fa6c7172b0746cc4ec4.md) | 120 | `declaration-track:74193fa6c7172b0746cc4ec4a8997d6c8105d45ede33552ee4567db58321e5d8` |
| 53 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--70db0c4bd601a485125979bb.md) | 129 | `declaration-track:70db0c4bd601a485125979bb6e6b93966a2ff819c7e263910e4c3f032045f0e4` |
| 54 | `def` | [f](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/f--56a876467b5d5e320d1180b8.md) | 135 | `declaration-track:56a876467b5d5e320d1180b849991c7bba58ea0f34e6ce339c7f05e33c859e55` |
| 55 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--ffb612d5b6a9d32b13a20347.md) | 137 | `declaration-track:ffb612d5b6a9d32b13a203475c3e548285e3c70ca428b34ef3af68017f8cf438` |
| 56 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--7f4d9b75c330831723821ff1.md) | 143 | `declaration-track:7f4d9b75c330831723821ff1f702584d902698ae0661b798cfddbfaf79e346f3` |
| 57 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--7152aba6aa74c9a5320d9338.md) | 148 | `declaration-track:7152aba6aa74c9a5320d933841ecb41f5ff5143505b6d4eb4cb619f5496519a7` |
| 58 | `def` | [R](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/r--0deebb77c0d49c64da3ec791.md) | 151 | `declaration-track:0deebb77c0d49c64da3ec79198f2eda2c91cb287459f63bc1c18773d8c5eba91` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/instance--7b7f782578fc7c5eb28eee17.md) | 152 | `declaration-track:7b7f782578fc7c5eb28eee17873652dec3e40c2236927ce4add08528011bee49` |
| 60 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--01da554a92b4e9f3434e60a7.md) | 154 | `declaration-track:01da554a92b4e9f3434e60a79468ca66798981099b781760e5db2b3fe3cfd5b5` |
| 61 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--6703d989ec6e9291f10e8cbe.md) | 156 | `declaration-track:6703d989ec6e9291f10e8cbe68cf3146808225d459ec2ba513fbae1694b88fa8` |
| 62 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--e3920a0054ff2942d1b73c56.md) | 160 | `declaration-track:e3920a0054ff2942d1b73c56f4eb5b382d759ceca99f98bcbd609f1eaf608c3e` |
| 63 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--14c55fa4ea669d54eaffac50.md) | 162 | `declaration-track:14c55fa4ea669d54eaffac50e9abe8154d08929d3807b4afb4227085710f1e48` |
| 64 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--ca3556455f198ba3d14a44b8.md) | 166 | `declaration-track:ca3556455f198ba3d14a44b87c47e07f97c6d24b6a2a3a83bce10fd21ca873ca` |
| 65 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--6a639f4ca0609b00fc2bb159.md) | 179 | `declaration-track:6a639f4ca0609b00fc2bb159e2c4b236f02edd783ae1a1ef1d900f380743b372` |
| 66 | `abbrev` | [myId](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/myid--28fcd5b6f900eefaab6b9cb9.md) | 185 | `declaration-track:28fcd5b6f900eefaab6b9cb9a1a3940c79839fd4f6c920f7a5ae2061bd98e77d` |
| 67 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--fc9b314ad6cd965e608176d6.md) | 201 | `declaration-track:fc9b314ad6cd965e608176d602a13337cc2407e09c9c25d67b0b4439aad4b29b` |
| 68 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--48692076bfc929c060200ee1.md) | 211 | `declaration-track:48692076bfc929c060200ee19131465184e4bf6bac3717252a660fdce14b366a` |
| 69 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean/declarations/example--5fa54ce8ecb0c8ad705dedbc.md) | 232 | `declaration-track:5fa54ce8ecb0c8ad705dedbcca9af340e241f27c003c34f56099f82e7f3dbb4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
