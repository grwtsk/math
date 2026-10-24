# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODEAttempt02.Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f44c7cc6d9a8f2ab65125ea14703f10ce825d21",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f44c7cc6d9a8f2ab65125ea14703f10ce825d21`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMellinFilter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/bumpmoment--8774535d4b464c971ba42abe.md) | 23 | `declaration-track:8774535d4b464c971ba42abeed30644e7bee1e8379e5c208a93cc8a1f95127d8` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/fifthprofile--d26d03a8c5b4fd32422ef330.md) | 26 | `declaration-track:d26d03a8c5b4fd32422ef3307a9c4514f7842511404a5fa279ffc5fbc782c4ad` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/moment-profile-continuous--c0e51aac0bf8c22ad30f705c.md) | 28 | `result-track:c0e51aac0bf8c22ad30f705c006ba74e8906fb167dbecb79de56e4d80b0e3b11` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/moment-profile-hascompactsupport--9f0a2be8b65d4b0616352a37.md) | 32 | `result-track:9f0a2be8b65d4b0616352a37438806413601bd1bfd57eaa383594884ef19b124` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/bumpmoment-integrable--c722935b85d565eae066dfbd.md) | 36 | `result-track:c722935b85d565eae066dfbd092c5ec29907d2dfb9b4ff00a0981bcfc84b7ad9` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/bumpmoment-hasderivat--5b880bdf62d89041fb5b9d7e.md) | 40 | `result-track:5b880bdf62d89041fb5b9d7e9d99bb53c5828ecf15c291f31f7474d9fdd39572` |
| 7 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/bumpmoment-zero-eq-quartic--5e2fc54a8d3569e7fdc19be5.md) | 52 | `result-track:5e2fc54a8d3569e7fdc19be5a90a6658fa64e9fe851085cc503748c000e7fbfa` |
| 8 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/quartic-hasderivat--30dbba1e2e67df5b5978a163.md) | 57 | `result-track:30dbba1e2e67df5b5978a163ff401e5f2ebc7bebf873d027dac166098513b73d` |
| 9 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/quartic-deriv--7f323d17ff0ca4f256a67097.md) | 62 | `result-track:7f323d17ff0ca4f256a67097054da19f1ee8e46f7f377537cb7dee2cd5e3fb12` |
| 10 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/quartic-second-deriv--c88b98638406e32d09105db8.md) | 65 | `result-track:c88b98638406e32d09105db8d60e3632425c932bd2d9b0c22772343f89621f72` |
| 11 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/fifthprofile-contdiff--8f20a4101e58033f96e16294.md) | 69 | `result-track:8f20a4101e58033f96e16294dd6f94d25bcfd9d51701f699c2ca346bc51697e7` |
| 12 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/fifthprofile-hascompactsupport--feb8d5e46e6cac9a224b0f8c.md) | 73 | `result-track:feb8d5e46e6cac9a224b0f8c7405a9b6d801e8ce4b258eb2e5cb2b6d9a6b2c46` |
| 13 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/fifthprofile-hasderivat--03dfa509616c53b1b98104c0.md) | 76 | `result-track:03dfa509616c53b1b98104c0a886319353cab3a1ef8c9498bfc90b89cb2b9db2` |
| 14 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/fifthprofile-deriv--15612e5a1911343b4e88129f.md) | 89 | `result-track:15612e5a1911343b4e88129f9609db044121b8284cbe7f601cac711e11cd0042` |
| 15 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/fifthprofile-transform--ed1531e89ca8504c3351cd48.md) | 92 | `result-track:ed1531e89ca8504c3351cd488ff08a1c15beb3646304f5a9d3a822fb184e2eac` |
| 16 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/fifthprofile-deriv-transform--f7d492f7fd9833bc01480479.md) | 107 | `result-track:f7d492f7fd9833bc01480479e4e45d81e45a7e938f2dd1d8add0c872656a2279` |
| 17 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/declarations/literal-quartic-ode--96c7e04d450bdf8ddb80e211.md) | 117 | `result-track:96c7e04d450bdf8ddb80e2112cdc04b792a0cfa23c7455c104d5eae7fbd1aa7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
