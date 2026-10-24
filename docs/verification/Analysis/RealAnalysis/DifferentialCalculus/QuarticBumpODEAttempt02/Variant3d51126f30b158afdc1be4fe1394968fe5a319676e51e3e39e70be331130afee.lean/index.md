# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODEAttempt02.Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ca446f6352458653715c0bdafce2f65ea9eaba6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ca446f6352458653715c0bdafce2f65ea9eaba6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMellinFilter` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/bumpmoment--25e8a85e256393af835f5f10.md) | 15 | `declaration-track:25e8a85e256393af835f5f1008c7534758aa298df85ed4860c2fe764376a65d3` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/fifthprofile--3852b403a4685422b56ef30f.md) | 18 | `declaration-track:3852b403a4685422b56ef30f0ee0a246a20af2c5ed005f36735a3b4d60edc315` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/moment-profile-continuous--095873159357b1cc0ae4715c.md) | 20 | `result-track:095873159357b1cc0ae4715cc3fa68fcb66677f3646cb74e66bb7dca206f33f2` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/moment-profile-hascompactsupport--8f92a1f46c78919f0f997cfa.md) | 24 | `result-track:8f92a1f46c78919f0f997cfaf65813453492537207201cf06cc134318473affa` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/bumpmoment-integrable--069c05f30c6561c3ba30308d.md) | 28 | `result-track:069c05f30c6561c3ba30308d8d10fb65dd7c479ff1966717ec24332268bd59f7` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/bumpmoment-hasderivat--986408db743f5a55483ff672.md) | 32 | `result-track:986408db743f5a55483ff67220ac5e22e72d7bedd092d7b92bcad5c89a6f4e4f` |
| 7 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/bumpmoment-zero-eq-quartic--1b0980f5242937e0237c0e2b.md) | 44 | `result-track:1b0980f5242937e0237c0e2b875d16b5fe885fb5523bd261362e50bd2a50487b` |
| 8 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/quartic-hasderivat--fb0c5f66cbe75f79f9d2fd98.md) | 49 | `result-track:fb0c5f66cbe75f79f9d2fd98d01ad88498392a9bb2f9ee015548a8f220598f49` |
| 9 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/quartic-deriv--befaaef6f65345eef5673b74.md) | 54 | `result-track:befaaef6f65345eef5673b74ef4ed734e3c6cb1292e8f72ca1683b999ad229c2` |
| 10 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/quartic-second-deriv--961891386baec003d99f9122.md) | 57 | `result-track:961891386baec003d99f91223f02464503ab54721994e350e9d42bb41e3384e7` |
| 11 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/fifthprofile-contdiff--57d86717ec12e809f7df9337.md) | 61 | `result-track:57d86717ec12e809f7df9337fcb4172222d4ed26fbab030ea40da56f035dd7ea` |
| 12 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/fifthprofile-hascompactsupport--aecede113460a372db483c04.md) | 65 | `result-track:aecede113460a372db483c04a4ed539191026c430da7025feb66bec011e43a63` |
| 13 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/fifthprofile-hasderivat--7c1fa742be663cc1c5b51405.md) | 68 | `result-track:7c1fa742be663cc1c5b514052e97d8b8de37fed620798c1d3d07ae99e39d6a79` |
| 14 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/fifthprofile-deriv--4233876ce358b16ac86ceda5.md) | 81 | `result-track:4233876ce358b16ac86ceda5af84cd55c455245fb2f749ab31058ad1f0ab6c9f` |
| 15 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/fifthprofile-transform--efde54c62a5498f3726f7609.md) | 84 | `result-track:efde54c62a5498f3726f7609c82e25a5575e0882478b8638c3e7d0eb85147a6f` |
| 16 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/fifthprofile-deriv-transform--3bf963423d763f006a1541ad.md) | 99 | `result-track:3bf963423d763f006a1541ad9c83b1607697a0a36a586712e860972cfd9aa778` |
| 17 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variant3d51126f30b158afdc1be4fe1394968fe5a319676e51e3e39e70be331130afee.lean/declarations/literal-quartic-ode--87ae90d4c8c1c4c7811245af.md) | 109 | `result-track:87ae90d4c8c1c4c7811245afc50cf78924b920df302130665a176e17ba2ef31a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
