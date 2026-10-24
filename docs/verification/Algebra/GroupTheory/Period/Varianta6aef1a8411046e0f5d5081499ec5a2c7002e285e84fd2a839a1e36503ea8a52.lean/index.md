# Verification target: GRWTSK.Algebra.GroupTheory.Period.Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f93fd000e968890ebb8de750b74e73085572ed68",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f93fd000e968890ebb8de750b74e73085572ed68`.

Source path: `GRWTSK/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_period](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/le-period--bc8ac3c24fb590a6d904bf2b.md) | 31 | `result-track:bc8ac3c24fb590a6d904bf2bff81bfe29cd348959cf05f297095a5b76dbff5d0` |
| 2 | `theorem` | [period_le_of_fixed](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-le-of-fixed--e112deb16524810c01ae67d4.md) | 38 | `result-track:e112deb16524810c01ae67d49953ba03bd43e0428a031b728dcf94ccfa986fd3` |
| 3 | `theorem` | [period_pos_of_fixed](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-pos-of-fixed--1d1fbd7b6fb11a86bd955e7f.md) | 44 | `result-track:1d1fbd7b6fb11a86bd955e7fd540ec20f168400f4ecbe05f3ad532f0a44d778b` |
| 4 | `theorem` | [period_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-eq-one-iff--dbec3e33fb840b042d94aa31.md) | 49 | `result-track:dbec3e33fb840b042d94aa313ef45b340af303d6e1c86127f4944d2156e93383` |
| 5 | `theorem` | [pow_smul_ne_of_lt_period](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/pow-smul-ne-of-lt-period--2712d15f0b41b3af77591f95.md) | 57 | `result-track:2712d15f0b41b3af77591f954a6133de89546f1cdee846fd99b6eb8dbe411c4b` |
| 6 | `theorem` | [period_one](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-one--1ad7fe8ef48b5d789c0a8566.md) | 68 | `result-track:1ad7fe8ef48b5d789c0a8566af871f8dee9057a665d5cdc7dd336177004d80a9` |
| 7 | `theorem` | [period_inv](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-inv--e07b153c10eadf64e4517c12.md) | 71 | `result-track:e07b153c10eadf64e4517c124fbbe5764d95031ecc1ebd432ee61864859b115f` |
| 8 | `theorem` | [period_dvd_orderOf](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-dvd-orderof--29673d256f127c6ce907b1db.md) | 87 | `result-track:29673d256f127c6ce907b1db0e0970b251137bbc7884fd5426e92b885868d8ea` |
| 9 | `theorem` | [period_pos_of_orderOf_pos](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-pos-of-orderof-pos--197aa91217878bef84f58edf.md) | 91 | `result-track:197aa91217878bef84f58edf8571d029c888205ec296badd1049bdf52c96724c` |
| 10 | `theorem` | [period_le_orderOf](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-le-orderof--2dc6067252f5e62f01e7fefc.md) | 96 | `result-track:2dc6067252f5e62f01e7fefc0ad8a846beb7b1d3437578095be44785a50b9ac2` |
| 11 | `theorem` | [period_dvd_exponent](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-dvd-exponent--6f1f2a4c058e6fd335a9cef4.md) | 101 | `result-track:6f1f2a4c058e6fd335a9cef4485782c7d93a3f2de18e08a477d9ad8c1ee2ae7c` |
| 12 | `theorem` | [period_pos_of_exponent_pos](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-pos-of-exponent-pos--bf317ce4c369bea01f67e8a8.md) | 105 | `result-track:bf317ce4c369bea01f67e8a8e3922e6f3e9359cecf555136def444907fa333da` |
| 13 | `theorem` | [period_le_exponent](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-le-exponent--ded8301c525f4bbeab5be462.md) | 110 | `result-track:ded8301c525f4bbeab5be462be29c62d4ed0397e89650fc5ab96392f599785ed` |
| 14 | `theorem` | [period_bounded_of_exponent_pos](../../../../../mathematics/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/declarations/period-bounded-of-exponent-pos--736fb13fa9bcf9658c666e47.md) | 117 | `result-track:736fb13fa9bcf9658c666e47c4c588dbf0e04b99a6a0605cdcf8810f271766d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
