# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Prod.Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd26379d6f2ef60dfb37c1e27bad19fa000f3f64",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd26379d6f2ef60dfb37c1e27bad19fa000f3f64`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.CompProd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.CompMap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prod--069dfcd66bf198c1d387dc64.md) | 55 | `declaration-track:069dfcd66bf198c1d387dc641cec4affd11d0a222e67c20416616a195e33c1d0` |
| 2 | `lemma` | [zero_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/zero-prod--79b484edba9b7f7a7db3e9c7.md) | 62 | `result-track:79b484edba9b7f7a7db3e9c7e75e5a4a6b2573c8cb3be7aa1c217e0b24a56638` |
| 3 | `lemma` | [prod_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prod-zero--19674149195d6c21ef5027fc.md) | 65 | `result-track:19674149195d6c21ef5027fc5515eef3a32ce27235e016e1a7b96772473a82be` |
| 4 | `lemma` | [prod_of_not_isSFiniteKernel_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prod-of-not-issfinitekernel-left--3f95702fc05b00bafcde5eec.md) | 68 | `result-track:3f95702fc05b00bafcde5eec4a80995b1f28556f4b8775b5aeb770893f03f0d6` |
| 5 | `lemma` | [prod_of_not_isSFiniteKernel_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prod-of-not-issfinitekernel-right--510208b90c7709271d415b3d.md) | 73 | `result-track:510208b90c7709271d415b3d8da844dc4e832df99d3f9c5dcb6b55490d7a38f8` |
| 6 | `theorem` | [prod_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prod-apply--c8a87bfbfbdb64b614d9bb3b.md) | 82 | `result-track:c8a87bfbfbdb64b614d9bb3b0a98b270a449a6c40b619df0a41c6e44841fe482` |
| 7 | `lemma` | [prod_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prod-apply--3efdc8cd2332752d3f5fea62.md) | 87 | `result-track:3efdc8cd2332752d3f5fea62a885706e89a3216017b55cb70a6b6c9338f60e32` |
| 8 | `lemma` | [prod_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prod-const--7e10ebbeba1161446e459c14.md) | 93 | `result-track:7e10ebbeba1161446e459c14863d670a815f77b5236d67142ab3ff37e1870646` |
| 9 | `theorem` | [lintegral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/lintegral-prod--8ddb542d1a8fb30414e36a56.md) | 98 | `result-track:8ddb542d1a8fb30414e36a5636a3528b792c267a4d525edc673162ac21672cef` |
| 10 | `theorem` | [lintegral_prod_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/lintegral-prod-symm--fad1d1a2e502128b230e15da.md) | 103 | `result-track:fad1d1a2e502128b230e15da41cbd12489bf63736f93e4946ca7641f3395ce33` |
| 11 | `theorem` | [lintegral_deterministic_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/lintegral-deterministic-prod--7159855ed7581571ad720469.md) | 108 | `result-track:7159855ed7581571ad720469804a0db72c1a4d52f665ad5258942c26dd15a04b` |
| 12 | `theorem` | [lintegral_prod_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/lintegral-prod-deterministic--73b6a558234399179b4ce0fb.md) | 113 | `result-track:73b6a558234399179b4ce0fb2f1a6c9ca7a180712e60f1e5df8583fcccc64bd0` |
| 13 | `theorem` | [lintegral_id_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/lintegral-id-prod--62d7c9f081db6c2eb9ebf54d.md) | 118 | `result-track:62d7c9f081db6c2eb9ebf54da65ac8c7ebf1c4df20596521b7ca2ac22ba8b160` |
| 14 | `theorem` | [lintegral_prod_id](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/lintegral-prod-id--31d6f64f88b8ec656287ba3f.md) | 123 | `result-track:31d6f64f88b8ec656287ba3f068c0b8c92275231434b309e12007a8dad9d325a` |
| 15 | `theorem` | [deterministic_prod_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/deterministic-prod-apply--2d43b4948e52094544804532.md) | 128 | `result-track:2d43b4948e52094544804532cfdd5744bd9853da11e4dae62bc30f3daae6f919` |
| 16 | `theorem` | [id_prod_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/id-prod-apply--fb5dc31b6986a16850955012.md) | 134 | `result-track:fb5dc31b6986a16850955012ad0ff6a8f77ce6c1bb126b817181dfb1971eeb9c` |
| 17 | `instance` | [IsMarkovKernel.prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/ismarkovkernel-prod--bb69e7506e436938ccbbdeb1.md) | 138 | `declaration-track:bb69e7506e436938ccbbdeb1bd4828c87a0f9acb89090fb275195f2d9a82cde1` |
| 18 | `instance` | [IsZeroOrMarkovKernel.prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/iszeroormarkovkernel-prod--402029230cd00a2bfe3283aa.md) | 141 | `declaration-track:402029230cd00a2bfe3283aae08db7bcb2f327df5b60cdb46ff75d233e2bbb33` |
| 19 | `instance` | [IsFiniteKernel.prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/isfinitekernel-prod--7effe1433d98c560d89ae0b5.md) | 149 | `declaration-track:7effe1433d98c560d89ae0b54fd6292dfc2424297e64a259f0200e417aa1bc80` |
| 20 | `instance` | [IsSFiniteKernel.prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/issfinitekernel-prod--951285defd763eb643565c3b.md) | 152 | `declaration-track:951285defd763eb643565c3b16c9076a36d7994807f623e5aa8e851a78ffe04b` |
| 21 | `lemma` | [fst_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/fst-prod--7be999f0241d645bdb483378.md) | 155 | `result-track:7be999f0241d645bdb483378e0e798cf5070d35c6af388db48c96d366c1c1433` |
| 22 | `lemma` | [snd_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/snd-prod--d593485b2f4375a3d43659fb.md) | 159 | `result-track:d593485b2f4375a3d43659fbf8cf6c91f455a09708ded6d872bdf0eaec575b57` |
| 23 | `lemma` | [comap_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/comap-prod--7693c93a4c7159bfd632d465.md) | 163 | `result-track:7693c93a4c7159bfd632d46561c9c532b9a1c596d45bd877be003148a1f3060f` |
| 24 | `lemma` | [map_prod_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/map-prod-map--dc3768f7d260a54900d74728.md) | 169 | `result-track:dc3768f7d260a54900d74728e70b219e62eb4b71bde454cc48205605193d9dbe` |
| 25 | `lemma` | [map_prod_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/map-prod-eq--5d8fc91b6190bb05d837543c.md) | 176 | `result-track:5d8fc91b6190bb05d837543c8dd057e89fdd68cb2406fc2e1b3eef156d7c8784` |
| 26 | `lemma` | [comap_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/comap-prod-swap--d326831003d5fd383c4d11c9.md) | 180 | `result-track:d326831003d5fd383c4d11c9d170d5f5d0838533cd961ee66cc51ff08f0f7708` |
| 27 | `lemma` | [map_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/map-prod-swap--4e98c1920d59b655b9b5d4c1.md) | 193 | `result-track:4e98c1920d59b655b9b5d4c153273f6a6e845a27373320899e5d621f46668dbb` |
| 28 | `lemma` | [swap_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/swap-prod--f189b17ea7e2efefacdd5756.md) | 203 | `result-track:f189b17ea7e2efefacdd57569a6bdaf6e1b68fdfdfd62cab2273c70cf16ca848` |
| 29 | `lemma` | [deterministic_prod_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/deterministic-prod-deterministic--376229f10d4df00eda7c00ce.md) | 207 | `result-track:376229f10d4df00eda7c00ce6333b08b9962f78421bdc774737756993baeec11` |
| 30 | `lemma` | [id_prod_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/id-prod-eq--da872f33db9007196af7dc14.md) | 213 | `result-track:da872f33db9007196af7dc146556b05a653786ccfecebc72ad69985826766f45` |
| 31 | `theorem` | [comp_eq_snd_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/comp-eq-snd-compprod--5782750ffa9f3fea9b2c0d99.md) | 218 | `result-track:5782750ffa9f3fea9b2c0d99c928da7d2fd05b633d59d8b5ad538567f1a21980` |
| 32 | `lemma` | [snd_compProd_prodMkLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/snd-compprod-prodmkleft--658dd5c389fc6655846c42ed.md) | 226 | `result-track:658dd5c389fc6655846c42edfbe4c5dd2779b5009f59b59dcb2bb12177eb1f97` |
| 33 | `lemma` | [compProd_prodMkLeft_eq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/compprod-prodmkleft-eq-comp--631e10ed10249c6cf7fab9d6.md) | 234 | `result-track:631e10ed10249c6cf7fab9d6db81cc8de72f1d2807d8bbb16be935bde7e993d7` |
| 34 | `lemma` | [prodAssoc_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prodassoc-prod--1d1189b94758b3b2a13a3ded.md) | 246 | `result-track:1d1189b94758b3b2a13a3dedbe605d14a7a3f96c5b679d98748a6060c00980cf` |
| 35 | `lemma` | [prod_const_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/prod-const-comp--6d88284f42725af9f4841090.md) | 253 | `result-track:6d88284f42725af9f484109002902a15a134eaee6893e63da28dbc2c0847b04b` |
| 36 | `lemma` | [const_prod_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant0fb7795c6924682e4002a6740b7f4b10b8e4e87b7e844d9c3dc7089fb57142e2.lean/declarations/const-prod-comp--20b4f7e8b2ad6bc6d2973dc4.md) | 260 | `result-track:20b4f7e8b2ad6bc6d2973dc40fdf227ccf04b695c1139e8125e77948f4a33c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
