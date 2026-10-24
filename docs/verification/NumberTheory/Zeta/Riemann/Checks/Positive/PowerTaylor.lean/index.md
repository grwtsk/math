# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.PowerTaylor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12551e98270e7868b3476d365f0b91d98c38eaaf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12551e98270e7868b3476d365f0b91d98c38eaaf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.FinitePowerPatch`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/FinitePowerPatch.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--616259b220fecfc0ab2eee43.md) | 12 | `declaration-track:616259b220fecfc0ab2eee435f81376d2ada0e18e7b148cfd0e09a9354086071` |
| 2 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--7f471702d9e6d152abb8fabc.md) | 14 | `declaration-track:7f471702d9e6d152abb8fabcb7b581a9b73b6a699a1357248e211fe6ce5d2018` |
| 3 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--4440d1eea8c630fb90166bae.md) | 18 | `declaration-track:4440d1eea8c630fb90166bae85e62c98a78e4456130f6c203660278de23b1e0f` |
| 4 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--e27e9e5200329c846634b28b.md) | 21 | `declaration-track:e27e9e5200329c846634b28b6fb9a8f94d6372fa9b60fa2857084269d7a9c529` |
| 5 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--216719592a44cd812903f4a8.md) | 24 | `declaration-track:216719592a44cd812903f4a82df1cf20ea024a63ca6b0bc2e10cfcd6ad365f7a` |
| 6 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--8ea46fe9b0adf512b62ad5b5.md) | 31 | `declaration-track:8ea46fe9b0adf512b62ad5b56f953f151f9fae3dfc957ab38699a9b646748bc7` |
| 7 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--7b70e4d0bc2f60904b518daf.md) | 38 | `declaration-track:7b70e4d0bc2f60904b518daf9824b2c505905fcd68b88dd92a5d2894c0669e02` |
| 8 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--16dd35ea035376ee0a561e8d.md) | 41 | `declaration-track:16dd35ea035376ee0a561e8dbee50f560b081804f291c91cc154c691792b6d6f` |
| 9 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--ff1f15aa89550c9a17b3395b.md) | 44 | `declaration-track:ff1f15aa89550c9a17b3395b497aeffabab8719a5e0227a915c3749118032003` |
| 10 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--14a3b934015236c66d554320.md) | 48 | `declaration-track:14a3b934015236c66d55432070da93ad96579cdba969d112e4a90657bc861473` |
| 11 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--da338e79e88a6fcb98df2a0b.md) | 57 | `declaration-track:da338e79e88a6fcb98df2a0bb2fec3b4b3562e3228a59c0cc7e47d982cb3c010` |
| 12 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--fb85436a9fcd97a9c507d314.md) | 58 | `declaration-track:fb85436a9fcd97a9c507d314080de660cf7b1f394e13e12e19292e344714c887` |
| 13 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--d1ea4c9b69550225ad037719.md) | 59 | `declaration-track:d1ea4c9b69550225ad03771949a8fcd154817d73672fc3aa348d0d7289a19c16` |
| 14 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--22acf37abfb0fa46b8fd2a0f.md) | 60 | `declaration-track:22acf37abfb0fa46b8fd2a0f72c11257a1caa43d253eac2bdcddd74e0e9e5860` |
| 15 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/PowerTaylor.lean/declarations/example--48d3e07708a64ef9003bfb4d.md) | 64 | `declaration-track:48d3e07708a64ef9003bfb4dfd36570f185c67109456437f01d12faaae9dfdef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
