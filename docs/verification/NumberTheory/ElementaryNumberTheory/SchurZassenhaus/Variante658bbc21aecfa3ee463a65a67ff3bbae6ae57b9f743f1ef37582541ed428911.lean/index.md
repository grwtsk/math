# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SchurZassenhaus.Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3d76d5379263a76b6040b4707be7cd4d58e9b11",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3d76d5379263a76b6040b4707be7cd4d58e9b11`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Transfer` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuotientDiff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/quotientdiff--7ee46df1d859e0ec17e78c64.md) | 42 | `declaration-track:7ee46df1d859e0ec17e78c643de6333bf59c662d6ee965debd5270b3f980e386` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/instance--08041027862bc89b5ac23a24.md) | 48 | `declaration-track:08041027862bc89b5ac23a2437816946d8cb1965153494f035eb153f6a44cab8` |
| 3 | `theorem` | [smul_diff_smul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/smul-diff-smul--ce9fd8c087e4877a88288d28.md) | 51 | `result-track:ce9fd8c087e4877a88288d2889add590ee4b80d7ffade8cec2069716f33b6a50` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/instance--28c44837c94baf2bf6a68056.md) | 70 | `declaration-track:28c44837c94baf2bf6a6805692e54709d2e60fc7ef540dfca7312fc20efad195` |
| 5 | `theorem` | [smul_diff'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/smul-diff--8d524798b6832c259976b112.md) | 84 | `result-track:8d524798b6832c259976b112d167556f469756a95cd6c055de101169dbef03d8` |
| 6 | `theorem` | [eq_one_of_smul_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/eq-one-of-smul-eq-one--4bb0bb93d1b1f83b30735aa5.md) | 95 | `result-track:4bb0bb93d1b1f83b30735aa5c43cd5b3c8429bd453f0fb0cf124d55e40b496ad` |
| 7 | `theorem` | [exists_smul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/exists-smul-eq--e9232b59209009d551a3753f.md) | 104 | `result-track:e9232b59209009d551a3753f7cde04dce1e8751afefa9e3ad191125f0b5e700a` |
| 8 | `theorem` | [isComplement'_stabilizer_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/iscomplement-stabilizer-of-coprime--5c8ad3ad8ba7c8eb8bf7d259.md) | 115 | `result-track:5c8ad3ad8ba7c8eb8bf7d259b0a270fa91a1420f65bc4acb705974e6655234ad` |
| 9 | `theorem` | [exists_right_complement'_of_coprime_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/exists-right-complement-of-coprime-aux--ba2bf6e19c7da92da639a781.md) | 120 | `result-track:ba2bf6e19c7da92da639a7818517fe86cf306fd4ed58813d2bd2b94179238738` |
| 10 | `theorem` | [step0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/step0--d6ef96f71b1c4a2daa7d0113.md) | 159 | `result-track:d6ef96f71b1c4a2daa7d011302026830fdb782d51ed626b1e2a14d826161395d` |
| 11 | `theorem` | [step1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/step1--dd7cabbaa291cd7c1e903d0b.md) | 167 | `result-track:dd7cabbaa291cd7c1e903d0bcc69e52b09e61f6ea4a91639bf98ea147df8d2af` |
| 12 | `theorem` | [step2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/step2--b56779e4db6d3b02ecd90915.md) | 191 | `result-track:b56779e4db6d3b02ecd90915de34ffbd231e267bfc328d56c0f1a0a10c9c0ba0` |
| 13 | `theorem` | [step3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/step3--da37f94a250b234aa75b6ff8.md) | 222 | `result-track:da37f94a250b234aa75b6ff83aaf0e6e8f15ffec06fcdd5f97f0d4cba7a5195f` |
| 14 | `theorem` | [step4](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/step4--b3ca5e43b57418a9c53494d2.md) | 233 | `result-track:b3ca5e43b57418a9c53494d2e8110828ef628df654fb4a004a4f3d99c7cf2137` |
| 15 | `theorem` | [step5](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/step5--88bc453f2c73725cd2a52e0b.md) | 237 | `result-track:88bc453f2c73725cd2a52e0b469dc6221962c9654929caa67942858d30663399` |
| 16 | `theorem` | [step6](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/step6--a1aa697eb866127cd1ae6bc0.md) | 244 | `result-track:a1aa697eb866127cd1ae6bc038877c23abbcad9d9680f5aa76d29857b9230245` |
| 17 | `theorem` | [step7](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/step7--12f0786fdfd16170c61060aa.md) | 254 | `result-track:12f0786fdfd16170c61060aac202c93a82554f6401303de87b487f5cd4de674c` |
| 18 | `theorem` | [exists_right_complement'_of_coprime_aux'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/exists-right-complement-of-coprime-aux--290521139be279ac585823dc.md) | 266 | `result-track:290521139be279ac585823dcbf87beae4c37e7062eff362281e32cece8f37195` |
| 19 | `theorem` | [exists_right_complement'_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/exists-right-complement-of-coprime--c660032158470996901efc84.md) | 279 | `result-track:c660032158470996901efc848ecbf64f9a7f39d355ed63f78e0ac0e6c375930f` |
| 20 | `theorem` | [exists_left_complement'_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/declarations/exists-left-complement-of-coprime--dcfd7121fdc57632553976b6.md) | 300 | `result-track:dcfd7121fdc57632553976b6948689840b1c996021e1beec534000d0c6ff3f2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
