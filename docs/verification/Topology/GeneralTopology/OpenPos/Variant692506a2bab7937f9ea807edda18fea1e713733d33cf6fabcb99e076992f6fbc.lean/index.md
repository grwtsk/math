# Verification target: GRWTSK.Topology.GeneralTopology.OpenPos.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37469dd4c1fe3cde01c3788b00c48d474fdee7c6",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37469dd4c1fe3cde01c3788b00c48d474fdee7c6`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NoAtoms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOpenPosMeasure](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/isopenposmeasure--4ddc062eda8505814cff9a2d.md) | 35 | `declaration-track:4ddc062eda8505814cff9a2d23257ad477f6ff20c3855ec408f7ef9c6de421da` |
| 2 | `theorem` | [_root_.IsOpen.measure_ne_zero](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isopen-measure-ne-zero--5d69d03cb83c1ac0a935d074.md) | 40 | `result-track:5d69d03cb83c1ac0a935d074906cc5e845c56b547fac2db0017e9835de03bdd8` |
| 3 | `theorem` | [_root_.IsOpen.measure_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isopen-measure-pos--2b08f2e7bc098f51373c7794.md) | 43 | `result-track:2b08f2e7bc098f51373c77946857ea4453881f4b9d65128534edf39f0584c20c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/instance--ef4665e0271957622c191b1a.md) | 46 | `declaration-track:ef4665e0271957622c191b1aa65efcafa81c5df48de9480828cb15b5ba886cab` |
| 5 | `theorem` | [_root_.IsOpen.measure_pos_iff](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isopen-measure-pos-iff--2ec4a4f1c7ea7d1380ae3051.md) | 49 | `result-track:2ec4a4f1c7ea7d1380ae3051437956f988be1c0262ce93f2db859b570626494f` |
| 6 | `theorem` | [_root_.IsOpen.measure_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isopen-measure-eq-zero-iff--d2e4a6439e01a2381b5ce8aa.md) | 52 | `result-track:d2e4a6439e01a2381b5ce8aa83e9c6fccf7676817798dfc07b7714919c28ee65` |
| 7 | `theorem` | [measure_pos_of_nonempty_interior](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-pos-of-nonempty-interior--e8ebd39ebf7c9c6caa378059.md) | 56 | `result-track:e8ebd39ebf7c9c6caa37805983b04bba58731617120aa4cb12f04fa22602f180` |
| 8 | `theorem` | [measure_pos_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-pos-of-mem-nhds--237259b99838e253cb8e1a66.md) | 59 | `result-track:237259b99838e253cb8e1a66325dc7a0dbc88b344f2e8c4b68afb2f20632db25` |
| 9 | `theorem` | [isOpenPosMeasure_smul](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/isopenposmeasure-smul--dada4ebeebbc97824dcd2621.md) | 62 | `result-track:dada4ebeebbc97824dcd2621d9d6b898c72d6906dacb0684830c6deae5d91f8a` |
| 10 | `theorem` | [AbsolutelyContinuous.isOpenPosMeasure](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/absolutelycontinuous-isopenposmeasure--e06840bcf0912bc017f33311.md) | 67 | `result-track:e06840bcf0912bc017f33311ae6bf9a97eb16c7280f3cb10a5b0804741e611ff` |
| 11 | `theorem` | [_root_.LE.le.isOpenPosMeasure](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-le-le-isopenposmeasure--5fd4456a67f0df8a07e45f6b.md) | 70 | `result-track:5fd4456a67f0df8a07e45f6b7cbee77f9026383262c87d3ae85fc3f77373344d` |
| 12 | `theorem` | [_root_.IsOpen.measure_zero_iff_eq_empty](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isopen-measure-zero-iff-eq-empty--7391034c1a67472e8ac993b7.md) | 73 | `result-track:7391034c1a67472e8ac993b76f267bf7b252964967b2cd7996ecf4ccd30cd0c6` |
| 13 | `theorem` | [_root_.IsOpen.ae_eq_empty_iff_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isopen-ae-eq-empty-iff-eq--65346d0aa761454ade442d37.md) | 77 | `result-track:65346d0aa761454ade442d37d14f5d99d5a0c1ee468b14f6793c17932c130416` |
| 14 | `theorem` | [_root_.IsOpen.eq_empty_of_measure_zero](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isopen-eq-empty-of-measure-zero--7b033655d230abe4d29e09a4.md) | 82 | `result-track:7b033655d230abe4d29e09a46e25eefbd3ae6601740943fb69b21dabfc557a26` |
| 15 | `theorem` | [_root_.IsClosed.ae_eq_univ_iff_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isclosed-ae-eq-univ-iff-eq--a9b7397a303648368e67170c.md) | 85 | `result-track:a9b7397a303648368e67170c2eed47b2a574457a5098a57273ebf833432dab93` |
| 16 | `theorem` | [_root_.IsClosed.measure_eq_univ_iff_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isclosed-measure-eq-univ-iff-eq--6b473d4c34e089d2fb7c8f6d.md) | 90 | `result-track:6b473d4c34e089d2fb7c8f6d9c9ee16e614197d727bbee9a21bf2bc3d4e8e90e` |
| 17 | `theorem` | [_root_.IsClosed.measure_eq_one_iff_eq_univ](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-isclosed-measure-eq-one-iff-eq-univ--ce2ef5cb205e7a2ce78d0ea2.md) | 95 | `result-track:ce2ef5cb205e7a2ce78d0ea2854ab44912d97853ee0e1d8e95bfe407f7034026` |
| 18 | `theorem` | [interior_eq_empty_of_null](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/interior-eq-empty-of-null--b9a22bc31ab473e6f275dcf2.md) | 101 | `result-track:b9a22bc31ab473e6f275dcf2dab541ad11704d9bbfc328f63958763e3beac387` |
| 19 | `theorem` | [dense_of_ae](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/dense-of-ae--043678ec192056b41d282390.md) | 105 | `result-track:043678ec192056b41d282390bf990299763a4022af5d1e4db9a132a3b837a762` |
| 20 | `theorem` | [eqOn_open_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/eqon-open-of-ae-eq--96a59bb10df5223b25a12d77.md) | 111 | `result-track:96a59bb10df5223b25a12d771dda3da999f9a7a6896c754d8cbaaec2e2bb1b1b` |
| 21 | `theorem` | [eq_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/eq-of-ae-eq--541acbdc58846a58d971462c.md) | 125 | `result-track:541acbdc58846a58d971462cea11cb3517de19a0ddb3d85dd29bb03938e110de` |
| 22 | `theorem` | [eqOn_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/eqon-of-ae-eq--85305b56719fa2f1e5f9f5eb.md) | 129 | `result-track:85305b56719fa2f1e5f9f5eba8d1dfdcb3449c85dac7f6c8a3440fe5279a16e0` |
| 23 | `theorem` | [_root_.Continuous.ae_eq_iff_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-continuous-ae-eq-iff-eq--3748a8a72a7db1db36dca6e9.md) | 137 | `result-track:3748a8a72a7db1db36dca6e993a85571e9b99e9c54bdb7c7e14c77b9f14f272a` |
| 24 | `theorem` | [_root_.Continuous.isOpenPosMeasure_map](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/root-continuous-isopenposmeasure-map--e164e1d1f9ab3214f7657b8a.md) | 141 | `result-track:e164e1d1f9ab3214f7657b8a745dde87ecd73e1a7c3e120e20fec07ec807f72e` |
| 25 | `theorem` | [measure_Ioi_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-ioi-pos--81afd1f41eb15c3ac52e5c81.md) | 156 | `result-track:81afd1f41eb15c3ac52e5c812d2723339b80993623cdd15133743856aa5f3e59` |
| 26 | `theorem` | [measure_Iio_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-iio-pos--f6a11fbab9bf9f6e4d7f2ffe.md) | 159 | `result-track:f6a11fbab9bf9f6e4d7f2ffe8099e6afa93bb58afd2a839ced0a47a94ba45d12` |
| 27 | `theorem` | [measure_Ioo_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-ioo-pos--ab47542451c997d4f57b833a.md) | 162 | `result-track:ab47542451c997d4f57b833a2fb06687b8ef1b875451488e5744c7ae04c4d2d5` |
| 28 | `theorem` | [measure_Ioo_eq_zero](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-ioo-eq-zero--a1e65716e1c3c76c2d7bb3d1.md) | 165 | `result-track:a1e65716e1c3c76c2d7bb3d1cfaa3bf792ce27003ea0b55f7828170c80e1a8e6` |
| 29 | `theorem` | [eqOn_Ioo_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/eqon-ioo-of-ae-eq--d6074e242baccce206005433.md) | 168 | `result-track:d6074e242baccce206005433db0e50f309e88820a0e2057f18b7635b667ec8a3` |
| 30 | `theorem` | [eqOn_Ioc_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/eqon-ioc-of-ae-eq--e96904785ddfe7b58f669493.md) | 172 | `result-track:e96904785ddfe7b58f669493c0188c8c416e0003ae79f5a125bf59f0e4e46a45` |
| 31 | `theorem` | [eqOn_Ico_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/eqon-ico-of-ae-eq--d381db33f4b73ce603879bbc.md) | 177 | `result-track:d381db33f4b73ce603879bbc69a91d8f62d81a53178f3a171f28f2d769ff8163` |
| 32 | `theorem` | [eqOn_Icc_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/eqon-icc-of-ae-eq--268d20aad240e1f786e8b288.md) | 182 | `result-track:268d20aad240e1f786e8b2885e7ab05cc9719c945cac21ad5901b20780beda67` |
| 33 | `theorem` | [measure_ball_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-ball-pos--fad7e4a534c052dd00554c52.md) | 200 | `result-track:fad7e4a534c052dd00554c52eecc4742773bf09921b3038641d51f647e0af596` |
| 34 | `theorem` | [measure_closedBall_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-closedball-pos--778e993e1101758766a729f8.md) | 204 | `result-track:778e993e1101758766a729f874be1ddd13ed8bd1a9d3a6a7633e91b13a3a8acd` |
| 35 | `lemma` | [measure_closedBall_pos_iff](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-closedball-pos-iff--69e0e3dd3bab7e03441198d4.md) | 207 | `result-track:69e0e3dd3bab7e03441198d47f46cd2eccaebd5f07582c7663b90ffc52adaac6` |
| 36 | `theorem` | [measure_ball_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-ball-pos--93b3158ffd6e5b214d6a2fc5.md) | 221 | `result-track:93b3158ffd6e5b214d6a2fc54c7e5b23329215fa7776f135d49d2bc478fb77ae` |
| 37 | `theorem` | [measure_closedBall_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/measure-closedball-pos--9827f13b7a255e2c82115a8a.md) | 224 | `result-track:9827f13b7a255e2c82115a8aab92db634c3e63eb1bdbc4e18b8345609061e385` |
| 38 | `lemma` | [IsNowhereDense.of_isClosed_null](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/isnowheredense-of-isclosed-null--563146f1348e31a35e86171d.md) | 249 | `result-track:563146f1348e31a35e86171d1e17728b594889b6231f74a3855e551b7cd3caae` |
| 39 | `lemma` | [IsMeagre.of_isSigmaCompact_null](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/declarations/ismeagre-of-issigmacompact-null--059936d460d14eeaff01d9a7.md) | 254 | `result-track:059936d460d14eeaff01d9a7c51535685316a4ff8522b3b626ab763a6d0d8e22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
