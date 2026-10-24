# Verification target: GRWTSK.NumberTheory.Farey.FareyResidueChannelDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4df2cbea5643fb95614ac2ed9b19ed9daaac428",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4df2cbea5643fb95614ac2ed9b19ed9daaac428`.

Source path: `GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/FareyResidueChannelDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge`](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.NumberTheory.DirichletCharacter.Orthogonality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [additiveResidueSelector](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/additiveresidueselector--552fb2295f90dac4412cc52d.md) | 50 | `declaration-track:552fb2295f90dac4412cc52db3df6e5ca7213a8d4a891f0c83027242f40059cf` |
| 2 | `theorem` | [additiveResidueSelector_eq_indicator](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/additiveresidueselector-eq-indicator--7f80cffe7c75b9b7261c2c58.md) | 54 | `result-track:7f80cffe7c75b9b7261c2c58cca6f7ba2f1950a176648c662a77cd1806952ac7` |
| 3 | `def` | [residueGCD](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/residuegcd--b8036994b960dd8f5a268bb8.md) | 62 | `declaration-track:b8036994b960dd8f5a268bb82fcdde599e18ba87572f226361e546d382fc89ef` |
| 4 | `theorem` | [residueGCD_dvd_modulus](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/residuegcd-dvd-modulus--4ddf26db25ba2cfb8c4443e6.md) | 66 | `result-track:4ddf26db25ba2cfb8c4443e695d8dcae579f0de4fd058948f774882ed13f9de4` |
| 5 | `theorem` | [residueGCD_pos](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/residuegcd-pos--9c12ae7a7814dcc8114a9772.md) | 71 | `result-track:9c12ae7a7814dcc8114a977288924e11b8853533c08e03948ef0803a3ea4cb68` |
| 6 | `theorem` | [residueGCD_eq_one_iff_isUnit](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/residuegcd-eq-one-iff-isunit--2e88da530dd006efd4212567.md) | 77 | `result-track:2e88da530dd006efd42125671c82bdffcb79a5f54ed4aba504dc48036f15fe6f` |
| 7 | `def` | [gcdStratumPart](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/gcdstratumpart--034215cc16ae8016fa0cb840.md) | 92 | `declaration-track:034215cc16ae8016fa0cb840f217b8895139d6a645c0ee8d4df61d18178439ca` |
| 8 | `theorem` | [residueGCD_mem_divisors](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/residuegcd-mem-divisors--97617a06994d09b8bea63b85.md) | 96 | `result-track:97617a06994d09b8bea63b85f177fbd66900d53b9fafe4f508529a079b439c06` |
| 9 | `theorem` | [sum_gcdStratumPart_apply](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/sum-gcdstratumpart-apply--896f8385552163e1e8074155.md) | 101 | `result-track:896f8385552163e1e80741552a97f7724cff7a355f8b1b89bf95b01bded2d847` |
| 10 | `theorem` | [sum_gcdStratumPart](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/sum-gcdstratumpart--84cf2597beddc71d15e0086f.md) | 116 | `result-track:84cf2597beddc71d15e0086f8e6914d400de37acacaa78063f42d4cc655e3acd` |
| 11 | `def` | [reducedResidueRepresentative](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/reducedresiduerepresentative--827e5626bc6566cc4e28fe87.md) | 122 | `declaration-track:827e5626bc6566cc4e28fe87e133ec6c12fa721879f1a9ca88e7085a3cdcb3a1` |
| 12 | `theorem` | [reducedResidueRepresentative_coprime](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/reducedresiduerepresentative-coprime--d28bfa0b91dcfb2de944c6ee.md) | 126 | `result-track:d28bfa0b91dcfb2de944c6eeb9cf7bfcd53f31aef5018ab5891a9fa94e35cc77` |
| 13 | `def` | [reducedResidueUnit](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/reducedresidueunit--8f8a88ff13a75b09b90fdb9d.md) | 137 | `declaration-track:8f8a88ff13a75b09b90fdb9df5365c9807741f7a2a2cf8785217ab5e7bdfc046` |
| 14 | `theorem` | [residueGCD_mul_reducedResidueRepresentative](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/residuegcd-mul-reducedresiduerepresentative--eb5f3e67a635682207ee01fd.md) | 143 | `result-track:eb5f3e67a635682207ee01fdd84abe1e8c29f2cfa6bb7959fde0135f9c4c030f` |
| 15 | `theorem` | [cast_residueGCD_mul_reducedResidueRepresentative](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/cast-residuegcd-mul-reducedresiduerepresentative--96425c2fa993bd4acee54b00.md) | 151 | `result-track:96425c2fa993bd4acee54b00878ffea6c30e8b1291c9fd1a1012e0ac83004cc6` |
| 16 | `def` | [unitCharacterSum](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/unitcharactersum--b11a91bfe75aa31acd490e03.md) | 159 | `declaration-track:b11a91bfe75aa31acd490e0384c04def9b98d077c4710de4acc747cc188fca59` |
| 17 | `theorem` | [unitCharacterSum_eq_totient_mul_selector](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/unitcharactersum-eq-totient-mul-selector--207c60a32e3d0f716aa1d7f3.md) | 164 | `result-track:207c60a32e3d0f716aa1d7f3422dc83e7591853ae4da73c154c59f2a954628ad` |
| 18 | `def` | [unitCharacterCarrier](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/unitcharactercarrier--e3db7bbe7c66a1c848d2bb9f.md) | 182 | `declaration-track:e3db7bbe7c66a1c848d2bb9fdf55dfe1fc3c4950caea5ac9f89ffd3fb769f46d` |
| 19 | `def` | [nonunitAdditiveResidual](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/nonunitadditiveresidual--10f0a5632b0c43821541f755.md) | 187 | `declaration-track:10f0a5632b0c43821541f75547fb1a3243893c14edfc5793b96a4d3c171784b1` |
| 20 | `theorem` | [scaled_selector_channels](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/scaled-selector-channels--982cde3cb78b58b98d9cd8e5.md) | 194 | `result-track:982cde3cb78b58b98d9cd8e59d6390957f76357aa55c5d5d31ab667778ededc9` |
| 21 | `theorem` | [nonunit_residual_on_diagonal](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/nonunit-residual-on-diagonal--006d406d8fd5e43260391b40.md) | 205 | `result-track:006d406d8fd5e43260391b404f5c2d81c8a317682ef86518e00b4ea009c58950` |
| 22 | `theorem` | [dirichlet_sum_zero_of_nonunit](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/dirichlet-sum-zero-of-nonunit--519c60d1433976cf8c405b78.md) | 212 | `result-track:519c60d1433976cf8c405b78314c3b7ccbdf0fc71e24c3a82359c423caf49a09` |
| 23 | `theorem` | [no_pure_dirichlet_expansion_of_nonunit](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/no-pure-dirichlet-expansion-of-nonunit--5f9bc178b58534f224bd6c76.md) | 222 | `result-track:5f9bc178b58534f224bd6c76cff15e481b4a2b0bba509d9c5df42d01681f8664` |
| 24 | `theorem` | [farey_right_coordinate_channels](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/farey-right-coordinate-channels--b5f11fee5e1150f7cb917e95.md) | 236 | `result-track:b5f11fee5e1150f7cb917e95959b3209ee0dbf537bcd6bdb22f46243bf0eabc7` |
| 25 | `def` | [nonunitFareyRightResidue](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/nonunitfareyrightresidue--e9a8bccb899c3671405e37a7.md) | 247 | `declaration-track:e9a8bccb899c3671405e37a76a92b18972d6d0157b0170593000c3b47f927f1a` |
| 26 | `theorem` | [nonunitFareyRightResidue_nonunit](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/nonunitfareyrightresidue-nonunit--17a2651a4be3ab558e6f8524.md) | 250 | `result-track:17a2651a4be3ab558e6f85241ffaaef6f1cd928a55710218ad800b54bf02ed28` |
| 27 | `theorem` | [farey_nonunit_channel_certificate](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/declarations/farey-nonunit-channel-certificate--5f1df395215dd6c81b0c649b.md) | 258 | `result-track:5f1df395215dd6c81b0c649bc9650a6f7204c3e13a396914be376d2b9d03d9c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
