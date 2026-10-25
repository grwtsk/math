# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Synonym.Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21096b3cf031b30c68e8f28d5093772ba5b28e40",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21096b3cf031b30c68e8f28d5093772ba5b28e40`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/instance--314009e0d2ea5e7d0bd1ee78.md) | 44 | `declaration-track:314009e0d2ea5e7d0bd1ee78f91cf3590de6616ed13bf497eafede6401b5cec9` |
| 2 | `def` | [toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/todual--1198fe12956b7287ae2cda2a.md) | 48 | `declaration-track:1198fe12956b7287ae2cda2a7667ef53777bd5f6ab71bc897bb781592343f40b` |
| 3 | `def` | [ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/ofdual--3b906aca13b877a1e9755fd3.md) | 52 | `declaration-track:3b906aca13b877a1e9755fd391f4a820ced131228dd4e06c7111cba8ae01caff` |
| 4 | `theorem` | [toDual_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/todual-symm-eq--8918a562132f9f622c66ddb8.md) | 56 | `result-track:8918a562132f9f622c66ddb872c68ce9d60ef9a18bd1fe250a43e6812b0a364c` |
| 5 | `theorem` | [ofDual_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/ofdual-symm-eq--0e00c9b727bdba6c09f26449.md) | 59 | `result-track:0e00c9b727bdba6c09f26449dfb5d8cf3d6f4c8c413f3cfd9e6fe15c4ff3f2d1` |
| 6 | `theorem` | [toDual_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/todual-ofdual--d469ec2d927481a843671f71.md) | 62 | `result-track:d469ec2d927481a843671f715f9ca6c71c69701752ce1b77bc639a3fcc465c99` |
| 7 | `theorem` | [ofDual_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/ofdual-todual--23ebafe24bcdbbfbc82392bd.md) | 66 | `result-track:23ebafe24bcdbbfbc82392bd284cece2a8defe6c3f2a1f068b438b84d0914026` |
| 8 | `theorem` | [toDual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/todual-inj--83174b1e988932d8304c6458.md) | 69 | `result-track:83174b1e988932d8304c6458b61ed525b92305c2f4ff87e4c29792d6deeafbdc` |
| 9 | `theorem` | [ofDual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/ofdual-inj--6022ab0426b43a3778ccff4a.md) | 71 | `result-track:6022ab0426b43a3778ccff4a5c051d873579b3ea3ffcdfe48199ba8d74f217cd` |
| 10 | `theorem` | [toDual_le_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/todual-le-todual--d8980f623f2c8cf716d7344f.md) | 74 | `result-track:d8980f623f2c8cf716d7344fd96239a7191290734ebfc68f90338cd7ad498daa` |
| 11 | `theorem` | [toDual_lt_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/todual-lt-todual--901244a201235d8e7dcc465d.md) | 78 | `result-track:901244a201235d8e7dcc465dbe08a661a762633e80db41bd5b1dfef937baf7e2` |
| 12 | `theorem` | [ofDual_le_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/ofdual-le-ofdual--c273d049b4466c47c972a42b.md) | 82 | `result-track:c273d049b4466c47c972a42b11384f1437ca122d277f984ae1121bd2b3a8da68` |
| 13 | `theorem` | [ofDual_lt_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/ofdual-lt-ofdual--12b058a856f02fd9a99cdf56.md) | 86 | `result-track:12b058a856f02fd9a99cdf56a94dc8ec9e9b3b8d4f98ab545f708cf6038cb477` |
| 14 | `theorem` | [le_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/le-todual--02948d7da701c1cf8e06c499.md) | 89 | `result-track:02948d7da701c1cf8e06c4991a46508e2023fe254ac1bf3dbdc1eb056f6de042` |
| 15 | `theorem` | [lt_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/lt-todual--494b252008f811dce92bfb8d.md) | 92 | `result-track:494b252008f811dce92bfb8d65cad4d48ba919fc4c80713774febf4d61dfdd81` |
| 16 | `theorem` | [toDual_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/todual-le--a65946f37bfac42da0bcb49c.md) | 95 | `result-track:a65946f37bfac42da0bcb49c834a3481bdbe6fc03100192629fd4d7f74d67a05` |
| 17 | `theorem` | [toDual_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/todual-lt--67577a58d111398ec69b54af.md) | 98 | `result-track:67577a58d111398ec69b54afdf9281d4bfe4c7635e86e868b4e36de4bc9ed949` |
| 18 | `def` | [rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/rec--011539fa7f7aca5331fb49ab.md) | 103 | `declaration-track:011539fa7f7aca5331fb49ab872250b1eccf2f00cdee91a178eff9a9c6b08f5f` |
| 19 | `theorem` | [«forall»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/forall--fc6d31c91842e8d5894daac7.md) | 107 | `result-track:fc6d31c91842e8d5894daac72e8a4c8be49dbfa65ef7288d207914b17ae2ea3b` |
| 20 | `theorem` | [«exists»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/exists--a9bc3553f652eb06d29022df.md) | 111 | `result-track:a9bc3553f652eb06d29022dfcc05dcdae8686e9d6eb39dc5ac6dc82e3e225cfb` |
| 21 | `def` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/lex--4e1bd5377e24f793cfb97a3e.md) | 128 | `declaration-track:4e1bd5377e24f793cfb97a3e035f62bb0326cea293ea40378073deefcbb22b4c` |
| 22 | `def` | [toLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/tolex--a75d50d412c2a37c03e7ed41.md) | 133 | `declaration-track:a75d50d412c2a37c03e7ed416833951526ddfb535a9e7665418b2b0eda0ab7a2` |
| 23 | `def` | [ofLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/oflex--3028d7af0331c39c1face6a3.md) | 138 | `declaration-track:3028d7af0331c39c1face6a3f973b483222581f0df08c0af0a2f712c14ad44c7` |
| 24 | `theorem` | [toLex_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/tolex-symm-eq--2bc304fad16ff95770c4477a.md) | 142 | `result-track:2bc304fad16ff95770c4477a745afe04e99563e77b998a56c16a18db6aca628e` |
| 25 | `theorem` | [ofLex_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/oflex-symm-eq--d34d847b47397f57deefcd61.md) | 146 | `result-track:d34d847b47397f57deefcd61bfe2ed01ad77ddf0ea033ec7851dacbc372796b9` |
| 26 | `theorem` | [toLex_ofLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/tolex-oflex--f3c3385e5473b27fc13d4614.md) | 150 | `result-track:f3c3385e5473b27fc13d4614bb0f5e32d57400ff3f37edf6dea63e8e6bb4d6af` |
| 27 | `theorem` | [ofLex_toLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/oflex-tolex--87fa5fd89a7412f79f075ca6.md) | 154 | `result-track:87fa5fd89a7412f79f075ca62e0a3e781ea63ae1629fc820f39cac4edda113eb` |
| 28 | `theorem` | [toLex_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/tolex-inj--30706ed67336a56ba4299a1f.md) | 157 | `result-track:30706ed67336a56ba4299a1fafd0e2ba3a042c72ef99110894de620381b19578` |
| 29 | `theorem` | [ofLex_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/oflex-inj--8e1a78fbe7cfe01b55c719f3.md) | 159 | `result-track:8e1a78fbe7cfe01b55c719f39e781894aba27e323c44bb1858096340299bc8f8` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/instance--3c431f2d3fc4a8fa3f8e03ae.md) | 161 | `declaration-track:3c431f2d3fc4a8fa3f8e03ae99fc27806e84ff5b7445d38982d189320a405745` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/instance--62cb1c658342bfbdc22b5f90.md) | 164 | `declaration-track:62cb1c658342bfbdc22b5f90eb733c9d6218d8c47b57a12cda7fca5cd9bc70c7` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/instance--eb2dce1954fa179114839aa7.md) | 167 | `declaration-track:eb2dce1954fa179114839aa7be7589e927fd04d2be4b0edddaf8fe96e6501711` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/instance--a0eac6f4c04a15c2da3072c3.md) | 170 | `declaration-track:a0eac6f4c04a15c2da3072c335cf6329a7f675b395b04b3a799e8bd087bbb85f` |
| 34 | `def` | [Lex.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/lex-rec--193dfcd275ca73126ef15d0b.md) | 175 | `declaration-track:193dfcd275ca73126ef15d0b8d88dc385d43793b512f1c6b91e6a14dbfa80069` |
| 35 | `lemma` | [Lex.forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/lex-forall--3d172f07eadc8cf613c9527b.md) | 177 | `result-track:3d172f07eadc8cf613c9527b4c72fef3608fc71b98e54e2d4e978d2494d30f22` |
| 36 | `lemma` | [Lex.exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantb80710d20e255325317e6e78ff26c565cd4db0abff8f214a70d1fc9b703d2e29.lean/declarations/lex-exists--02bca80cac89902e2b8b7953.md) | 178 | `result-track:02bca80cac89902e2b8b795314fe46469386c641186fc7e747bb54ff0587b3fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
