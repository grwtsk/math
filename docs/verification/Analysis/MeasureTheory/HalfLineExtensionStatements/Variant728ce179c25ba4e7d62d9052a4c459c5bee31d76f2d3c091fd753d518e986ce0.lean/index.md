# Verification target: GRWTSK.Analysis.MeasureTheory.HalfLineExtensionStatements.Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "593a45e806a3e071becce3399041924962057d27",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `593a45e806a3e071becce3399041924962057d27`.

Source path: `GRWTSK/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/fullh--ae693de8ce3c8dc8156dcd24.md) | 24 | `declaration-track:ae693de8ce3c8dc8156dcd249593fae93465a10a159de230d307475bd50b0b82` |
| 2 | `def` | [zeroExtensionFunction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextensionfunction--83024b59800f0b2205bea49a.md) | 26 | `declaration-track:83024b59800f0b2205bea49ac6c53b49c4300536cbf2ba0496347ca9b2d5dffd` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextensionfunction-memlp--f74902b9953f2dd5b125324b.md) | 28 | `result-track:f74902b9953f2dd5b125324b7c94985addc99702d1b146a1a0c54ae7b7c09568` |
| 4 | `def` | [zeroExtensionVector](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextensionvector--5031069850a46f75bd3189a6.md) | 32 | `declaration-track:5031069850a46f75bd3189a6fa6e938cf91d0ff5a77fac769b33c2b75bfd68d8` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextensionvector-ae--43a56bf4d9eece7eab4623da.md) | 35 | `result-track:43a56bf4d9eece7eab4623da85f171f4cd35cba0c7a7c390130668761a5ea2c8` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextensionvector-norm--6c467ded4068bd0aefa0c28a.md) | 39 | `result-track:6c467ded4068bd0aefa0c28ae0ef3145e32aa793250e62c3c293bd2463d50467` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextensionvector-add--5cb21bdfd6698d5d609a4457.md) | 44 | `result-track:5cb21bdfd6698d5d609a44576e881d98bbbacd10c284f044c470631cc2800139` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextensionvector-smul--9beca17631cc8a638a3db8b8.md) | 56 | `result-track:9beca17631cc8a638a3db8b822d5f4d1cad3de587b1b388a5be28bd57be65bf1` |
| 9 | `def` | [zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextension--b836019eb9d4f6350728ecf2.md) | 69 | `declaration-track:b836019eb9d4f6350728ecf2a5b96ba5d529017dec4abada54c8785eed2b605a` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextension-ae--93c027d872224f3fe101042d.md) | 75 | `result-track:93c027d872224f3fe101042da56b168cfefb441c0537c9b51bc354698311c961` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextension-norm--9e8ddcf4523d5e1b32b85fbb.md) | 79 | `result-track:9e8ddcf4523d5e1b32b85fbbd27bbd535991de832ea1cedb5db97fa11fd98a2f` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextension-ae-halfline--434e48a7b006f415a8834560.md) | 82 | `result-track:434e48a7b006f415a88345600708aaa4cc843e5dfcb4241c5d757f2abb927b4d` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/zeroextension-ae-nonpositive--93627774602b1b138751410c.md) | 88 | `result-track:93627774602b1b138751410cabd56a87d20c4c29c8af58e2c4ce93ab7aed5ef7` |
| 14 | `def` | [restriction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/restriction--edf2e5c0457b758aaa675166.md) | 97 | `declaration-track:edf2e5c0457b758aaa6751664c7a3297456629d1716d90350af6bc3e789e274f` |
| 15 | `theorem` | [restriction_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/restriction-ae--70ce0732f48bbeb46a957c86.md) | 99 | `result-track:70ce0732f48bbeb46a957c863b915483ee210375828383ad45e1d5f3f02c4dcc` |
| 16 | `theorem` | [restriction_norm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/restriction-norm-le--4b309d52899699a283370cd4.md) | 102 | `result-track:4b309d52899699a283370cd48df7aa86e9e932976dc33543e1aace8a6db2b53b` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/restriction-opnorm-le--921377e10df57c7a294f89f5.md) | 105 | `result-track:921377e10df57c7a294f89f57a9e574192a169f38d3ba4ae2df1cc42ca4ac5a0` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/restriction-zeroextension--d53148b81f03bb5b64948698.md) | 110 | `result-track:d53148b81f03bb5b64948698b2697275a8418cc5838cd0d59bbeca881ec4265a` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/restriction-comp-zeroextension--112c54d1c45872f10bbc10eb.md) | 113 | `result-track:112c54d1c45872f10bbc10eb855415476fbbe821dbe2c006a914e6d6fe6a7263` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--6b479c932f800eebee31214e.md) | 126 | `declaration-track:6b479c932f800eebee31214eac5863fac80cf614a157f76f5648925b6a0d82bc` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--c9d8ba7b3e0454153a3575ae.md) | 127 | `declaration-track:c9d8ba7b3e0454153a3575ae7eaa7242368cb3b1d5bcca9c94cc1a1d10d6bd8e` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--c9592d2b9a18d07f16040747.md) | 128 | `declaration-track:c9592d2b9a18d07f16040747259c4e15e72b26b7896b1618b647d3898f47d586` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--8691064fe34b642e59661368.md) | 130 | `declaration-track:8691064fe34b642e59661368a3516c858122b541246478b41548a9b4ab81dc95` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--a74d554b272adc2d5acda526.md) | 132 | `declaration-track:a74d554b272adc2d5acda52659c66bc667a78a618e73552e84471c928eae2ea2` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--46ca5bd684d007328a6a3b29.md) | 134 | `declaration-track:46ca5bd684d007328a6a3b29bc66bbe9b4990715dc83a9c9a4b8f79ab0b96157` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--3d599a3f7b380dddf160c16e.md) | 135 | `declaration-track:3d599a3f7b380dddf160c16e685727e45b9fd92dd097807c5486d88ab121a7b8` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--215eaa5ffdbaf21f4bfbfa3d.md) | 137 | `declaration-track:215eaa5ffdbaf21f4bfbfa3d1ae82a34ce9402185e1331f331007bb39e056ccb` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--077696be948809f10af00b57.md) | 139 | `declaration-track:077696be948809f10af00b573ae41f012bcfb151d31db69ac7847007fa581c3b` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--05c44fe6453ff4a14ce1422b.md) | 140 | `declaration-track:05c44fe6453ff4a14ce1422b7986474b86f576d697a498edf615f7f5d072f5f7` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--ea2b1d994e7151a0e436a662.md) | 141 | `declaration-track:ea2b1d994e7151a0e436a66264b5ef14c9dbe5885ac6276c4ed88d594dec7406` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--ed6a315dcd0dbc61cf2e87af.md) | 143 | `declaration-track:ed6a315dcd0dbc61cf2e87afbeb9b0ab4f3ee3be7323260612f5fc4bf828c25e` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--5d80505a853ed93d00f9e4b2.md) | 144 | `declaration-track:5d80505a853ed93d00f9e4b23694abfb4c4d3244955ce12358380b5c0818dc35` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--1f7f4fc7ea5b96f928fb99f2.md) | 146 | `declaration-track:1f7f4fc7ea5b96f928fb99f262b36e3300ee352793f3ad96ad7d911edff99cd9` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--a9056ecb8ddf2942a419faa4.md) | 148 | `declaration-track:a9056ecb8ddf2942a419faa4b4d3f994b247ca811959ff60fa4497114729dbab` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--a733eb405a853c04ae5fea3c.md) | 149 | `declaration-track:a733eb405a853c04ae5fea3c9fde7038ff40cb857f655573ebb38a490268b0e8` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--c7be1a1ed12af598a92273a8.md) | 151 | `declaration-track:c7be1a1ed12af598a92273a82113b43af40a83a7f445f9e158b956cb3cb4270e` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--4bac38707dc352205e0d8edc.md) | 152 | `declaration-track:4bac38707dc352205e0d8edcbc44921de0a26df6bde9d444cf4e6bc3ab1d9ba7` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--178282927de823aa7db50290.md) | 153 | `declaration-track:178282927de823aa7db5029080c31cb9802590b43480d6d085629592b236ab59` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0.lean/declarations/example--3b7c872e01f4e0b768cb74ac.md) | 154 | `declaration-track:3b7c872e01f4e0b768cb74ac78dbd56fe65fd855ac068ab735f6c43f79020c96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
