# Verification target: GRWTSK.Algebra.GroupTheory.Semiconj.Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5fc14681a0f4a79abf2e0d34bc66401b70d9bab",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5fc14681a0f4a79abf2e0d34bc66401b70d9bab`.

Source path: `GRWTSK/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SemiconjBy](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/semiconjby--72d96d94715f63e3e8f244aa.md) | 35 | `declaration-track:72d96d94715f63e3e8f244aa6627303f2b1ccc4b04f9c6d581b97b05ade76efe` |
| 2 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/eq--e68d7e8d8a63512b52a669a6.md) | 44 | `result-track:e68d7e8d8a63512b52a669a673a943e1239705390bb8e74435faeda6b02aab28` |
| 3 | `theorem` | [mul_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/mul-right--960533ead83f02aee1c8d22f.md) | 57 | `result-track:960533ead83f02aee1c8d22f649dbdb66ebdca1650f1cb3f6a74414c4370e0b8` |
| 4 | `theorem` | [mul_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/mul-left--a06b4a2cb9552c2e2f1ff9c2.md) | 69 | `result-track:a06b4a2cb9552c2e2f1ff9c203a4931ecd76b3e8a92b4049a94172ad1ad3ba3a` |
| 5 | `theorem` | [transitive](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/transitive--50c5a38e22c33758a2a88a38.md) | 79 | `result-track:50c5a38e22c33758a2a88a3879bffd61e1855f12c40b9d0f912b7266214a9d57` |
| 6 | `theorem` | [one_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/one-right--f10d07e7718d84e2959f32de.md) | 92 | `result-track:f10d07e7718d84e2959f32de0842a109978522c3118a3de0b88e54c5a0317913` |
| 7 | `theorem` | [one_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/one-left--1313a4bebee4213111d06525.md) | 98 | `result-track:1313a4bebee4213111d065257e2b82fdcacf7a9d52170a9c2ad51f1ad66fd07a` |
| 8 | `theorem` | [reflexive](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/reflexive--7e84c1dd3af393f7911019ee.md) | 107 | `result-track:7e84c1dd3af393f7911019ee8ff7ccc81598f84976de23410597e1e20e550ded` |
| 9 | `theorem` | [units_inv_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/units-inv-right--d73e78ce9b7b11e185b1d049.md) | 121 | `result-track:d73e78ce9b7b11e185b1d0497fff25b19c3e4c59fb80425d39d497940dea2a39` |
| 10 | `theorem` | [units_inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/units-inv-right-iff--70b4458ba3e07d1f5fd27200.md) | 129 | `result-track:70b4458ba3e07d1f5fd27200b4dea2e183d9ce6c9f380916ce2f0d2412280520` |
| 11 | `theorem` | [units_inv_symm_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/units-inv-symm-left--c143db084b43b0fc081739b2.md) | 137 | `result-track:c143db084b43b0fc081739b282318a385210132b339072efa6018a17af27ad71` |
| 12 | `theorem` | [units_inv_symm_left_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/units-inv-symm-left-iff--1578b47f58499e5d3260010d.md) | 145 | `result-track:1578b47f58499e5d3260010d38fd9ab08f114fe7850732aac817e7c6dbeed04a` |
| 13 | `theorem` | [units_val](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/units-val--9a3e5722bcc1f74d0f89a67a.md) | 151 | `result-track:9a3e5722bcc1f74d0f89a67a5ca9a1912c2d8589a395ae995f6e30a2d8f2888f` |
| 14 | `theorem` | [units_of_val](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/units-of-val--0ef2032257e2e0bab257d514.md) | 157 | `result-track:0ef2032257e2e0bab257d51423906e5535896ebc80c087aa7fd50968a4ec5f93` |
| 15 | `theorem` | [units_val_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/units-val-iff--b619f068924fd0427a20d89f.md) | 163 | `result-track:b619f068924fd0427a20d89fa2eb1ea3c2e45867d4c80c8239d84fa7f13bccad` |
| 16 | `theorem` | [pow_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/pow-right--0e78d3bbd9a2d26ee9f0bfaa.md) | 169 | `result-track:0e78d3bbd9a2d26ee9f0bfaa9a34e5f43775f6a12ced390ed0e16464d1e92d2b` |
| 17 | `theorem` | [inv_inv_symm_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/inv-inv-symm-iff--62c0cce2fd9346ed9528461d.md) | 185 | `result-track:62c0cce2fd9346ed9528461de55513f7ffd84d42c9e6eb624e74bf45bb346392` |
| 18 | `theorem` | [inv_inv_symm](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/inv-inv-symm--f01cf1031eb673c3701ba6c7.md) | 192 | `result-track:f01cf1031eb673c3701ba6c7397d62fd909d3f4a01f03aed891eff2d81d39770` |
| 19 | `theorem` | [inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/inv-right-iff--e86d33e1b3be663e24850e24.md) | 204 | `result-track:e86d33e1b3be663e24850e24d2241bde1554ba1cae3a2452a6dd59e0671211b2` |
| 20 | `theorem` | [inv_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/inv-right--f432f38d671c6d5c53737650.md) | 211 | `result-track:f432f38d671c6d5c53737650f2c3fb0d13c45e697fc781a95881c521f1e65d8c` |
| 21 | `theorem` | [inv_symm_left_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/inv-symm-left-iff--d68c2a4c64f97dee82d5c90d.md) | 217 | `result-track:d68c2a4c64f97dee82d5c90dda03a17dbb8c4b931359be72de3128ad442f0f01` |
| 22 | `theorem` | [inv_symm_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/inv-symm-left--62a51b9bbefe25b27b590f81.md) | 223 | `result-track:62a51b9bbefe25b27b590f8160568085fe6ff9411403d0e32b68d0399bb781b3` |
| 23 | `theorem` | [conj_mk](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/conj-mk--94c4b011f7f2694eb44754d1.md) | 230 | `result-track:94c4b011f7f2694eb44754d1e9764a9c7f5a48ed29cb3a3aca5d4fc879a4dc08` |
| 24 | `theorem` | [semiconjBy_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/semiconjby-iff-eq--4f13364df4f0a6afa9dea644.md) | 240 | `result-track:4f13364df4f0a6afa9dea644bef38f228afeafc880b4effa1c6f34038ac2a0c7` |
| 25 | `theorem` | [Units.mk_semiconjBy](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta57c419a51be535865eeb5ab9b0b538324abb3611cbfc46ef95215761f50bedc.lean/declarations/units-mk-semiconjby--1777b9aa495b7e79f6fef86e.md) | 247 | `result-track:1777b9aa495b7e79f6fef86e2f37a875cb0b849f8bffe8dc87c4244279de2828` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
