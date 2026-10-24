# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BasicAux.Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1a5cc537528b2bcb46b1333b3a7b9197235d3c4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1a5cc537528b2bcb46b1333b3a7b9197235d3c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/getd--acfeb33f767b5c1ee63e9341.md) | 43 | `declaration-track:acfeb33f767b5c1ee63e93417e01cb9bec2a614ede72f7fcd76f9fbda5f93fba` |
| 2 | `theorem` | [getD_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/getd-nil--2ac5c224d161423c3715c39f.md) | 46 | `result-track:2ac5c224d161423c3715c39fde05e048b871ed6ab06579e92f28c51f1d553b7b` |
| 3 | `def` | [getLast!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/getlast--52a86d258b63b58ff594fbda.md) | 63 | `declaration-track:52a86d258b63b58ff594fbdaf72ee57dff0578cf58217b1a4f574cb89f9df1f4` |
| 4 | `def` | [head!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/head--8ed7fb9ee340025f9f2151c1.md) | 79 | `declaration-track:8ed7fb9ee340025f9f2151c18d1236736a3a78c6111c198bc507c4bd27f1102a` |
| 5 | `def` | [tail!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/tail--9a7f26fc90f8373acfda1599.md) | 98 | `declaration-track:9a7f26fc90f8373acfda15994eb09ffc4a69ba95fbebc51abcc0e8689a04f986` |
| 6 | `theorem` | [tail!_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/tail-cons--1300f99daf75ad68404fbae3.md) | 102 | `result-track:1300f99daf75ad68404fbae39b4ede73e9d9a4e6645411af6f25b7055605c99b` |
| 7 | `def` | [partitionM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/partitionm--dbb44e096facac24209e2439.md) | 133 | `declaration-track:dbb44e096facac24209e2439b12298651b31a732dbf078c50b0cffbbab35dfa6` |
| 8 | `def` | [partitionMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/partitionmap--ed17650aecf90ce6157244d7.md) | 157 | `declaration-track:ed17650aecf90ce6157244d75cded190843f7acf628ea04131cda76a4b348463` |
| 9 | `def` | [mapMonoMImp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/mapmonomimp--922d065927da1ab2fe5c5191.md) | 175 | `declaration-track:922d065927da1ab2fe5c519109397f7fdc7e9680343afd2fede61e7b37925eca` |
| 10 | `def` | [mapMonoM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/mapmonom--9ddb03206424d19f92384040.md) | 192 | `declaration-track:9ddb03206424d19f9238404051078744357b9e41e4c1cdceb7136bc4b267cee5` |
| 11 | `def` | [mapMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/mapmono--20663309f2a6b973549ae316.md) | 205 | `declaration-track:20663309f2a6b973549ae316217b31dbb323538e52b95b57d006c4136df56bef` |
| 12 | `theorem` | [getElem_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/getelem-append-left--366ce10b9a86294caad43311.md) | 211 | `result-track:366ce10b9a86294caad43311721c900e0ac2a16397a6c636e19495bbb4f45289` |
| 13 | `theorem` | [getElem_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/getelem-append-right--4fcb10eb26a638dae8e47b08.md) | 221 | `result-track:4fcb10eb26a638dae8e47b080cb251dcccb0d9a59e1d0d074e5f7fa6dee80852` |
| 14 | `theorem` | [sizeOf_lt_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/sizeof-lt-of-mem--0e7f4c9c01ee80e88a1cdf80.md) | 230 | `result-track:0e7f4c9c01ee80e88a1cdf80ad1d32046c736e8893fb12115e6440bc5569f43d` |
| 15 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/macro--58bd4ea656fc0f4e96de66dd.md) | 238 | `declaration-track:58bd4ea656fc0f4e96de66dd12f5034cac0481152cb07b4c984593f64306b2f6` |
| 16 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/macro-rules--dde1d1dac5e7b78bced506f4.md) | 246 | `declaration-track:dde1d1dac5e7b78bced506f42cc0d2b1f12874ad81d10f4fd1efe2c8599173fd` |
| 17 | `theorem` | [append_cancel_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/append-cancel-left--6a54541c191282cbc42055e2.md) | 248 | `result-track:6a54541c191282cbc42055e2fb4df6482289362f106984844f381e6194813511` |
| 18 | `theorem` | [append_cancel_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/append-cancel-right--1a31e1b07b4e42ed83d0d40b.md) | 255 | `result-track:1a31e1b07b4e42ed83d0d40ba6470f92774befe7203bd59c6773fb269d449083` |
| 19 | `theorem` | [append_cancel_left_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/append-cancel-left-eq--4e6e871135dbe57b3bc0056d.md) | 262 | `result-track:4e6e871135dbe57b3bc0056dff85457db6f15476b123df741765755a97cc4eb1` |
| 20 | `theorem` | [append_cancel_right_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/append-cancel-right-eq--f8fe084af501d21591a2b562.md) | 267 | `result-track:f8fe084af501d21591a2b562737cc13cf6d008c1051585689e848a112cc7e2f6` |
| 21 | `theorem` | [sizeOf_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/sizeof-get--cb929838b0d4cf2833da4953.md) | 272 | `result-track:cb929838b0d4cf2833da49536f5236d6d00c3c0a4cf6cd7cce7e260d6e666b87` |
| 22 | `theorem` | [lex_trichotomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/lex-trichotomous--a9b577bfd73257d175c77ed9.md) | 280 | `result-track:a9b577bfd73257d175c77ed91b118624285344ed8dbc8b03840ececd0ccdf117` |
| 23 | `theorem` | [not_lex_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/not-lex-antisymm--3793cbe80146aec70fcd8151.md) | 301 | `result-track:3793cbe80146aec70fcd81514a98588fd6de1be7bd2bcb5c0a9bcd3d81bcb474` |
| 24 | `theorem` | [le_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/le-antisymm--28770f115516a9fa96cabdef.md) | 306 | `result-track:28770f115516a9fa96cabdef15a84cab196cc0a4151c1448e0d388a5b6304272` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/declarations/instance--6e190f36c559444ec269c377.md) | 312 | `declaration-track:6e190f36c559444ec269c377ac4f815614e3c7098fadc96b08b79fbed326d3c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
