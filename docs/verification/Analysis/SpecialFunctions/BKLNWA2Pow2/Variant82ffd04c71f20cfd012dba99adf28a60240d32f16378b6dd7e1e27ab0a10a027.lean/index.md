# Verification target: GRWTSK.Analysis.SpecialFunctions.BKLNWA2Pow2.Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3644704fb67040868ad143c4bd4b79babb8d761e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3644704fb67040868ad143c4bd4b79babb8d761e`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.FinSumExpand` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [f](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/f--b1af125c058dcf0b149458b0.md) | 25 | `declaration-track:b1af125c058dcf0b149458b0cca41a9f393386f42944d31daaa44ba294b61b06` |
| 2 | `lemma` | [two_pow_eq_exp_log](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/two-pow-eq-exp-log--665124174b28c74b335d40b0.md) | 29 | `result-track:665124174b28c74b335d40b0469645a401f834c9593c401ab2c7b9e074d81a57` |
| 3 | `lemma` | [floor_log_two_pow](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/floor-log-two-pow--7726edbf32e0e881448350e1.md) | 33 | `result-track:7726edbf32e0e881448350e16c687aaba253cd287e5f056a8cfe0d94ad6504af` |
| 4 | `theorem` | [pow29_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow29-upper--c3d4b065ec90162967adcacf.md) | 38 | `result-track:c3d4b065ec90162967adcacfed1e90e6d88e4d97855056b8b536b32598f51122` |
| 5 | `theorem` | [pow37_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow37-upper--68507610c05908191d0caa45.md) | 48 | `result-track:68507610c05908191d0caa458271eec4fa0bd533b0f9ca03ecb584c2cb4aeb9d` |
| 6 | `theorem` | [pow44_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow44-upper--d12c2d62a106781dfbb00cc1.md) | 58 | `result-track:d12c2d62a106781dfbb00cc1d74503f8a9c7e320cb7229340eb67b06d62aeb04` |
| 7 | `theorem` | [pow51_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow51-upper--8567207840ae30123b415f92.md) | 68 | `result-track:8567207840ae30123b415f920ca1cde664cfc874cee785ff0e79886642186dd4` |
| 8 | `theorem` | [pow58_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow58-upper--4af15e675b42c9cc37db321f.md) | 78 | `result-track:4af15e675b42c9cc37db321f92865c360f9293ed52c8777de0be9e57d49aceae` |
| 9 | `theorem` | [pow63_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow63-upper--d5a9f033e1aab53ae01541c2.md) | 88 | `result-track:d5a9f033e1aab53ae01541c2b364314cc2c9be2912a64bd7e6f79435ed72ccce` |
| 10 | `theorem` | [pow145_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow145-upper--06fc96039252447e51c9806a.md) | 105 | `result-track:06fc96039252447e51c9806ad360fa8192d760ec2e1b966e70cfbfe5860783ec` |
| 11 | `theorem` | [pow217_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow217-upper--dece8287e87231a191e4a4e7.md) | 109 | `result-track:dece8287e87231a191e4a4e7a6c691a6655d571cd3bdbf2802b64f73d0d527bb` |
| 12 | `theorem` | [pow289_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow289-upper--eb0cb2d8e060773d080b48eb.md) | 113 | `result-track:eb0cb2d8e060773d080b48eb171fb46a6ddc8f1e18a7c8a35c3a3b18d1be15f0` |
| 13 | `theorem` | [pow361_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow361-upper--2f7703e0d48efd6c35a84098.md) | 117 | `result-track:2f7703e0d48efd6c35a8409884677dad587703d6c10f1ba7f31dc90107d1f5cf` |
| 14 | `theorem` | [pow433_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/declarations/pow433-upper--360f1319ce7442c1e362a33d.md) | 121 | `result-track:360f1319ce7442c1e362a33d75e816c0664c733e247fa3fc8b7f75a62029ac05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
