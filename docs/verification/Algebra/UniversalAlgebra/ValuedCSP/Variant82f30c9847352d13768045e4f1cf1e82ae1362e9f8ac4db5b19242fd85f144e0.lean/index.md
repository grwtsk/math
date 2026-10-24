# Verification target: GRWTSK.Algebra.UniversalAlgebra.ValuedCSP.Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94cdf0a1babde4cea79828875fa544eadd1b3bb0",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94cdf0a1babde4cea79828875fa544eadd1b3bb0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Rat` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Optimization.ValuedCSP` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Curry` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ValuedCSP.unaryTerm](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/valuedcsp-unaryterm--bda1993db1aed54af80bc742.md) | 16 | `declaration-track:bda1993db1aed54af80bc74277c903b5720ded54ea80acda0a4eecc730098157` |
| 2 | `def` | [ValuedCSP.binaryTerm](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/valuedcsp-binaryterm--741098976e52fda737501de3.md) | 21 | `declaration-track:741098976e52fda737501de349773544f33e23cdb9758bf47c269b5572376103` |
| 3 | `def` | [absRat](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/absrat--2ec52fa48e29fbad22e13f23.md) | 28 | `declaration-track:2ec52fa48e29fbad22e13f23eab6d8b82e6c1423f043ba6ddc32209393c88404` |
| 4 | `def` | [exampleAbs](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/exampleabs--12b3abac83cbca31b33c12bd.md) | 31 | `declaration-track:12b3abac83cbca31b33c12bd10e29f2c668f27d8aaad086a189d3117769d8f04` |
| 5 | `def` | [exampleFiniteValuedCSP](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplefinitevaluedcsp--251aa0f77878b681aaffd538.md) | 33 | `declaration-track:251aa0f77878b681aaffd538538492c20de7a6742c8ce00f106517dcb53237fe` |
| 6 | `lemma` | [abs_in](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/abs-in--d6bbc471bb1cd4f6b5d9b675.md) | 35 | `result-track:d6bbc471bb1cd4f6b5d9b675756405582d45f601aa66bc6f46068b2e53cc9a61` |
| 7 | `def` | [exampleFiniteValuedInstance](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplefinitevaluedinstance--3b7c463174ff6e4626bba3aa.md) | 37 | `declaration-track:3b7c463174ff6e4626bba3aa13d380ad2a5667eb3c310cdb2d4deb53dd3bfdcc` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--16e15199e6f31af65e892c8c.md) | 40 | `declaration-track:16e15199e6f31af65e892c8c7a1261540fdd4c076c86962aa8aada92b23a1630` |
| 9 | `def` | [Bool_add_le_add_left](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/bool-add-le-add-left--5fa4e2fb0945dc229391e423.md) | 53 | `declaration-track:5fa4e2fb0945dc229391e423b21d485dc4e66861b3722ac684eb2a62060a05c9` |
| 10 | `instance` | [crispCodomainZero](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/crispcodomainzero--928deeb3044f8341d79e8b38.md) | 59 | `declaration-track:928deeb3044f8341d79e8b382e36150d5772242441cf1f048a4c6ace3ab762f9` |
| 11 | `instance` | [crispCodomainAdd](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/crispcodomainadd--44e20a7a46a61bda5e1f03b4.md) | 61 | `declaration-track:44e20a7a46a61bda5e1f03b4ebd6bf734d1b75e2e81abbaece90e14ca514dffc` |
| 12 | `instance` | [crispCodomainAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/crispcodomainaddcommmonoid--3d4ab24274ee7a6052a043b1.md) | 63 | `declaration-track:3d4ab24274ee7a6052a043b1e947fc08d8591254ef488efe608be604c07f5ace` |
| 13 | `instance` | [crispCodomain](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/crispcodomain--e05ad627d5db340881d087ad.md) | 70 | `declaration-track:e05ad627d5db340881d087ad78e67bb6b928ec11a8205d44ad6131b212973ac6` |
| 14 | `def` | [beqBool](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/beqbool--1183e242ca53d37b7d9082ef.md) | 73 | `declaration-track:1183e242ca53d37b7d9082ef6cc425ddaf76a4bb9e8e9f5cc5520934b127cfd0` |
| 15 | `def` | [exampleEquality](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/exampleequality--29e8e08bf0aca2f294874300.md) | 76 | `declaration-track:29e8e08bf0aca2f2948743008614638cde0877310842a95e4ab74cc162471ef1` |
| 16 | `def` | [exampleCrispCSP](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplecrispcsp--14803935cda6dbf9b71027ce.md) | 78 | `declaration-track:14803935cda6dbf9b71027ce2fbee3e4de0352ce81498ec602734dfe2f06219a` |
| 17 | `lemma` | [beqBool_mem](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/beqbool-mem--fb14ad76b7ce31ce22af9531.md) | 80 | `result-track:fb14ad76b7ce31ce22af95313f1d441f0c5c9ed5949909a0efe38c848366c5e3` |
| 18 | `def` | [exampleTermAB](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/exampletermab--5bcf24eaf35f284f109eed76.md) | 82 | `declaration-track:5bcf24eaf35f284f109eed76f34d7c5829708803102d97568490ccdb784e2316` |
| 19 | `def` | [exampleTermBC](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/exampletermbc--a925e77a080e5e0de0af3673.md) | 85 | `declaration-track:a925e77a080e5e0de0af3673428db5b88362e73327d2f6331b4deae90239ce7d` |
| 20 | `def` | [exampleTermCA](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/exampletermca--8129cdd40e81e3380d881fe0.md) | 88 | `declaration-track:8129cdd40e81e3380d881fe0e2e35c039542b0952351c2b7339802c0e86c6a70` |
| 21 | `def` | [exampleTermBD](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/exampletermbd--9610a5cecc1a36af115a2158.md) | 91 | `declaration-track:9610a5cecc1a36af115a2158a35b7402c81f8a8c52119cdd8d5951fefec8c76c` |
| 22 | `def` | [exampleTermCD](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/exampletermcd--e0d776d1471c3f4f82ce5b7e.md) | 94 | `declaration-track:e0d776d1471c3f4f82ce5b7ee9fdcf0447f135ecd4daed583a6caf0fa75cd0b7` |
| 23 | `def` | [exampleCrispCspInstance](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplecrispcspinstance--be3a8f86ba8b9b9283b7c848.md) | 97 | `declaration-track:be3a8f86ba8b9b9283b7c848613ec77c6061ac17e306bfd48ceee02f0015ee6b` |
| 24 | `def` | [exampleSolutionCorrect0](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutioncorrect0--7fc40540a481823f8d1b771a.md) | 107 | `declaration-track:7fc40540a481823f8d1b771a2873439bf1fa7bea122354c3ebc47112adab8ec1` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--2fade93821059b6cb27f8a48.md) | 109 | `declaration-track:2fade93821059b6cb27f8a48632072226e07ffc6230cdadf6823c4e9b879c3c0` |
| 26 | `def` | [exampleSolutionCorrect1](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutioncorrect1--4f0f9c3807be2c92ff12d73d.md) | 119 | `declaration-track:4f0f9c3807be2c92ff12d73ddd0d2f44b3b5f1919f1a72320ae26f641f2bb280` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--657774a10ea7718b2ce71dfc.md) | 121 | `declaration-track:657774a10ea7718b2ce71dfc6d14b48034f3b09105f9bbffa49b4dbbd5c1ae03` |
| 28 | `def` | [exampleSolutionCorrect2](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutioncorrect2--9f8c7662cf2cdad8a21f78c8.md) | 131 | `declaration-track:9f8c7662cf2cdad8a21f78c8478dffa9cc46b73c92aa1e13a305354e1b0c0db5` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--030ff1e1c3066081e19d0299.md) | 133 | `declaration-track:030ff1e1c3066081e19d02994d3786eec6c5647c222c6a7c81e029676426121f` |
| 30 | `def` | [exampleSolutionCorrect3](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutioncorrect3--2cfe7eb5da45862c0d3ec380.md) | 143 | `declaration-track:2cfe7eb5da45862c0d3ec3806b3a9b3ab89ad6e82247c803306dc8cdd9f2a541` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--82be558004b3ca532c7d5732.md) | 145 | `declaration-track:82be558004b3ca532c7d57325c06e551837db6b64ccbd111d83fc19a958d076f` |
| 32 | `def` | [exampleSolutionCorrect4](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutioncorrect4--30b3ef1f8acc349308f9a0d7.md) | 155 | `declaration-track:30b3ef1f8acc349308f9a0d7ac15eae164ab00ff1152dfe027e0b382f5617fce` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--a9fcd6b2219461c164724b3f.md) | 157 | `declaration-track:a9fcd6b2219461c164724b3fe58add888007d0f551fccdd3756765cff66af004` |
| 34 | `def` | [exampleSolutionCorrect5](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutioncorrect5--d3043f62cde7b976e9c4a25e.md) | 167 | `declaration-track:d3043f62cde7b976e9c4a25e165ac45d75c53b507a56fef985084bd9c3fb9551` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--1d7b9eaf692bc1195b596f4b.md) | 169 | `declaration-track:1d7b9eaf692bc1195b596f4b1b110d20239997c26d15de9ab6bbe6db5950adf1` |
| 36 | `def` | [exampleSolutionIncorrect0](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutionincorrect0--863e69ffbb558757b7b76fa2.md) | 179 | `declaration-track:863e69ffbb558757b7b76fa25cd8f118b28c680d3ff9c906387604130822c5c8` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--1bef39244828f19a807192cd.md) | 181 | `declaration-track:1bef39244828f19a807192cdff2fde718a87fbbe9d5ef68b488095fdb8816ef9` |
| 38 | `def` | [exampleSolutionIncorrect1](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutionincorrect1--4b66a07e39205e72b703b32d.md) | 194 | `declaration-track:4b66a07e39205e72b703b32d82946e5e9d125a8687b4054deda2e8b9a986a781` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--6767b681d17230753fadf87b.md) | 196 | `declaration-track:6767b681d17230753fadf87bd4c49f94c71e5786585f2c62783deff2a8caa042` |
| 40 | `def` | [exampleSolutionIncorrect2](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutionincorrect2--36458f4b273de7cc4b89a209.md) | 209 | `declaration-track:36458f4b273de7cc4b89a2093bf45bba58c3a57258387d3dc9491976d8e6fd13` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--c1f2f1f1f2451db9ab2acfc2.md) | 211 | `declaration-track:c1f2f1f1f2451db9ab2acfc260aeeae2a41602ed0a2eae1794217a5d8a3b37c6` |
| 42 | `def` | [exampleSolutionIncorrect3](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutionincorrect3--43eacf71fb8ee16280d38dd3.md) | 224 | `declaration-track:43eacf71fb8ee16280d38dd37c628fd6250a6ef16fa7e62da92854e181d32176` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--4094e40c9a7e2d68f767105c.md) | 226 | `declaration-track:4094e40c9a7e2d68f767105cef1fc494973b71d5cb63b0da5cbe29825a57e474` |
| 44 | `def` | [exampleSolutionIncorrect4](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutionincorrect4--5f09e4920971143309a3cdef.md) | 239 | `declaration-track:5f09e4920971143309a3cdef8ac8e6359b48de6358efbdc0baf43ab814b78d7c` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--b7933d267c85118fca781ce7.md) | 241 | `declaration-track:b7933d267c85118fca781ce7a1deec96ff43c0f0ed14f5be0e55e035d668eecd` |
| 46 | `def` | [exampleSolutionIncorrect5](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutionincorrect5--05f2fcf5644c159502777bfa.md) | 254 | `declaration-track:05f2fcf5644c159502777bfab117ddc58a48614e4a6801dcd32e7c084d275b39` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--e43973b081634197aedaf8e5.md) | 256 | `declaration-track:e43973b081634197aedaf8e5aa0865065832f912e9de7d3db9f904c21bc0411c` |
| 48 | `def` | [exampleSolutionIncorrect6](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutionincorrect6--b9fee4ff6e214f8a30fac3cc.md) | 269 | `declaration-track:b9fee4ff6e214f8a30fac3ccb6cc47798fe0919d395e58b433e03a1c5af6b862` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--7a6f9cab1584bdaa89f0125f.md) | 271 | `declaration-track:7a6f9cab1584bdaa89f0125f3fb7b6be26c664bbeb99c05281095d2236a34934` |
| 50 | `def` | [exampleSolutionIncorrect7](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/examplesolutionincorrect7--ac577670a67594881012f069.md) | 284 | `declaration-track:ac577670a67594881012f069317d66cfece97552e16f121372249f178e2e9266` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/declarations/example--9058654ec1b1cc3fabdda0b8.md) | 286 | `declaration-track:9058654ec1b1cc3fabdda0b82b46661ae3db920b6d69eac2f315e34c3b594551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
