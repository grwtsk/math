# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monotone.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "861ff25e124c016b830230befc3cab6f4922d629",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `861ff25e124c016b830230befc3cab6f4922d629`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.MonotoneOn.congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-monotoneon-congr--b819f235dd822038720583ee.md) | 24 | `result-track:b819f235dd822038720583ee3e27c8b01350eb753eb2a0ef6abf1df1b6814bb6` |
| 2 | `theorem` | [_root_.AntitoneOn.congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-antitoneon-congr--e75e4a9a4a9761e568de2836.md) | 29 | `result-track:e75e4a9a4a9761e568de2836f8a0957b0a95616c84c483c7e4565a09ba0efdc4` |
| 3 | `theorem` | [_root_.StrictMonoOn.congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-strictmonoon-congr--e5673ab3d0b12ec03ffec002.md) | 32 | `result-track:e5673ab3d0b12ec03ffec002f64ba3909a183628cb74938352d1253186a8b625` |
| 4 | `theorem` | [_root_.StrictAntiOn.congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-strictantion-congr--789f8e7551d310ba9ba88e4e.md) | 38 | `result-track:789f8e7551d310ba9ba88e4e5daf39cfa8640fa1d5fc2a8398ca8830a6d5b9e3` |
| 5 | `theorem` | [EqOn.congr_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/eqon-congr-monotoneon--1fd7a02dfe99d1e2abe5e1e4.md) | 41 | `result-track:1fd7a02dfe99d1e2abe5e1e41ee5532f6b1956fe2a9d295116f2eea75c9555e9` |
| 6 | `theorem` | [EqOn.congr_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/eqon-congr-antitoneon--d3b37c97f5c452a7d0b3e9da.md) | 44 | `result-track:d3b37c97f5c452a7d0b3e9dac9f44800ca764a802bbf2f319244fe734b91a6c2` |
| 7 | `theorem` | [EqOn.congr_strictMonoOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/eqon-congr-strictmonoon--ea198a5143f35d9b70315f61.md) | 47 | `result-track:ea198a5143f35d9b70315f61eb0cf5370fa160e09673ccdf85f3d0c38379a8d4` |
| 8 | `theorem` | [EqOn.congr_strictAntiOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/eqon-congr-strictantion--836a92e4527feb3c7655bbae.md) | 50 | `result-track:836a92e4527feb3c7655bbae721e238f7e7463fe082647503137ae87861c3079` |
| 9 | `theorem` | [_root_.MonotoneOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-monotoneon-mono--b6b9e0ba0590dc9d0a55936f.md) | 60 | `result-track:b6b9e0ba0590dc9d0a55936fe3bd7d5ec80dad9b68cfa903e8eb62db2c286757` |
| 10 | `theorem` | [_root_.AntitoneOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-antitoneon-mono--47819670ffc513b557a754a8.md) | 63 | `result-track:47819670ffc513b557a754a85657e5e52570f098d48efc66a412dab373831b28` |
| 11 | `theorem` | [_root_.StrictMonoOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-strictmonoon-mono--b5f3f2c98cf46cc1531acc7f.md) | 66 | `result-track:b5f3f2c98cf46cc1531acc7f0390a9df6d388cc2288c51a49e49781eb34c11a0` |
| 12 | `theorem` | [_root_.StrictAntiOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-strictantion-mono--0341744697ace09c50f06e94.md) | 69 | `result-track:0341744697ace09c50f06e948cad77c935e1007b874ff63fc743dc778e84cd6b` |
| 13 | `theorem` | [_root_.MonotoneOn.monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-monotoneon-monotone--963f457fdc3926794aa03529.md) | 72 | `result-track:963f457fdc3926794aa03529a68dca58366bb41ddb881ff67062543c05867d01` |
| 14 | `theorem` | [_root_.AntitoneOn.monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-antitoneon-monotone--645a261fea35c41808d9fcd6.md) | 76 | `result-track:645a261fea35c41808d9fcd6305106bb984988e3ce7dd401fdf7c1f26289773d` |
| 15 | `theorem` | [_root_.StrictMonoOn.strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-strictmonoon-strictmono--10a64c3640785ee8aaf3fe63.md) | 80 | `result-track:10a64c3640785ee8aaf3fe63b031cce3f03cbe851247c62d384fc134a4c92b79` |
| 16 | `theorem` | [_root_.StrictAntiOn.strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/root-strictantion-strictanti--1c1b41983baffdd481a5bd0d.md) | 84 | `result-track:1c1b41983baffdd481a5bd0de7a22e271fcc0f6bc354dac702c982d9f618c4a3` |
| 17 | `lemma` | [MonotoneOn_insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/monotoneon-insert-iff--be2bb20d79988d51f66ddea1.md) | 88 | `result-track:be2bb20d79988d51f66ddea12446d00589b598bb678ba24c7c49cb1687bdabd8` |
| 18 | `lemma` | [AntitoneOn_insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/antitoneon-insert-iff--dbd5cfd458f0499bd5f3efe0.md) | 93 | `result-track:dbd5cfd458f0499bd5f3efe0918872dec56c157ba2f6decae7a5a4528d9e036d` |
| 19 | `theorem` | [restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/restrict--8c527e91c7ead5e321ecf81e.md) | 111 | `result-track:8c527e91c7ead5e321ecf81ecab783b7db409cfeda80c06c63dfd5902f81ca2c` |
| 20 | `theorem` | [codRestrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/codrestrict--20d07fd4ab341808510641df.md) | 114 | `result-track:20d07fd4ab341808510641df1cea604b46adfa5457db26176e52228d23b4b02e` |
| 21 | `theorem` | [rangeFactorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/rangefactorization--0f20bd5ccae6ebd6df59f44a.md) | 118 | `result-track:0f20bd5ccae6ebd6df59f44a662984c9afc33fd289e7509f3e5df86a12f92c19` |
| 22 | `theorem` | [strictMono_restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/strictmono-restrict--e39cd44d4b81e82d0275ae5a.md) | 126 | `result-track:e39cd44d4b81e82d0275ae5aa4c145a1c59e0c1909d1cf47c2b106e94f849451` |
| 23 | `theorem` | [StrictMono.codRestrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/strictmono-codrestrict--c8f1fd5c0c5f45b38ea3b24a.md) | 131 | `result-track:c8f1fd5c0c5f45b38ea3b24af2f463bf916edef6ba04cb722a1ac64b85b02283` |
| 24 | `lemma` | [strictMonoOn_insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/strictmonoon-insert-iff--8d7d5df08ad3599cbcf01c98.md) | 135 | `result-track:8d7d5df08ad3599cbcf01c98fd64ccec4fdd6942a9ed513de1376b5ee21c43cd` |
| 25 | `lemma` | [strictAntiOn_insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/strictantion-insert-iff--bc8211a6b983ff9a25734595.md) | 140 | `result-track:bc8211a6b983ff9a25734595ad0ac0f5dae42c9fe848dbede5b20236aebd20ff` |
| 26 | `theorem` | [monotoneOn_of_rightInvOn_of_mapsTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/monotoneon-of-rightinvon-of-mapsto--defef0e77764500993a95791.md) | 151 | `result-track:defef0e77764500993a957915a9971a86c55a5c1fe6b2171a8881ec42a884540` |
| 27 | `theorem` | [antitoneOn_of_rightInvOn_of_mapsTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.lean/declarations/antitoneon-of-rightinvon-of-mapsto--57564b885fbd4121b2e63731.md) | 162 | `result-track:57564b885fbd4121b2e63731bd7672595890f9fb4f6143047c1c201e39c42e96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
