# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalEmb.Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dbab19a9316004f4441c12387bca76f7ae0de9d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dbab19a9316004f4441c12387bca76f7ae0de9d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wellOrderedBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/wellorderedbasis--c57f84eec945f3e542ee3ac1.md) | 97 | `declaration-track:c57f84eec945f3e542ee3ac14d1ea0bc84c6932d3de46bd9dff6e70d5c653d01` |
| 2 | `theorem` | [adjoin_basis_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/adjoin-basis-eq-top--d8df40965fc2d49d978b4566.md) | 106 | `result-track:d8df40965fc2d49d978b4566763174ce166aa4dd56506f25e53639adb7fdc24e` |
| 3 | `lemma` | [noMaxOrder_rank_toType](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/nomaxorder-rank-totype--ebc4e00051edd8f3f939d9ca.md) | 114 | `result-track:ebc4e00051edd8f3f939d9ca62066fa33f9afb73349c92aae81e2358c8c6d4db` |
| 4 | `def` | [leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/leastext--ffbe90222c2ed05d004b8009.md) | 124 | `declaration-track:ffbe90222c2ed05d004b800944b51e9286331dfcc4992b5704850697c24f8b58` |
| 5 | `theorem` | [isLeast_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/isleast-leastext--758cc001bdd83cb0da6f0cfb.md) | 151 | `result-track:758cc001bdd83cb0da6f0cfbeba90405e0a289ceb0ea256f06f4be58b5da57ee` |
| 6 | `theorem` | [strictMono_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/strictmono-leastext--6442e09c6db1f3abaf454361.md) | 155 | `result-track:6442e09c6db1f3abaf45436139dde736120a6d927fbf2486bc26a2ec69157ef1` |
| 7 | `theorem` | [adjoin_image_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/adjoin-image-leastext--96cdbc1117037c18d12eba05.md) | 163 | `result-track:96cdbc1117037c18d12eba0575810b12e5e6f6aebca9cd23f5459839c8f05cb0` |
| 8 | `theorem` | [iSup_adjoin_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/isup-adjoin-eq-top--b43fb1038f0ab7fa7425a67e.md) | 168 | `result-track:b43fb1038f0ab7fa7425a67e797c859e3a9ed84335f30f82b9f23b65b53d3da7` |
| 9 | `theorem` | [strictMono_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/strictmono-filtration--90cebcfc596bc40e76472e9f.md) | 174 | `result-track:90cebcfc596bc40e76472e9f97bcfa06b3b1ff9e41108d48353e7de69fef8889` |
| 10 | `theorem` | [filtration_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/filtration-succ--d492f96a35bec59c2ef1a72f.md) | 178 | `result-track:d492f96a35bec59c2ef1a72f25ee3eb48dac51ca1e8ea251db15b6fc53bd0761` |
| 11 | `def` | [succEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/succequiv--49f08957e400d3403d638a48.md) | 184 | `declaration-track:49f08957e400d3403d638a48f1ab5bedb7f2687ef93caf18bcbf2403bc7e0466` |
| 12 | `theorem` | [succEquiv_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/succequiv-coherence--e442787806343c0969564173.md) | 190 | `result-track:e442787806343c09695641730e415e7a78232dcfec12afb2d03562f2204e756b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/instance--cb944f05b6c0749e2a4593bc.md) | 195 | `declaration-track:cb944f05b6c0749e2a4593bc50eba8233827f066676ebfaea005970a3901f755` |
| 14 | `theorem` | [deg_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/deg-lt-aleph0--93f6ede528c275e85bc20718.md) | 198 | `result-track:93f6ede528c275e85bc20718463a18339ea8261c6d799d27a0f3897122b17c78` |
| 15 | `def` | [filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/filtration--77ae6886e085b1268735152e.md) | 203 | `declaration-track:77ae6886e085b1268735152ed51a40d211df823d5fba8cfb10f8da0052acef42` |
| 16 | `def` | [factor](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/factor--e3e05155c915ff5715a58958.md) | 212 | `declaration-track:e3e05155c915ff5715a5895843f0d5d87eb95f4e306c33a6686af5b144057da1` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/instance--637dd0cf6d1069e85abd8c9a.md) | 216 | `declaration-track:637dd0cf6d1069e85abd8c9a44b6115f6531d0f76b09594d29ebaca353f6a903` |
| 18 | `theorem` | [two_le_deg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/two-le-deg--7e86d8aba1d328cf66bed7d9.md) | 220 | `result-track:7e86d8aba1d328cf66bed7d9bebe63181567128a05b75cea19df015ec2321d5d` |
| 19 | `def` | [embFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/embfunctor--7358397cb2278784ddf26f5a.md) | 235 | `declaration-track:7358397cb2278784ddf26f5acdff617d314b299b12a13f1f146ae0f2177306d9` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/instance--0f33382677fe25ba0fb74336.md) | 238 | `declaration-track:0f33382677fe25ba0fb74336577575840f9a150d7dc23cb10127ea8b145cca81` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/instance--e1aab65a99896c874655bba8.md) | 243 | `declaration-track:e1aab65a99896c874655bba845362fc2e577d37b8b592f02b5bc3b2154f0ada4` |
| 22 | `def` | [equivSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/equivsucc--8e746ec5b75e9d0ff94ea2a9.md) | 246 | `declaration-track:8e746ec5b75e9d0ff94ea2a9608b246ebd287f52f13ee3231ef8f2f64e96209e` |
| 23 | `theorem` | [equivSucc_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/equivsucc-coherence--3ee4e0466bf7dbae42c1988d.md) | 252 | `result-track:3ee4e0466bf7dbae42c1988d9693ec8102849342a1e8b7c4b97b61c663768422` |
| 24 | `theorem` | [directed_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/directed-filtration--a5a0fb08f493c09c7c64d8cd.md) | 259 | `result-track:a5a0fb08f493c09c7c64d8cdcab437ab1f8d578788a3e13d5bab2a79f94ccaf2` |
| 25 | `theorem` | [iSup_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/isup-filtration--d4c80447bab409f9c550ce0a.md) | 266 | `result-track:d4c80447bab409f9c550ce0aae398913c5069565965dff67a76c27395df0e87e` |
| 26 | `lemma` | [eq_bot_of_not_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/eq-bot-of-not-nonempty--547d815054c45f89ed183b5c.md) | 276 | `result-track:547d815054c45f89ed183b5c60743b71e38be6043b9af3a7be35d10ec232b330` |
| 27 | `def` | [equivLim](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/equivlim--2c2a301d55dda173231eabf2.md) | 286 | `declaration-track:2c2a301d55dda173231eabf279149448a34261c83f2fc761a8abc4152eb628d2` |
| 28 | `theorem` | [equivLim_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/equivlim-coherence--ca57a841d4ceb022761b0f46.md) | 307 | `result-track:ca57a841d4ceb022761b0f46231b0a927e157194c0ce590d445d384ae8eb2bd4` |
| 29 | `def` | [embEquivPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/embequivpi--678c825926d38cdc535e6bc6.md) | 313 | `declaration-track:678c825926d38cdc535e6bc6e2ba255e500ae138370d15824910abd2d3d025eb` |
| 30 | `theorem` | [cardinal_eq_two_pow_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/cardinal-eq-two-pow-rank--d34fa95ed4f8d1eb9fa615eb.md) | 327 | `result-track:d34fa95ed4f8d1eb9fa615ebc6acff7e625c56ed4d018f728d76f5d37bc8cc19` |
| 31 | `theorem` | [cardinal_eq_of_isSeparable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/cardinal-eq-of-isseparable--dfb7669e83e81d285bee4446.md) | 338 | `result-track:dfb7669e83e81d285bee4446661b784269e6578f259f22bb883112a68453cb97` |
| 32 | `theorem` | [cardinal_eq_two_pow_sepDegree](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/cardinal-eq-two-pow-sepdegree--c1c2f60476fe28da051269a4.md) | 346 | `result-track:c1c2f60476fe28da051269a4ad9a6e5bcc1c800d4b7dd64af628328eb2a00ada` |
| 33 | `theorem` | [cardinal_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/declarations/cardinal-eq--9ad140c88eeaff3dd15dcb50.md) | 351 | `result-track:9ad140c88eeaff3dd15dcb5016f8ca292103ff7c27697a12736d263b75463528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
