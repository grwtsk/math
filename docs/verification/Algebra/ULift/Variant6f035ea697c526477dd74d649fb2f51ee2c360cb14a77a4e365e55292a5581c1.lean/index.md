# Verification target: GRWTSK.Algebra.ULift.Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "711167b5454116e9204bd33aac918f6a3214b5b2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/index.md) · [Full source](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `711167b5454116e9204bd33aac918f6a3214b5b2`.

Source path: `GRWTSK/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/instnnratcast--67a6c44c8b9a57c56c8fe235.md) | 31 | `declaration-track:67a6c44c8b9a57c56c8fe23544c92fe664a5fad5fff24401a13ccf7ccf7ac41e` |
| 2 | `instance` | [instRatCast](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/instratcast--b43124a797dee1e5fe00ecd1.md) | 32 | `declaration-track:b43124a797dee1e5fe00ecd15a60e13a715945f977d9b0753802e19ea0b5bc71` |
| 3 | `lemma` | [up_nnratCast](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/up-nnratcast--b0e414d7ef115f89f81aeb9c.md) | 34 | `result-track:b0e414d7ef115f89f81aeb9c27a5edef0d3583930fcee09b17d21cd7e4e90666` |
| 4 | `lemma` | [down_nnratCast](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/down-nnratcast--2d500636c5e43541c031e43c.md) | 35 | `result-track:2d500636c5e43541c031e43c197f065b9d2aeb3745d635d73e642ad71d3a8db5` |
| 5 | `lemma` | [up_ratCast](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/up-ratcast--ccb824f2fe0e943c9ebb9b03.md) | 36 | `result-track:ccb824f2fe0e943c9ebb9b03796b7fa9e55eff9525a59241ea3ca6fabe5ec382` |
| 6 | `lemma` | [down_ratCast](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/down-ratcast--edf555ddd8761cccce945aac.md) | 37 | `result-track:edf555ddd8761cccce945aac691a3216cfd9b982a3e0b9515f4a94153334ad6f` |
| 7 | `instance` | [divisionSemiring](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/divisionsemiring--39cea2fb40ab670f487c8c4f.md) | 39 | `declaration-track:39cea2fb40ab670f487c8c4fdf9bd73acec142e5d4dbe7fc0c5960f5932999d7` |
| 8 | `instance` | [semifield](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/semifield--9177a3f824d959e127778fc5.md) | 44 | `declaration-track:9177a3f824d959e127778fc5b63e302bbffac1bdb1ef7ab578525be1518ba518` |
| 9 | `instance` | [divisionRing](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/divisionring--7ec4f807c229864d9db1cceb.md) | 47 | `declaration-track:7ec4f807c229864d9db1cceb06a455fe7c80ec1bcaad25f6bc21421e5668747e` |
| 10 | `instance` | [field](../../../../mathematics/Algebra/ULift/Variant6f035ea697c526477dd74d649fb2f51ee2c360cb14a77a4e365e55292a5581c1.lean/declarations/field--6906f28c24b1ddd416697664.md) | 57 | `declaration-track:6906f28c24b1ddd416697664336d726979a99001f5aa49b57f58cd9cf92dff99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
