# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "975c08d73459b86c39e12761831fcfb980676165",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionPairing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `975c08d73459b86c39e12761831fcfb980676165`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineSectionPairing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineSectionPairing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realSquare](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/realsquare--6d3ab5efdb88f202c6bbcbea.md) | 33 | `declaration-track:6d3ab5efdb88f202c6bbcbeada0e028a8bfbdcbf923d609fe749196a208cab5a` |
| 2 | `def` | [pairDensity](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/pairdensity--e116a479880ab7574f166658.md) | 38 | `declaration-track:e116a479880ab7574f166658b4aeeb1fdbce63f7862509367958e8da6b2c4b3b` |
| 3 | `theorem` | [realSquare_continuous](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/realsquare-continuous--d8fd1402b3faffd9b4007175.md) | 42 | `result-track:d8fd1402b3faffd9b4007175c53b60a73348774f6a8e105eff7eb12ac126cc2a` |
| 4 | `theorem` | [realSquare_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/realsquare-nonneg--08e64c9c43e900c981122ec6.md) | 46 | `result-track:08e64c9c43e900c981122ec655454d785052bf378cc1fc39f151f2c84916f606` |
| 5 | `theorem` | [realSquare_integrable](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/realsquare-integrable--4735121283dd5859f1e80067.md) | 51 | `result-track:4735121283dd5859f1e800670b38073960d3956b7970e15cd1cb991e50ed07bf` |
| 6 | `theorem` | [weightedPair_polarization](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/weightedpair-polarization--3f6ad70ddac476a435cea61a.md) | 60 | `result-track:3f6ad70ddac476a435cea61a49ddc5507d024795336c3c1bb7c1b740cb8772f2` |
| 7 | `theorem` | [pairDensity_polarization](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/pairdensity-polarization--7763499a68bf6b1b7bf59129.md) | 70 | `result-track:7763499a68bf6b1b7bf5912902ff145fe6b8c52279669f3bb97dc7578050527a` |
| 8 | `theorem` | [pairDensity_continuous](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/pairdensity-continuous--37bc7b8552ae524b39857d51.md) | 81 | `result-track:37bc7b8552ae524b39857d51a4a313ba547ee9c5d3edaa5d3a7ed6e1c7c06759` |
| 9 | `theorem` | [pairDensity_integrable](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/pairdensity-integrable--4040e16c2d607523851588ed.md) | 91 | `result-track:4040e16c2d607523851588ed397a3cfd4ca1524feb58f6b820034f188b6c7091` |
| 10 | `def` | [sectionPairing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/sectionpairing--cd1f8ecd8d9c31a27dda8ba7.md) | 105 | `declaration-track:cd1f8ecd8d9c31a27dda8ba7e0ec3a7e804f049f00b0f0df637010e50c1a9508` |
| 11 | `theorem` | [sectionPairing_congr_ae](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/sectionpairing-congr-ae--304bc3b11ced82ffa6f88c90.md) | 110 | `result-track:304bc3b11ced82ffa6f88c90c2c2bf4af4d710464b26f8a256bf93b4bb950751` |
| 12 | `theorem` | [sectionPairing_conj](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/sectionpairing-conj--a0516acea61a177eefaaddbf.md) | 118 | `result-track:a0516acea61a177eefaaddbf632aa605f6f05544fa463c413ac8ca6ac7e07f62` |
| 13 | `theorem` | [sectionPairing_add_right](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/sectionpairing-add-right--8e5a82675208f765b1c5faab.md) | 130 | `result-track:8e5a82675208f765b1c5faab70354ac13864642891427b4a77455447b8d3794e` |
| 14 | `theorem` | [sectionPairing_smul_right](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/sectionpairing-smul-right--dee27eada8c29be7c69d2ec0.md) | 139 | `result-track:dee27eada8c29be7c69d2ec0bc8c6bd2d6c2f88d39a7176469e46563e6e1dbd3` |
| 15 | `theorem` | [sectionPairing_self](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/sectionpairing-self--c4294d8f22a845180d403ece.md) | 148 | `result-track:c4294d8f22a845180d403ecef03772741a73763a12179dc68bfde1d687d5a5a9` |
| 16 | `def` | [quotientPairing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing--43c2a4c866cd7d5f944c4fdb.md) | 163 | `declaration-track:43c2a4c866cd7d5f944c4fdb4d48b580688429311754f3faa77dbcf5c8df1080` |
| 17 | `theorem` | [quotientPairing_classOf](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-classof--a7afa612172639da81ba8ade.md) | 168 | `result-track:a7afa612172639da81ba8ade0e5b56019e5b0fc734d7eb14b79b290d039e9c3c` |
| 18 | `theorem` | [quotientPairing_conj](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-conj--e4bbb0d2c7341dd514cddae0.md) | 173 | `result-track:e4bbb0d2c7341dd514cddae04d9aa7abfaa62fceb8aae5543d9c9c965a3be763` |
| 19 | `theorem` | [quotientPairing_add_right](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-add-right--781f22f2969357153ccbdf73.md) | 180 | `result-track:781f22f2969357153ccbdf73b0a5fca9a83f843a842f758200ce03ae69db46b2` |
| 20 | `theorem` | [quotientPairing_smul_right](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-smul-right--3674485e7e5c04f22ce3e60f.md) | 188 | `result-track:3674485e7e5c04f22ce3e60f0de9fede4f37be1ac1835cfdd8bdf79b2e4d1012` |
| 21 | `theorem` | [quotientPairing_add_left](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-add-left--2ac0b1f1e1a8e80fe5ae4278.md) | 196 | `result-track:2ac0b1f1e1a8e80fe5ae42784af85e5ce2440356aeb25de1d15bd42ad6b7f7d6` |
| 22 | `theorem` | [quotientPairing_smul_left](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-smul-left--c4e87379298691010d0f455d.md) | 208 | `result-track:c4e87379298691010d0f455d0a5bb876a87eb9dc63fb13d109d35eb01717e0ce` |
| 23 | `theorem` | [quotientPairing_self](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-self--e7c79ca788e4f7c256c4082f.md) | 220 | `result-track:e7c79ca788e4f7c256c4082faef8e008d8ca6b2011f2a95b044359d5b47ff558` |
| 24 | `theorem` | [quotientPairing_self_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-self-nonneg--5a08203d5f05651e3e32e294.md) | 227 | `result-track:5a08203d5f05651e3e32e294a93c8f8f26065c637ad5ff67922ea76b8afc9bfc` |
| 25 | `theorem` | [quotientPairing_self_im](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-self-im--a2285bca279e2f4ed229205a.md) | 233 | `result-track:a2285bca279e2f4ed229205a9ee19e62a51e66f78fb47976375d4ab29f6853bf` |
| 26 | `theorem` | [quotientPairing_self_eq_zero_iff](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-self-eq-zero-iff--8606d082a153b0fe3e4ceef5.md) | 240 | `result-track:8606d082a153b0fe3e4ceef526f0b12b9a9681918d2387bdc3e1bd02687d0fd7` |
| 27 | `theorem` | [sectionPairing_gauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/sectionpairing-gauge--2aba156efcd1acf26e3de006.md) | 255 | `result-track:2aba156efcd1acf26e3de006d880b28affabccdc12a9b9ee9fd183770debcd66` |
| 28 | `theorem` | [quotientPairing_gauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/quotientpairing-gauge--f9b78e9082efb3ba4401b440.md) | 267 | `result-track:f9b78e9082efb3ba4401b440c523501f0749ea2f4611f9b2bad425e043810ad4` |
| 29 | `theorem` | [infiniteEnergy_self_not_integrable](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/infiniteenergy-self-not-integrable--fb021b70da15642516bc307d.md) | 277 | `result-track:fb021b70da15642516bc307d0692b2a7ea3235c73f80ae4404eec6740b01e265` |
| 30 | `theorem` | [sectionPairing_dirac](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/sectionpairing-dirac--f17ff41d39b5a99643a2c819.md) | 294 | `result-track:f17ff41d39b5a99643a2c81978c9e6677bf1a919c1571cd1a69eb894447ca4a5` |
| 31 | `theorem` | [imaginary_pairing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/imaginary-pairing--ff3e586f4a04a263132a3611.md) | 306 | `result-track:ff3e586f4a04a263132a361187362015d89cce79bb805fcfe2f1e78c09c68f74` |
| 32 | `theorem` | [reversed_imaginary_pairing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/declarations/reversed-imaginary-pairing--c6596f15a09e51507e3310b9.md) | 313 | `result-track:c6596f15a09e51507e3310b9384e2f2caf289e306b59038f930d79af43026636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
