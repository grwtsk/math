# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BasicAux.Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39680919ddf376e715105b20a7e40ca70ffcc248",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39680919ddf376e715105b20a7e40ca70ffcc248`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/getd--a53c79005f7c800812a36a96.md) | 51 | `declaration-track:a53c79005f7c800812a36a968bba2f2ea645bd326271a8003b28a8da08929cc4` |
| 2 | `theorem` | [getD_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/getd-nil--fc9a66c76cdf971c5ec12a5d.md) | 54 | `result-track:fc9a66c76cdf971c5ec12a5d34140b7a0a1b10905ebc01a961fe4c9fbf7fdbcc` |
| 3 | `def` | [getLast!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/getlast--10c1e1048e0efffa755d48c9.md) | 71 | `declaration-track:10c1e1048e0efffa755d48c98fe1dea91db7a5f791eedc0b8f20f29aae1aad55` |
| 4 | `def` | [head!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/head--9501b7ee126daea4cefe7c12.md) | 87 | `declaration-track:9501b7ee126daea4cefe7c1263a2173791e0c4da6bd8d2859aa1df515f20a3d4` |
| 5 | `def` | [tail!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/tail--87b8fdcea41e99525174d737.md) | 106 | `declaration-track:87b8fdcea41e99525174d737df4dc56e82de093b038f23d71b4a99d37d31050b` |
| 6 | `theorem` | [tail!_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/tail-cons--53982b5591279f85e7a27f6c.md) | 110 | `result-track:53982b5591279f85e7a27f6ca38196a1912b4acb27e28e18e4582a4e602aef0b` |
| 7 | `def` | [partitionM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/partitionm--2df6d00b34795d146b63b6a2.md) | 141 | `declaration-track:2df6d00b34795d146b63b6a2c8ae8db6dda19ec97e78ddc85346cc55a4527c2f` |
| 8 | `def` | [partitionMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/partitionmap--7e4f7af7635c1ccae910be73.md) | 165 | `declaration-track:7e4f7af7635c1ccae910be737650f73ee56b9774fb6b6e84ae5a763aa77d92f5` |
| 9 | `def` | [mapMonoMImp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/mapmonomimp--9fbdf6979f059ef8f32667e8.md) | 183 | `declaration-track:9fbdf6979f059ef8f32667e83d71589c28e842a967987c7d164f62d17bd8e0d9` |
| 10 | `def` | [mapMonoM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/mapmonom--0522f61f98a8683655e2823f.md) | 200 | `declaration-track:0522f61f98a8683655e2823fcd4f1e1e35191d19874448d12206c356a0d5c382` |
| 11 | `def` | [mapMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/mapmono--b676e1d734733707e2825ffd.md) | 213 | `declaration-track:b676e1d734733707e2825ffdc076eae16f703dcad64094fc5f2ab4cda7258805` |
| 12 | `theorem` | [getElem_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/getelem-append-left--a764af239b69364ba152246f.md) | 219 | `result-track:a764af239b69364ba152246f352792cc2c4fbf4f4868ca0f81362aa622af75d9` |
| 13 | `theorem` | [getElem_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/getelem-append-right--7305d009db53b7dffeb325bb.md) | 229 | `result-track:7305d009db53b7dffeb325bb4c415f4968360e76b334e20725b542374feb82a9` |
| 14 | `theorem` | [sizeOf_lt_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/sizeof-lt-of-mem--a2759ded2a02ef585a47ad19.md) | 238 | `result-track:a2759ded2a02ef585a47ad1993f0f0f17524dbb4fd357d4d28b94674e31ce168` |
| 15 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/macro--16f33e0db84efe0d8270d0be.md) | 246 | `declaration-track:16f33e0db84efe0d8270d0bebe83342be7766f9e21e1f71cd5f649c29e6a525a` |
| 16 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/macro-rules--a69851d17ed7ad4b61b8a4c6.md) | 254 | `declaration-track:a69851d17ed7ad4b61b8a4c63a5f88ed0d87b4a03cd81beae0c6ed41d4a7b36b` |
| 17 | `theorem` | [append_cancel_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/append-cancel-left--976183a1b56e6163eada8c09.md) | 256 | `result-track:976183a1b56e6163eada8c0971c958120673b9ae4e830465d613b8622d9f8319` |
| 18 | `theorem` | [append_cancel_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/append-cancel-right--6f36c075f0351666623c600c.md) | 263 | `result-track:6f36c075f0351666623c600c4dd561ae5619bff90643444bbfb4510703d63ed8` |
| 19 | `theorem` | [append_cancel_left_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/append-cancel-left-eq--db045850f61cfe49a3371b1f.md) | 270 | `result-track:db045850f61cfe49a3371b1f545bc2effb1dec3d2fda2c255f29efdda5c6af7b` |
| 20 | `theorem` | [append_cancel_right_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/append-cancel-right-eq--93aec5718811ebd5dfaa539e.md) | 275 | `result-track:93aec5718811ebd5dfaa539e56081e1d8cfe1a316fa2904ddf333d07541b2831` |
| 21 | `theorem` | [sizeOf_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/sizeof-get--8cd99e31964b7f75d0acc8c9.md) | 280 | `result-track:8cd99e31964b7f75d0acc8c99194de81cac3adf3bde686ecb781b53044b2ccf3` |
| 22 | `theorem` | [lex_trichotomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/lex-trichotomous--de2797f4e339e24ad79cd7d5.md) | 288 | `result-track:de2797f4e339e24ad79cd7d53982088e5a3a90bced6d5d7991e7760912c5e990` |
| 23 | `theorem` | [not_lex_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/not-lex-antisymm--91c9ee7b27814a8566b30751.md) | 309 | `result-track:91c9ee7b27814a8566b3075129a98299b307984bb3fb8789d4fa16b7f2f0865a` |
| 24 | `theorem` | [le_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/le-antisymm--5cd25c949e36b82d9e9e80c2.md) | 314 | `result-track:5cd25c949e36b82d9e9e80c21cefb1a9ddb9a6f51f3080b0e00d6621fa588736` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/declarations/instance--b75e58a44169969f1274a2db.md) | 320 | `declaration-track:b75e58a44169969f1274a2db64b276392276363c1feda51ecb5be6bc5d4cf0b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
