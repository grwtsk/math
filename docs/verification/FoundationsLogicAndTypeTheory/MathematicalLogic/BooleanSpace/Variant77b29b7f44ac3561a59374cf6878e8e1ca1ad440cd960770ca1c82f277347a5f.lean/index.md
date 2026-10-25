# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BooleanSpace.Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "149435960fba914507a2fa52d6ee8ce13e772345",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `149435960fba914507a2fa52d6ee8ce13e772345`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitStream](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/bitstream--0fe69a46ba5cfcf4ff1b761b.md) | 16 | `declaration-track:0fe69a46ba5cfcf4ff1b761bc22c6a2b23b5fbbf939a07643d2381a7f916dc80` |
| 2 | `abbrev` | [BooleanState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/booleanstate--56ebd26655db3dc504472c6a.md) | 19 | `declaration-track:56ebd26655db3dc504472c6ace21595ec46200e158fa4ffb2b61a31aa6c73101` |
| 3 | `def` | [xorBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/xorbit--806933e5793220237ec07bd8.md) | 22 | `declaration-track:806933e5793220237ec07bd81039a20d429861de84e4470dd0726ee10346b834` |
| 4 | `theorem` | [xorBit_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/xorbit-self--c67b704e13c7342f0dfbca3f.md) | 25 | `result-track:c67b704e13c7342f0dfbca3ff60c82a74830287be686eac4c040e9ec31cf6c31` |
| 5 | `theorem` | [xorBit_false_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/xorbit-false-right--b5bd6ccb478dea3f181cde74.md) | 29 | `result-track:b5bd6ccb478dea3f181cde7466ffb263c50719adc8587f5598a71cea3f99bce8` |
| 6 | `theorem` | [xorBit_cancel_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/xorbit-cancel-left--6918316cdf64f3d11de63969.md) | 33 | `result-track:6918316cdf64f3d11de639690c69a2e9d48aa0fb5341e61a51b06fb8875c980e` |
| 7 | `structure` | [DesignatedCantorRepresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/designatedcantorrepresentation--a249e6c323cef4e018eb85b7.md) | 42 | `declaration-track:a249e6c323cef4e018eb85b775e2a77f76f4860c953670a2c19509381334a7c1` |
| 8 | `def` | [symbolicCantorRepresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/symboliccantorrepresentation--d6fb421a3a3562de29021030.md) | 52 | `declaration-track:d6fb421a3a3562de290210309f1ec3ab65d14ed248ab7fc03db70f0e8519182c` |
| 9 | `theorem` | [symbolicCantorRepresentation_theta](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/symboliccantorrepresentation-theta--f41ad122a2ed75efcdf0bf10.md) | 57 | `result-track:f41ad122a2ed75efcdf0bf1072d9fe617afa197852c2c0fea2b59b5594d65898` |
| 10 | `def` | [digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/digits--56568218d706b3a40ddd8197.md) | 64 | `declaration-track:56568218d706b3a40ddd8197f95f729d17280de92891aed368c7b934474cc7f4` |
| 11 | `theorem` | [theta_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/theta-injective--a0bbd415e996debf77c17a21.md) | 68 | `result-track:a0bbd415e996debf77c17a2147a10814ee96dbef07677c5e34ce17fbe021fd65` |
| 12 | `theorem` | [theta_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/theta-surjective--e95a26f414798289a2130827.md) | 72 | `result-track:e95a26f414798289a21308275d0b52d7919c05ee34a63c673789990dbe2af262` |
| 13 | `theorem` | [digits_theta](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/digits-theta--e8541a1c4c7c03142bb46381.md) | 77 | `result-track:e8541a1c4c7c03142bb4638193a8c24d109a3b9f0ef7c1bb190be8628245f218` |
| 14 | `theorem` | [theta_digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/theta-digits--f1139ac7fa02c28888e66ddf.md) | 84 | `result-track:f1139ac7fa02c28888e66ddfe3e7ea4282ed8e9a0cd110186e0683e60847d4e1` |
| 15 | `def` | [zeroScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/zeroscalar--84ac6a834dcac002671d3d6e.md) | 97 | `declaration-track:84ac6a834dcac002671d3d6e5a397a2573ec56f62f897f47f8a5ddd4eac716a7` |
| 16 | `theorem` | [DesignatedCantorRepresentation.digits_zeroScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/designatedcantorrepresentation-digits-zeroscalar--acb04783f851dffeddc1cd33.md) | 102 | `result-track:acb04783f851dffeddc1cd33ef9dd34fa15334b275625e213411ff835434d367` |
| 17 | `def` | [distinguishedInterpreter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/distinguishedinterpreter--e9afb044df775e31fbb54d58.md) | 108 | `declaration-track:e9afb044df775e31fbb54d58868e56fa07ddd0b33c82ceb56a21c1cabfdd88b0` |
| 18 | `def` | [discrepancy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/discrepancy--8349d73c079d404a817a4c68.md) | 120 | `declaration-track:8349d73c079d404a817a4c68d6f58f11fd54fc807ee37d5e4dec2b4d29913da0` |
| 19 | `def` | [stateTransformationInterpreter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/statetransformationinterpreter--2614ea8d977ba0a09fec46ef.md) | 133 | `declaration-track:2614ea8d977ba0a09fec46ef900b3803b3e270034e604218517ea0edd5ebd38e` |
| 20 | `theorem` | [stateTransformationInterpreter_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/statetransformationinterpreter-zero--7f17e3713a892745f9c9d623.md) | 139 | `result-track:7f17e3713a892745f9c9d6232620571712cf56a8df32676e12471e53aa60875e` |
| 21 | `theorem` | [stateTransformationInterpreter_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/statetransformationinterpreter-involutive--c331f91a38cc0f10e1f98d9c.md) | 147 | `result-track:c331f91a38cc0f10e1f98d9cc70167d36981a397fc6ee34e6094219eb2a29fcb` |
| 22 | `def` | [baselineEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/baselineequiv--db03ed9bfb797556ce329b6b.md) | 159 | `declaration-track:db03ed9bfb797556ce329b6bb6dc6be001c29f610cbbc89057c5176296a20148` |
| 23 | `theorem` | [baselineEquiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/baselineequiv-apply--f8629fbf9cc7930b85084b47.md) | 184 | `result-track:f8629fbf9cc7930b85084b4710d8de044fbe65d22e27348cbaf25d1cec0258d6` |
| 24 | `theorem` | [baselineEquiv_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/baselineequiv-symm-apply--740be5f9edbdd90144074b7e.md) | 195 | `result-track:740be5f9edbdd90144074b7e098091c267715511399bbfb861f90c04dc2a0984` |
| 25 | `theorem` | [distinguishedInterpreter_eq_baseline_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f.lean/declarations/distinguishedinterpreter-eq-baseline-iff--b68b7525d93f87c930166407.md) | 209 | `result-track:b68b7525d93f87c930166407f51d6c7646d4f48da00e7e2c246c81b27eccbf55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
