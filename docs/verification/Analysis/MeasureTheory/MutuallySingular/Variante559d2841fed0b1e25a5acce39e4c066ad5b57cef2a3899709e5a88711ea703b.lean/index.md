# Verification target: GRWTSK.Analysis.MeasureTheory.MutuallySingular.Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49ec7d49b0b1d2fcfb39c474478a828b6f3a3f30",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49ec7d49b0b1d2fcfb39c474478a828b6f3a3f30`.

Source path: `GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Restrict` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mutuallysingular--cd99b65ba8a0fbd4fe4a64d3.md) | 45 | `declaration-track:cd99b65ba8a0fbd4fe4a64d3aaf6e1f47183ccb6c769e66ee6f284407ecd8046` |
| 2 | `theorem` | [mk](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mk--7b5829b459b36842dc370233.md) | 53 | `result-track:7b5829b459b36842dc370233d6bc435a9d51ae4793e0892bca9b578ce98d483f` |
| 3 | `def` | [nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/nullset--8e8b0a1ed69bde0d3f7de7fc.md) | 60 | `declaration-track:8e8b0a1ed69bde0d3f7de7fc85d5c0400e5897d689b30e185bc092819299aee0` |
| 4 | `lemma` | [measurableSet_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/measurableset-nullset--8f65198bfd7426ce4505c25f.md) | 62 | `result-track:8f65198bfd7426ce4505c25fe01c2fb68a1c981f164e3b0e8c66858d2fa844fb` |
| 5 | `lemma` | [measure_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/measure-nullset--3be9bd74753217d7f495b9e8.md) | 65 | `result-track:3be9bd74753217d7f495b9e8931349d9d79293f9eb836a349288d2e5ce1c063d` |
| 6 | `lemma` | [measure_compl_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/measure-compl-nullset--72957b84b543dfd614cbd2f9.md) | 68 | `result-track:72957b84b543dfd614cbd2f93ba8dd199986607c9554692a29360579f5a104a6` |
| 7 | `lemma` | [restrict_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/restrict-nullset--f708a3ee22ff5219e0c8469c.md) | 73 | `result-track:f708a3ee22ff5219e0c8469c202383a538867d8e87401a991e6ed055cb1e5290` |
| 8 | `lemma` | [restrict_compl_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/restrict-compl-nullset--54ea2e7fff8862a11a449b64.md) | 78 | `result-track:54ea2e7fff8862a11a449b640f6398bef95eea3b0d6ba27787d393256d5d49b7` |
| 9 | `theorem` | [zero_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/zero-right--56041f0671c26810edd097b7.md) | 81 | `result-track:56041f0671c26810edd097b764639ab086436aee56ad200fdb6de1b590fda39e` |
| 10 | `theorem` | [symm](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/symm--061d06050dc866bca12b12fc.md) | 85 | `result-track:061d06050dc866bca12b12fc884b2184282a71d6b37a082c41f63a57938ba98b` |
| 11 | `theorem` | [comm](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/comm--d77fc56d74061a4b02c72280.md) | 89 | `result-track:d77fc56d74061a4b02c72280894d380787412a7011c596445b78c5b4e164ee97` |
| 12 | `theorem` | [zero_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/zero-left--7d6722bd7bea39d27570ab38.md) | 93 | `result-track:7d6722bd7bea39d27570ab382e448ad09e140ee4b5c4f16fd803ad7675d927bd` |
| 13 | `theorem` | [mono_ac](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mono-ac--518c20c8e97fa7ed09c715b7.md) | 96 | `result-track:518c20c8e97fa7ed09c715b7115a31d328628772652ca6c18dd66299cc169349` |
| 14 | `lemma` | [congr_ac](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/congr-ac--1f974d4b6e624d6b191f8bda.md) | 100 | `result-track:1f974d4b6e624d6b191f8bda03125501c865eeafbf4253cd1cf30083bf6b7d86` |
| 15 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mono--b952995f0cadde8e26a421e4.md) | 104 | `result-track:b952995f0cadde8e26a421e42593b4d69c0edc14cc788d74037d3b6b34cd7b6b` |
| 16 | `lemma` | [self_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/self-iff--2b2baa3d1dc3e6736ce6642c.md) | 108 | `result-track:2b2baa3d1dc3e6736ce6642cdd276cdf7ada46ffe6301b036a5ee76bc966a5ac` |
| 17 | `theorem` | [sum_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/sum-left--5ad82b0df7638b64e0eac767.md) | 116 | `result-track:5ad82b0df7638b64e0eac767c7ad2c7934a36de30e31043790a44ed9b70fe01f` |
| 18 | `theorem` | [sum_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/sum-right--eeeaf5efa363744f36906d2d.md) | 125 | `result-track:eeeaf5efa363744f36906d2d4d3c44d6e514a25bd9824eb5ccf0f56c7b84f522` |
| 19 | `theorem` | [add_left_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/add-left-iff--e329a04fa16b968456558211.md) | 129 | `result-track:e329a04fa16b9684565582115969f987e5a6f8b3b9ad37f607ac1cebef97cb03` |
| 20 | `theorem` | [add_right_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/add-right-iff--202718cac2db2bb72152857c.md) | 133 | `result-track:202718cac2db2bb72152857ca5760fd57b34ad6b96ee2eca889be4950cfc1e76` |
| 21 | `theorem` | [add_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/add-left--bbeb5cc56f8a0be8a2c5e5d3.md) | 136 | `result-track:bbeb5cc56f8a0be8a2c5e5d3aebb4338a7c180396933773ebd52587d7ac967da` |
| 22 | `theorem` | [add_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/add-right--112ab7004b7dde91cb5e32fe.md) | 139 | `result-track:112ab7004b7dde91cb5e32fecac3b8f32efe44cc4d2db11294688d23f814139e` |
| 23 | `theorem` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/smul--b497539ac1297451d092d733.md) | 142 | `result-track:b497539ac1297451d092d7339c1fab5b9c02f614cd6e8c5300764ba6a43c1eed` |
| 24 | `theorem` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/smul-nnreal--25f68077b3448d28f6997814.md) | 145 | `result-track:25f68077b3448d28f69978142e601f0ffa549ba6fc41327f5a5e836f48328c4a` |
| 25 | `lemma` | [restrict](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/restrict--2ee2ca8eae017bfddb01508a.md) | 148 | `result-track:2ee2ca8eae017bfddb01508a5eb07f9c0e8c84154ee95e1df2139bf527990782` |
| 26 | `lemma` | [eq_zero_of_absolutelyContinuous_of_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/eq-zero-of-absolutelycontinuous-of-mutuallysingular--612d37dabc4ba890f7803e0b.md) | 155 | `result-track:612d37dabc4ba890f7803e0bb37d3e7e0bcccfb1280cef6eac0d408cb0cd7792` |
| 27 | `lemma` | [absolutelyContinuous_of_add_of_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/absolutelycontinuous-of-add-of-mutuallysingular--01d72c421909e51f9fbc42d1.md) | 161 | `result-track:01d72c421909e51f9fbc42d1719dddef8c5f08b4d13ed71a2bbb6bab65b6e4a2` |
| 28 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.MutuallySingular.Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.MeasurableEmbedding.mutuallySingular_map](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/root-grwtsk-analysis-measuretheory-mutuallysingular-variant6a847320f66c6--2fb0a54e3921e28dc72dac36.md) | 178 | `result-track:2fb0a54e3921e28dc72dac36ce2a112cc09a7c8982591a16f608b0764e1e37b9` |
| 29 | `lemma` | [exists_null_set_measure_lt_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/exists-null-set-measure-lt-of-disjoint--8c0f9c8e4e968c113a248804.md) | 185 | `result-track:8c0f9c8e4e968c113a248804b0d1eae81029396ca83807a6d9d7f81fbce3189f` |
| 30 | `lemma` | [mutuallySingular_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mutuallysingular-of-disjoint--9745dd66391e6774b001f27b.md) | 208 | `result-track:9745dd66391e6774b001f27b341da987a56fc98a429ad55ea2aa32e0a0fa9749` |
| 31 | `lemma` | [MutuallySingular.disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mutuallysingular-disjoint--a2270207a931074a2617a2fe.md) | 227 | `result-track:a2270207a931074a2617a2fe9b257616047177292781912ce81e37d12ed7974d` |
| 32 | `lemma` | [MutuallySingular.disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mutuallysingular-disjoint-ae--6515495c1e56ae01c894cac7.md) | 241 | `result-track:6515495c1e56ae01c894cac78a8e09453e6168c555614dcf749ccb222f2dd510` |
| 33 | `lemma` | [disjoint_of_disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/disjoint-of-disjoint-ae--f484166a5bf570410701c91d.md) | 252 | `result-track:f484166a5bf570410701c91dbcb4df3bf179fefca685a406f14a47ded4279dd1` |
| 34 | `lemma` | [mutuallySingular_tfae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mutuallysingular-tfae--f461f040bde40d2a5d665f20.md) | 277 | `result-track:f461f040bde40d2a5d665f202859a8d123fdd306c77491852434b745bc3244d9` |
| 35 | `lemma` | [mutuallySingular_iff_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mutuallysingular-iff-disjoint--745791d7f096a5601d3a5348.md) | 291 | `result-track:745791d7f096a5601d3a534831474cd38297490af6743b177a50b9b6974ebc65` |
| 36 | `lemma` | [mutuallySingular_iff_disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/declarations/mutuallysingular-iff-disjoint-ae--67bba359d5f3c18ab3c39d02.md) | 294 | `result-track:67bba359d5f3c18ab3c39d0214eef606bfa8df3c20fa6e2e78045dca79820bcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
