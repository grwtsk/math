# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.MeasurePreserving.Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ff36500029d68c3e914b38339465877da27e699",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ff36500029d68c3e914b38339465877da27e699`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AEMeasurable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.EventuallyConst` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/measurepreserving--ce95ef749e15eb8ffcfc98da.md) | 41 | `declaration-track:ce95ef749e15eb8ffcfc98da236938b97edd10e452abe60f7f908a67bcbf5b36` |
| 2 | `theorem` | [_root_.Measurable.measurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/root-measurable-measurepreserving--c68477a82c718bebe4e11b7e.md) | 46 | `result-track:c68477a82c718bebe4e11b7e1214bb6ecf717b915263ca0f913de2f880537fb9` |
| 3 | `theorem` | [id](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/id--1eec76fb9725b6b19bd71b04.md) | 52 | `result-track:1eec76fb9725b6b19bd71b04398736ecf28a50709891fdee580c266afb2be7ff` |
| 4 | `theorem` | [aemeasurable](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/aemeasurable--ee8b6fbe0992dd3f45a04da3.md) | 55 | `result-track:ee8b6fbe0992dd3f45a04da3787b1296e8a2528b7233be2032295a817ff4387f` |
| 5 | `theorem` | [of_isEmpty](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/of-isempty--e49bf81fecf5bc14fb3414b4.md) | 59 | `result-track:e49bf81fecf5bc14fb3414b4b4f5b22b1e57e9842be5cbec0f00821a1ba86d39` |
| 6 | `theorem` | [symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/symm--a7329ee197d781e8ef8bdd7e.md) | 63 | `result-track:a7329ee197d781e8ef8bdd7edf43d7d0c9b6187111c649fed8661edecc9b3b97` |
| 7 | `theorem` | [restrict_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/restrict-preimage--7c72325f8f21f3d982c96b5a.md) | 68 | `result-track:7c72325f8f21f3d982c96b5aaa158f08c130f3e256ee0bfeab1f92719e3c3987` |
| 8 | `theorem` | [restrict_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/restrict-preimage-emb--eaf9d1b47340ce7da6645a53.md) | 72 | `result-track:eaf9d1b47340ce7da6645a53fd0edd15d5521e77cd9c696d84b75c640ae873f0` |
| 9 | `theorem` | [restrict_image_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/restrict-image-emb--5375c144f218c258133dcefd.md) | 77 | `result-track:5375c144f218c258133dcefd4a62e4c9856f68595709d51c6d5c67d1169423d2` |
| 10 | `theorem` | [aemeasurable_comp_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/aemeasurable-comp-iff--2ac0d33dc2c585b6f29ec01b.md) | 81 | `result-track:2ac0d33dc2c585b6f29ec01ba50f20b7e3d6759629484227230eb87411073d96` |
| 11 | `theorem` | [quasiMeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/quasimeasurepreserving--c008f33e115d7d174bb0972a.md) | 85 | `result-track:c008f33e115d7d174bb0972a3001fef6700ab561309012c3198c7db1b4d6feed` |
| 12 | `theorem` | [comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/comp--2ca5fc401650f52686eae3c4.md) | 89 | `result-track:2ca5fc401650f52686eae3c43d19fdd17225fdbf5ed487206ee745282f089c81` |
| 13 | `theorem` | [trans](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/trans--50943f095d56650bdcfd910f.md) | 95 | `result-track:50943f095d56650bdcfd910f6268c80c8e944b307c5b2b397d48a44fcfd327d8` |
| 14 | `theorem` | [comp_left_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/comp-left-iff--324860eda1733dc2f93eb701.md) | 101 | `result-track:324860eda1733dc2f93eb7018c9303b52b5ab80f67383cd551f6465e4233c3a2` |
| 15 | `theorem` | [comp_right_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/comp-right-iff--767cb24c51110002e770ed72.md) | 107 | `result-track:767cb24c51110002e770ed728c7171488fa1c5455f2ba513b44a0bb8ed058248` |
| 16 | `theorem` | [sigmaFinite](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/sigmafinite--1cf17dc6cce84b8b25b46408.md) | 113 | `result-track:1cf17dc6cce84b8b25b46408c4769d472c4dc88b19d0ac88fa25d1f46fcc61d5` |
| 17 | `theorem` | [sfinite](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/sfinite--85328fb87132f9310549e6be.md) | 117 | `result-track:85328fb87132f9310549e6be902458ec14c52490d28903d739e7d0a230c69add` |
| 18 | `theorem` | [measure_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/measure-preimage--2af6db7816676450cf63750c.md) | 122 | `result-track:2af6db7816676450cf63750c0f1cfce7100113dc01e349ddfb2b87b9b4a7435e` |
| 19 | `theorem` | [measureReal_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/measurereal-preimage--1bbffca1f8e6538d3b86a0e8.md) | 127 | `result-track:1bbffca1f8e6538d3b86a0e89380a551a24820d9629705475b866001bdb4d04c` |
| 20 | `theorem` | [measure_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/measure-preimage-emb--9994e9b64ec9c7034c6286ec.md) | 131 | `result-track:9994e9b64ec9c7034c6286ec98b02e35be2b96e36969fcf0474b42b98fd8978a` |
| 21 | `theorem` | [measure_preimage_equiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/measure-preimage-equiv--8bd3bc19670faad62e175243.md) | 135 | `result-track:8bd3bc19670faad62e175243b5eae5324c197066edc5770fd8f1ef469b1a9fad` |
| 22 | `theorem` | [measure_preimage_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/measure-preimage-le--0f0b70ac71c7d43091ab92d4.md) | 139 | `result-track:0f0b70ac71c7d43091ab92d46d6009f2663ff36c6c0ff2b529edfe2cda2bbd4d` |
| 23 | `theorem` | [preimage_null](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/preimage-null--c3cbdfefd63d8f05a4bfce8f.md) | 144 | `result-track:c3cbdfefd63d8f05a4bfce8ffe8377c751c1ffcd2db709486406c4bdcd9de465` |
| 24 | `theorem` | [aeconst_comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/aeconst-comp--e19f6dc4d4ca00a0891086b0.md) | 148 | `result-track:e19f6dc4d4ca00a0891086b0fc9e6a8613bc496fde30a1913f3a6b4851d070eb` |
| 25 | `theorem` | [aeconst_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/aeconst-preimage--f3bc76ecc77ee2315ca548cc.md) | 155 | `result-track:f3bc76ecc77ee2315ca548cc1a127ab26f606f7e080339d59e7216fd9e0b94af` |
| 26 | `theorem` | [add_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/add-measure--c2075f9eaee8040a4cc28ad2.md) | 160 | `result-track:c2075f9eaee8040a4cc28ad26bfa52f7ac1bba43d27074b0207115a66e9a7701` |
| 27 | `theorem` | [smul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/smul-measure--99f6212fc2c4c138e15d09ec.md) | 165 | `result-track:99f6212fc2c4c138e15d09ecc364ad03e11f788e5e2215c9167bc59dc2df416e` |
| 28 | `theorem` | [iterate](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/iterate--3f30156e42f15759e3b21877.md) | 172 | `result-track:3f30156e42f15759e3b218771155d8c2afe289855618551d4f9e141ba82180ef` |
| 29 | `lemma` | [measure_symmDiff_preimage_iterate_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/measure-symmdiff-preimage-iterate-le--ce58fa452b0cc3f7dc36e5ad.md) | 178 | `result-track:ce58fa452b0cc3f7dc36e5ad556d00f83cb26d9dd5d2a776af6d1421123eda3d` |
| 30 | `theorem` | [exists_mem_iterate_mem_of_measure_univ_lt_mul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/exists-mem-iterate-mem-of-measure-univ-lt-mul-measure--c60fa51c2b13a4f0946325f2.md) | 190 | `result-track:c60fa51c2b13a4f0946325f2636867eac744a6a7183b5e438889ad20a6fbcf91` |
| 31 | `theorem` | [exists_mem_iterate_mem](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/exists-mem-iterate-mem--eafa1842230d72d3eac1882b.md) | 209 | `result-track:eafa1842230d72d3eac1882bd61185956c277f809fb3acabd3a58207ffc9fd0e` |
| 32 | `theorem` | [measurePreserving_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.lean/declarations/measurepreserving-symm--f2522fde755773b651da4cda.md) | 219 | `result-track:f2522fde755773b651da4cda6c94f2cd21f18b487d1b54e700725debaceb4b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
