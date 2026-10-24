# Verification target: GRWTSK.Analysis.Complex.HolomorphicOpenCoverGluing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc59bf3e2575b9ff46c26632d7833f4d105a309b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicOpenCoverGluing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc59bf3e2575b9ff46c26632d7833f4d105a309b`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicOpenCoverGluing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicOpenCoverGluing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicRestrictionGluing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicSectionRing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Analysis.Calculus.FDeriv.Congr` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ambientRepresentative](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/ambientrepresentative--354e951d853ecf83b790707d.md) | 19 | `declaration-track:354e951d853ecf83b790707d2ef84de9d124c0a407700a9064939b8a115c2cdf` |
| 2 | `theorem` | [ambientRepresentative_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/ambientrepresentative-apply--c3562215529133feafb656af.md) | 24 | `result-track:c3562215529133feafb656af52f72ce9e5f53dd6afc9d0a075b67578310a96e5` |
| 3 | `structure` | [IsOpenCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/isopencover--c828a4dc5724284e3d100736.md) | 34 | `declaration-track:c828a4dc5724284e3d100736591acd997d3f938832af697f384d03eab57f2bc6` |
| 4 | `theorem` | [holomorphic_iff_restrictions](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/holomorphic-iff-restrictions--ddbc7e4ece6525a1704d9d32.md) | 39 | `result-track:ddbc7e4ece6525a1704d9d32f25cec74ca754af03e9f4aa994ba07cbeaf2ccfb` |
| 5 | `def` | [holomorphicGlueCertificate_of_openCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/holomorphicgluecertificate-of-opencover--ce21aa644ecee01ea00e8401.md) | 70 | `declaration-track:ce21aa644ecee01ea00e840173f57cb510e6462f8afde4980cdc25d832811973` |
| 6 | `theorem` | [global_holomorphic_of_openCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/global-holomorphic-of-opencover--87e945e49350aaa15e1f3b62.md) | 82 | `result-track:87e945e49350aaa15e1f3b629d7ea33f68485d2bab6abf8730980b5d7fa7f0c3` |
| 7 | `def` | [holomorphicPortCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/holomorphicportcover--19603fa74abe0f7647d2f104.md) | 88 | `declaration-track:19603fa74abe0f7647d2f1045f7a39975a26f02ef623a67779a2a724212fd285` |
| 8 | `def` | [toHolomorphicMatchingData](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/toholomorphicmatchingdata--a10a072510f29ad9f054b188.md) | 109 | `declaration-track:a10a072510f29ad9f054b188819d3afc2357397d23a3c51def0caf65bee153e6` |
| 9 | `def` | [holomorphicGlue](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/holomorphicglue--e1e3668e95ea5861fe692a08.md) | 119 | `declaration-track:e1e3668e95ea5861fe692a0896ae3fbe071219d809edf8612f563a42c167355d` |
| 10 | `theorem` | [holomorphicGlue_coe](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/holomorphicglue-coe--14300cf8f1338c3dbede2daf.md) | 126 | `result-track:14300cf8f1338c3dbede2daf81f82d175c21217ae409f51c0852acee8ee5f8be` |
| 11 | `theorem` | [restrict_holomorphicGlue_left](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/restrict-holomorphicglue-left--2298e9c6c41c16145e504ea8.md) | 133 | `result-track:2298e9c6c41c16145e504ea8ea4cdaf3b46f91c8b9b7b54cb898d00f67b5101e` |
| 12 | `theorem` | [restrict_holomorphicGlue_right](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/restrict-holomorphicglue-right--3328ffd04d68f4232d281159.md) | 142 | `result-track:3328ffd04d68f4232d281159c75ff46dbb588a6a5e3e7fc6b7617a53aba2da5c` |
| 13 | `theorem` | [holomorphic_ext](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/holomorphic-ext--2ff1e902eb6c8ecda57f21fd.md) | 151 | `result-track:2ff1e902eb6c8ecda57f21fd073b417b74ccf20aee2af2119fcde84ea6fd3a8c` |
| 14 | `def` | [holomorphicSheafCertificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/holomorphicsheafcertificate--fdeb431aa05dd3bceeeb913f.md) | 163 | `declaration-track:fdeb431aa05dd3bceeeb913ff39547381785b267519bdf55ee28f090b98d40de` |
| 15 | `def` | [awayZero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/awayzero--2112647a7a1980d909a28ee8.md) | 178 | `declaration-track:2112647a7a1980d909a28ee813baf148b9b57917455687818d2cee0a1a066276` |
| 16 | `def` | [awayOne](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/awayone--62ed60c347b118454172f26c.md) | 179 | `declaration-track:62ed60c347b118454172f26c6f9dec37b4fdb350eaa9bd78b251182d30b9eda3` |
| 17 | `def` | [puncturedPlaneCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/puncturedplanecover--b91550fe133e4fe718c4239e.md) | 181 | `declaration-track:b91550fe133e4fe718c4239e402fd0e8d20e1f599782a1a760b6e2c2c3dc6938` |
| 18 | `def` | [puncturedPlane_isOpen](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/puncturedplane-isopen--3b3f4950bcba7755497b7da8.md) | 195 | `declaration-track:3b3f4950bcba7755497b7da825ae40f79b425509dc63fa85e5c3c5a1401d4521` |
| 19 | `def` | [puncturedPlane_holomorphicSheaf](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/puncturedplane-holomorphicsheaf--cacf2547e84e9c5e206fa56a.md) | 200 | `declaration-track:cacf2547e84e9c5e206fa56a841dd851d60e32a98f9fd6663e7067ced760d2d8` |
| 20 | `theorem` | [zero_one_do_not_match](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/zero-one-do-not-match--80a0b6317b933e61402822bd.md) | 206 | `result-track:80a0b6317b933e61402822bd2091acb2378b44276eec0acbb30c970c1497c4cc` |
| 21 | `theorem` | [empty_domains_do_not_cover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/declarations/empty-domains-do-not-cover--0f742430c67bb84483606d15.md) | 220 | `result-track:0f742430c67bb84483606d152e62fe9f5013b4bdd2c8c80062ce579cf0e1a553` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
