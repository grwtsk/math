# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8868bed89a0659ba9a97e35d3e56a2d82074ec1e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8868bed89a0659ba9a97e35d3e56a2d82074ec1e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Order` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dfinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/dfinsupp--5f41a1ad4d7bd6fd89031025.md) | 39 | `declaration-track:5f41a1ad4d7bd6fd8903102500aff9316210f0b99268bba4d2d5ce675fcf44fa` |
| 2 | `theorem` | [card_dfinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-dfinsupp--9e9c751c6fad25cda37afe1d.md) | 47 | `result-track:9e9c751c6fad25cda37afe1d4766a0b84e27704a53be5e75d941c1230a8442e4` |
| 3 | `theorem` | [mem_dfinsupp_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/mem-dfinsupp-iff--6822a4077b2a24bbc6fb9f39.md) | 52 | `result-track:6822a4077b2a24bbc6fb9f39e4ec9e12e196669c7d561f827145d448944c51d7` |
| 4 | `theorem` | [mem_dfinsupp_iff_of_support_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/mem-dfinsupp-iff-of-support-subset--4a3cba0c8b9bad2e7f59922c.md) | 67 | `result-track:4a3cba0c8b9bad2e7f59922c9cf9b4224b44c85ce391b4f889af61f62de2927a` |
| 5 | `def` | [singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/singleton--868c852db9502f7b9e547b32.md) | 89 | `declaration-track:868c852db9502f7b9e547b32390115e39c10a756468990df322b60030a93e445` |
| 6 | `theorem` | [mem_singleton_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/mem-singleton-apply-iff--cef501c169af7faa13e8f449.md) | 93 | `result-track:cef501c169af7faa13e8f44996650af6bfec9847e02b81545679d84fa3ce60ef` |
| 7 | `def` | [rangeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/rangeicc--a3ab16761c0c1178b7b647b4.md) | 104 | `declaration-track:a3ab16761c0c1178b7b647b4c4a12d1bc291bd56e4ab103260ccd2a6ad71ffd4` |
| 8 | `theorem` | [rangeIcc_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/rangeicc-apply--205c2a3b5b4e0b444811a0f2.md) | 117 | `result-track:205c2a3b5b4e0b444811a0f25032d9538909f4e883f7a7cb1be0e4c7a618d116` |
| 9 | `theorem` | [mem_rangeIcc_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/mem-rangeicc-apply-iff--bff3dc109953f6b04ab72512.md) | 119 | `result-track:bff3dc109953f6b04ab72512e13eb8207feca727190bffb76c29485adb6babbc` |
| 10 | `theorem` | [support_rangeIcc_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/support-rangeicc-subset--360989460cb36911db421db6.md) | 121 | `result-track:360989460cb36911db421db67375f2a0af6a3a21085992647fac4d2a83991baf` |
| 11 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/pi--f3a0e60395abfb0ab9b72944.md) | 138 | `declaration-track:f3a0e60395abfb0ab9b7294467e06953c57d621aefe7bd7078a682bc280916cc` |
| 12 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/mem-pi--5f069e3742038cc7504df727.md) | 141 | `result-track:5f069e3742038cc7504df727484be31d5ab04a895c26d2b7fbf74186d441512c` |
| 13 | `theorem` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-pi--0d680a06ef73d867dc053510.md) | 145 | `result-track:0d680a06ef73d867dc05351028d94c7b10c604917889be801e6d36f6e0c2db7f` |
| 14 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/instlocallyfiniteorder--b460fe1821374a1c8235eecd.md) | 156 | `declaration-track:b460fe1821374a1c8235eecdd6e0504a2d96bebb3e9212664950aae6e0753d59` |
| 15 | `theorem` | [Icc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/icc-eq--37e5093cb9ac725e1aa7a011.md) | 166 | `result-track:37e5093cb9ac725e1aa7a01198120d3a25935cdbe0248fadf9e270be4b683a43` |
| 16 | `lemma` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-icc--fb5775ab57bb6337964a4fa8.md) | 168 | `result-track:fb5775ab57bb6337964a4fa8ae92a0bf6c14ed490676e3fa9ffd9f10b633f315` |
| 17 | `lemma` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-ico--df45d21059c56cb952c7b732.md) | 171 | `result-track:df45d21059c56cb952c7b732e91f5c7e70bbd3a3c47b643161ed7821cd80bb40` |
| 18 | `lemma` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-ioc--b28b009de3c13d6bf63be275.md) | 174 | `result-track:b28b009de3c13d6bf63be275137c741569fa05af3761731e3d52e0e29f193387` |
| 19 | `lemma` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-ioo--2fe88b84bdb943535de637d2.md) | 177 | `result-track:2fe88b84bdb943535de637d2226747a7a28df57130a52f979a31c1dd4e538023` |
| 20 | `lemma` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-uicc--ca95b0617bd383d4f3da7165.md) | 186 | `result-track:ca95b0617bd383d4f3da71655564dff54bbb739588062055847779aa94166b2a` |
| 21 | `lemma` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-iic--5aec599adc64f37753ecca96.md) | 198 | `result-track:5aec599adc64f37753ecca962ead7ac629fecc451035cddf75db46cf1adf5dba` |
| 22 | `lemma` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/declarations/card-iio--4b4533bf1bee9e7a2292d658.md) | 202 | `result-track:4b4533bf1bee9e7a2292d658e9d7b2d0392bf899e39d554eb3e04ae59694ed76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
