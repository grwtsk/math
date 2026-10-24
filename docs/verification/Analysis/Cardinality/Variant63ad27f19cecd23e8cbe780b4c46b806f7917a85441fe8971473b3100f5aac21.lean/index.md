# Verification target: GRWTSK.Analysis.Cardinality.Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b440699a9094e3ef41b99d31c07ae005ffa02fa8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/index.md) · [Full source](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b440699a9094e3ef41b99d31c07ae005ffa02fa8`.

Source path: `GRWTSK/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cantorFunctionAux](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunctionaux--01fb59700538bf4cb7c39134.md) | 61 | `declaration-track:01fb59700538bf4cb7c391342f0d8b98efb419dd319673c948e147c170f7429f` |
| 2 | `theorem` | [cantorFunctionAux_true](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunctionaux-true--d45ad1747494ad6bca5c85e6.md) | 65 | `result-track:d45ad1747494ad6bca5c85e6d4dd46223b0d87b8c237ae339edee531f51109d6` |
| 3 | `theorem` | [cantorFunctionAux_false](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunctionaux-false--e18e14e6ee4655d41b0aa4b9.md) | 69 | `result-track:e18e14e6ee4655d41b0aa4b927f0d5c45acb1b9c0b94f705f46b5c79573a4a89` |
| 4 | `theorem` | [cantorFunctionAux_nonneg](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunctionaux-nonneg--e4c8a5380a5bb25f96ac3a9e.md) | 72 | `result-track:e4c8a5380a5bb25f96ac3a9ef040eadfa43f27ecb4f91a69c1ceff857b166315` |
| 5 | `theorem` | [cantorFunctionAux_eq](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunctionaux-eq--c55ac765268260703d5dc0ca.md) | 77 | `result-track:c55ac765268260703d5dc0ca054d8411bee3e76e6383287185b1844047a37472` |
| 6 | `theorem` | [cantorFunctionAux_zero](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunctionaux-zero--35c95b91eefeb0d7c12638dc.md) | 80 | `result-track:35c95b91eefeb0d7c12638dccde35618631c30ea8086ad25f70fa5a4d4599576` |
| 7 | `theorem` | [cantorFunctionAux_succ](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunctionaux-succ--a9751831297bce2c9a70d708.md) | 83 | `result-track:a9751831297bce2c9a70d708e7eb81bf5ad98d5199ba19da9b5315dbf6a9ad6e` |
| 8 | `theorem` | [summable_cantor_function](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/summable-cantor-function--893def016173138dff06aa0a.md) | 89 | `result-track:893def016173138dff06aa0a26622213ac4cab72239aa617e0856dae89d78ff0` |
| 9 | `def` | [cantorFunction](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunction--305f26307368e5531370ea61.md) | 96 | `declaration-track:305f26307368e5531370ea611b920807fd0e69c3b1ca4168789c4f066d24b8aa` |
| 10 | `theorem` | [cantorFunction_le](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunction-le--a148a0300516062de55c480b.md) | 99 | `result-track:a148a0300516062de55c480b3d4a9ab60626a8b809f1f3e218d9f437a55bef20` |
| 11 | `theorem` | [cantorFunction_succ](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunction-succ--c8cbe94c1fe97a717e695d4c.md) | 106 | `result-track:c8cbe94c1fe97a717e695d4c6172f4e39a5f849395c8bbe48fb7d92e6efe931f` |
| 12 | `theorem` | [increasing_cantorFunction](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/increasing-cantorfunction--1bb59d6c17d6112dad041937.md) | 114 | `result-track:1bb59d6c17d6112dad041937b182ef6644f0c828993b2efbc2dcf37ebc3ea277` |
| 13 | `theorem` | [cantorFunction_injective](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/cantorfunction-injective--93fcfd887779f379ae5efd5d.md) | 159 | `result-track:93fcfd887779f379ae5efd5dde86c87d32588197f3d96219ee060fb17c2d4ade` |
| 14 | `theorem` | [mk_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-real--4ee66b15a2ef192ca26b0dd2.md) | 185 | `result-track:4ee66b15a2ef192ca26b0dd21bb11a159e9b0b2cbcc026c24d7b4de3eeda2722` |
| 15 | `theorem` | [mk_univ_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-univ-real--0fb7c4d7aa7d6923b051a31e.md) | 198 | `result-track:0fb7c4d7aa7d6923b051a31e1a69a762ca4b8cdc6bb54321e5455de102906179` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/instance--9adb365614c47450e48004fb.md) | 201 | `declaration-track:9adb365614c47450e48004fbb9b7a82dcf9d665e6d2e7ee7772414e8a2789405` |
| 17 | `theorem` | [not_countable_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/not-countable-real--d648cf3e9b0edd33a5b80c60.md) | 205 | `result-track:d648cf3e9b0edd33a5b80c60c793df8fd3d2812de64aa12ef45321450e94ab3f` |
| 18 | `theorem` | [mk_Ioi_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-ioi-real--b9e13e8e14de5a677b82101c.md) | 209 | `result-track:b9e13e8e14de5a677b82101cfd2c1162722737cc9e244b82dc2f5c300c91d8a9` |
| 19 | `theorem` | [mk_Ici_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-ici-real--66ba268b9b59ca512ee21755.md) | 229 | `result-track:66ba268b9b59ca512ee217556317aae5cc77f2e79944e31ccc3ed14a44e336b2` |
| 20 | `theorem` | [mk_Iio_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-iio-real--1c8811f982ef8cb24fba0f7a.md) | 233 | `result-track:1c8811f982ef8cb24fba0f7a117f121cf8c547bdb09be38132d393439a3dcc3c` |
| 21 | `theorem` | [mk_Iic_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-iic-real--f240a64d79d42bb48c860b30.md) | 240 | `result-track:f240a64d79d42bb48c860b307380641753841f46beca4d74354cc9dfb620b907` |
| 22 | `theorem` | [mk_Ioo_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-ioo-real--8e55507f1e1645d693909e41.md) | 244 | `result-track:8e55507f1e1645d693909e4104d0832d09c17df5e340c0ceaaa1926dda168ea9` |
| 23 | `theorem` | [mk_Ico_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-ico-real--3f5cf2e7f871b5532e033b0d.md) | 255 | `result-track:3f5cf2e7f871b5532e033b0d11172d40afdba1edf177f7e3a773dcd02987f5b7` |
| 24 | `theorem` | [mk_Icc_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-icc-real--c0d3a85dd6c88f8c98b7671f.md) | 259 | `result-track:c0d3a85dd6c88f8c98b7671f1ca39bcc03dde319b88818728e522f0d34cea4d8` |
| 25 | `theorem` | [mk_Ioc_real](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-ioc-real--76a53649ca4badbaa5885eed.md) | 263 | `result-track:76a53649ca4badbaa5885eed157e437ce6767b808d23f06e868173afa4957490` |
| 26 | `theorem` | [mk_unitInterval](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/mk-unitinterval--1c39205423710e5e830b5026.md) | 267 | `result-track:1c39205423710e5e830b50265b6cabcf886ce6196c0870500974dd9941c44259` |
| 27 | `lemma` | [Real.Ioo_countable_iff](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/real-ioo-countable-iff--56c847dab0af968fbf97c57a.md) | 271 | `result-track:56c847dab0af968fbf97c57adb70729a5134f4380320d76bf9eea31b92710d0a` |
| 28 | `lemma` | [Real.Ico_countable_iff](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/real-ico-countable-iff--98a858f30e1acfdd226ed0fd.md) | 279 | `result-track:98a858f30e1acfdd226ed0fd8471bbac8a7b787420795ad8c18e8251a03df58d` |
| 29 | `lemma` | [Real.Ioc_countable_iff](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/real-ioc-countable-iff--04fb7d740ed4de39c1a37b0c.md) | 287 | `result-track:04fb7d740ed4de39c1a37b0cf5404f91c536a7063770635ba661766f76170e5d` |
| 30 | `lemma` | [Real.Icc_countable_iff](../../../../mathematics/Analysis/Cardinality/Variant63ad27f19cecd23e8cbe780b4c46b806f7917a85441fe8971473b3100f5aac21.lean/declarations/real-icc-countable-iff--ffea48effa9fa2807f60d17c.md) | 295 | `result-track:ffea48effa9fa2807f60d17c6b9948f603e98ef70bd7b7b105f0d47789782753` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
