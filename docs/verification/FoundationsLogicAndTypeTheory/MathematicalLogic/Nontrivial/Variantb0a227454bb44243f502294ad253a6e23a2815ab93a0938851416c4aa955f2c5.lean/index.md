# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0824e865cd46e3b10f7793478da1283c4531828e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0824e865cd46e3b10f7793478da1283c4531828e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Attr.Register` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial--ac9f7a79f3d11055edc1baeb.md) | 39 | `declaration-track:ac9f7a79f3d11055edc1baeb7004f6909c443134b266d0dff3adaa35a94daf30` |
| 2 | `theorem` | [nontrivial_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial-iff--0979e5c248243737e822e86c.md) | 44 | `result-track:0979e5c248243737e822e86c9dffca5ae85bd54227e4c81058945eda6926f1c2` |
| 3 | `theorem` | [exists_pair_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/exists-pair-ne--717f4c6e9cf280db24e692d2.md) | 48 | `result-track:717f4c6e9cf280db24e692d2a6175cca2fe9c6fed809d734d40bfd56f2d02efb` |
| 4 | `theorem` | [Decidable.exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/decidable-exists-ne--6515c764fab1dd8e0213ac2e.md) | 53 | `result-track:6515c764fab1dd8e0213ac2eba78284e08135c2ded0c22734f742551f3c4686d` |
| 5 | `theorem` | [exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/exists-ne--44583867b7a9b5d0ade3f260.md) | 62 | `result-track:44583867b7a9b5d0ade3f2605a828384b2c56ffd4848da14546c52098c213e07` |
| 6 | `theorem` | [nontrivial_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial-of-ne--b97b310cea1a53ebe2f7501e.md) | 67 | `result-track:b97b310cea1a53ebe2f7501e26172827731f535da409982034a23ffd8e252496` |
| 7 | `theorem` | [nontrivial_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial-of-lt--c3734f2f54ed604f64b7aed9.md) | 72 | `result-track:c3734f2f54ed604f64b7aed990eb9dc56acb0ad9208361ffb629c7d8a6a986e0` |
| 8 | `theorem` | [exists_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/exists-pair-lt--4790d2313a1b26343606321c.md) | 76 | `result-track:4790d2313a1b26343606321cdafe5579ab6b8554749e480ce076b94a3165a71f` |
| 9 | `theorem` | [nontrivial_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial-iff-lt--017438e3d9574ce07c51b578.md) | 81 | `result-track:017438e3d9574ce07c51b578507bea42ed1bb9713f576243b4a7a3838cbf062e` |
| 10 | `theorem` | [nontrivial_iff_exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial-iff-exists-ne--fc388feb8a1c3581af383c8f.md) | 85 | `result-track:fc388feb8a1c3581af383c8fa108ae2841e982a2f82a0887035b2255ab45cd5d` |
| 11 | `theorem` | [Subtype.nontrivial_iff_exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/subtype-nontrivial-iff-exists-ne--ce140075257e87efb4b936e3.md) | 89 | `result-track:ce140075257e87efb4b936e372ddcb10f180e7d965707ec33978078ff3392304` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/instance--f076c14e376be36d11816059.md) | 94 | `declaration-track:f076c14e376be36d118160596aab18988492ebbf52e2fec1a987659abaaee3db` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/instance--6e915f86e6488dc1175ee20a.md) | 102 | `declaration-track:6e915f86e6488dc1175ee20abbb7a83e4b0f04106830314be162673ff3625408` |
| 14 | `def` | [nontrivialPSumUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivialpsumunique--fc00ebd2ecf1f3f69bb1954b.md) | 107 | `declaration-track:fc00ebd2ecf1f3f69bb1954b7a34cef596891a49e0509c344faa384b56e38c3a` |
| 15 | `theorem` | [subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/subsingleton-iff--3524c763af90056d79dd4583.md) | 118 | `result-track:3524c763af90056d79dd45837e8c983c32e181ab52b462c3217684bafaa41b9c` |
| 16 | `theorem` | [not_nontrivial_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/not-nontrivial-iff-subsingleton--a3a62640036a8bfa8214de97.md) | 124 | `result-track:a3a62640036a8bfa8214de97983494183ba44bdb3ea734a2b94132636da6b2f2` |
| 17 | `theorem` | [not_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/not-nontrivial--f11596d604bf1303ba8fd9e5.md) | 128 | `result-track:f11596d604bf1303ba8fd9e5bc0ebabf64ec7bcf24adfd3c4654b978c741e4df` |
| 18 | `theorem` | [not_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/not-subsingleton--76d4e5c0b9f65921daed0676.md) | 132 | `result-track:76d4e5c0b9f65921daed0676d0678494132888217653b9ac7ceadfccd2d2cb76` |
| 19 | `theorem` | [subsingleton_or_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/subsingleton-or-nontrivial--c3b8369115a2d49bf84ba4bd.md) | 137 | `result-track:c3b8369115a2d49bf84ba4bda2b2c404babb0033bd75c0f935105eabe88a513b` |
| 20 | `theorem` | [false_of_nontrivial_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/false-of-nontrivial-of-subsingleton--d6241a1b9ce9774cf002a4e7.md) | 142 | `result-track:d6241a1b9ce9774cf002a4e722f29e6da18edffef4c9a2bbdf5523e6ff21372f` |
| 21 | `instance` | [Option.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/option-nontrivial--02132092f0e3dd50ee3f6309.md) | 146 | `declaration-track:02132092f0e3dd50ee3f630920ab2924d336243d38f5246b9e94351fa4344918` |
| 22 | `theorem` | [Function.Injective.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/function-injective-nontrivial--d5a5478c723b48713ed7a8f9.md) | 151 | `result-track:d5a5478c723b48713ed7a8f956ba91800803e08bde36233b31c3cf043db3713c` |
| 23 | `theorem` | [Function.Surjective.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/function-surjective-nontrivial--05568f8fc61ab95607f3505b.md) | 158 | `result-track:05568f8fc61ab95607f3505baa9e1e36868c6c02243e8dea2bb521eeeeca14a9` |
| 24 | `theorem` | [Function.Injective.exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/function-injective-exists-ne--1e80d1ec8fb5c3fc196fede2.md) | 171 | `result-track:1e80d1ec8fb5c3fc196fede2b9ba4746cdae3b1e11ba278f67590153edc1ad56` |
| 25 | `instance` | [nontrivial_prod_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial-prod-right--b2c213f72d57583e06827945.md) | 180 | `declaration-track:b2c213f72d57583e06827945e2150ba6c6935e36407a0811d464e916a87949d2` |
| 26 | `instance` | [nontrivial_prod_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial-prod-left--e25f87b5b0df32bf106008cd.md) | 183 | `declaration-track:e25f87b5b0df32bf106008cd3400428505382217550c4d66d255bd63aadcd21d` |
| 27 | `theorem` | [nontrivial_at](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial-at--e66420ce67d8f545e807d296.md) | 191 | `result-track:e66420ce67d8f545e807d296ea24e1d0cc02d4e67ca132fa2ac02dbb0a5ecf6c` |
| 28 | `instance` | [nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/nontrivial--613cba0230b1510cf644cdb3.md) | 201 | `declaration-track:613cba0230b1510cf644cdb3c08e2c62dc0805b1d5406962df12910c59a8fe2e` |
| 29 | `instance` | [Function.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/function-nontrivial--ef6848936c964834b90483cc.md) | 207 | `declaration-track:ef6848936c964834b90483ccf64625c207ae2d3a7b811a8f30640db8d821cda4` |
| 30 | `theorem` | [Subsingleton.le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/subsingleton-le--8dd03f340505c62ef20a4b1e.md) | 211 | `result-track:8dd03f340505c62ef20a4b1efdc4cb29aae6a3d3b82efc600a7555825aeaaed6` |
| 31 | `theorem` | [Subsingleton.eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/subsingleton-eq-one--3ecafc0c91178c0c6c8877a3.md) | 216 | `result-track:3ecafc0c91178c0c6c8877a3b0fd746bdac894b461809bae9de60c9958a2789c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantb0a227454bb44243f502294ad253a6e23a2815ab93a0938851416c4aa955f2c5.lean/declarations/instance--0f72fbc8a5c6e487b0e0c835.md) | 221 | `declaration-track:0f72fbc8a5c6e487b0e0c835c21790e2e5de0b8ff60cf82ee0f184347834301d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
