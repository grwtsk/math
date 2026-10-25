# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.MyhillNerode.Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "822681b397f05d2d9a4f8062e0b5358ac429a2e3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `822681b397f05d2d9a4f8062e0b5358ac429a2e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.DFA` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/leftquotient--682da62b95cb21186ca5f132.md) | 39 | `declaration-track:682da62b95cb21186ca5f1320cf2459738213bea1d57b4e4fb4bd0d0c09c598f` |
| 2 | `theorem` | [leftQuotient_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/leftquotient-nil--7e281dbd4d3664f8f2499d99.md) | 43 | `result-track:7e281dbd4d3664f8f2499d9926e43cf75d1bdf9c03e9e0db18771afc548bd243` |
| 3 | `theorem` | [leftQuotient_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/leftquotient-append--c2aece75002e3b77bae856cb.md) | 46 | `result-track:c2aece75002e3b77bae856cbb4265b90439fc83d85a5dead8c686ebe3b1f2faa` |
| 4 | `theorem` | [mem_leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/mem-leftquotient--4249e6ea20d322e90a14831b.md) | 51 | `result-track:4249e6ea20d322e90a14831b090d1d07f309386d316e49c953cbe4ed5aecafd6` |
| 5 | `theorem` | [leftQuotient_accepts_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/leftquotient-accepts-apply--c8af53cf1f9293b9513a05b7.md) | 53 | `result-track:c8af53cf1f9293b9513a05b71e0d76bc3ce3a6935cb6b5f460f4cf68f99e93d1` |
| 6 | `theorem` | [leftQuotient_accepts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/leftquotient-accepts--597bd484808dea84c86d653c.md) | 58 | `result-track:597bd484808dea84c86d653c2f1349f0ccb16a9855f039217128353fcff92dac` |
| 7 | `theorem` | [IsRegular.finite_range_leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/isregular-finite-range-leftquotient--70614426ded2c799d263eda1.md) | 61 | `result-track:70614426ded2c799d263eda1b3a0e9586bfc60c01401b921493677a008986f0e` |
| 8 | `def` | [toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/todfa--7072dc69625355b008538438.md) | 70 | `declaration-track:7072dc69625355b0085384385a27e0fbc9b98854468295ed6a096d833a3686e4` |
| 9 | `theorem` | [mem_accept_toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/mem-accept-todfa--5870f0b1fa986ace5fa5ed64.md) | 80 | `result-track:5870f0b1fa986ace5fa5ed64e6122957af8c67f0cfcd671421a680524efa950a` |
| 10 | `theorem` | [step_toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/step-todfa--aeeeae96c56d98bb1356bca2.md) | 83 | `result-track:aeeeae96c56d98bb1356bca22c7e4483d1ee12a62e8230f0da548eaa209c9c6e` |
| 11 | `theorem` | [start_toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/start-todfa--1d07aa922062042dfd1714e4.md) | 88 | `result-track:1d07aa922062042dfd1714e429837a4f1bdcbdfb80ba2e5373e48728abc20289` |
| 12 | `theorem` | [accepts_toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/accepts-todfa--f224afa8de0871e47f489409.md) | 92 | `result-track:f224afa8de0871e47f4894095e08c1e675661bb35ac1adbef3758e98b3b393da` |
| 13 | `theorem` | [IsRegular.of_finite_range_leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/isregular-of-finite-range-leftquotient--ea8ef6795471490f4d7ce043.md) | 100 | `result-track:ea8ef6795471490f4d7ce0435f35e443f196d5c974a9949a337e5b6663cee9bf` |
| 14 | `theorem` | [isRegular_iff_finite_range_leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variant0218ea565074f05bd3b1a92d73386ceab608f359a45a0b9a5e0687dcc4b9fe9a.lean/declarations/isregular-iff-finite-range-leftquotient--ca05a44e36831aa68c0fa45b.md) | 107 | `result-track:ca05a44e36831aa68c0fa45b68c7af7b95b28da7f2e29098e68cc6df5117ed0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
