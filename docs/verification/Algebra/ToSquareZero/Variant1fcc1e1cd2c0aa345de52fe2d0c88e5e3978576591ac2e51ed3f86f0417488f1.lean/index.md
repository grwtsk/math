# Verification target: GRWTSK.Algebra.ToSquareZero.Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e163ab58bb8f3344af03b1cbf12520410f212159",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/index.md) · [Full source](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e163ab58bb8f3344af03b1cbf12520410f212159`.

Source path: `GRWTSK/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diffToIdealOfQuotientCompEq](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/declarations/difftoidealofquotientcompeq--8e0c2462848cace831bf456f.md) | 30 | `declaration-track:8e0c2462848cace831bf456f58f58dc1d28303c29500f712b6481fbfb351003b` |
| 2 | `theorem` | [diffToIdealOfQuotientCompEq_apply](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/declarations/difftoidealofquotientcompeq-apply--d1f88c966fad05004d68615f.md) | 40 | `result-track:d1f88c966fad05004d68615f3cc364cf996efcefd0fe6153de97d6c458366f0f` |
| 3 | `def` | [derivationToSquareZeroOfLift](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/declarations/derivationtosquarezerooflift--209efec3720f4d8c4995b397.md) | 50 | `declaration-track:209efec3720f4d8c4995b397e8791d42cfdd1bfb6eca252dae9514cd9f0ae853` |
| 4 | `theorem` | [derivationToSquareZeroOfLift_apply](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/declarations/derivationtosquarezerooflift-apply--4ed0737a37fdce658b90070f.md) | 75 | `result-track:4ed0737a37fdce658b90070fce577180395608813dcfce45c3d2ffa9ee976b39` |
| 5 | `def` | [liftOfDerivationToSquareZero](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/declarations/liftofderivationtosquarezero--fff3ab67a1ccb538c5f0a354.md) | 84 | `declaration-track:fff3ab67a1ccb538c5f0a35471d4e5f438914089317cc741fff60b065b4200ee` |
| 6 | `theorem` | [liftOfDerivationToSquareZero_mk_apply](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/declarations/liftofderivationtosquarezero-mk-apply--9957ed4fd5376463932dc424.md) | 104 | `result-track:9957ed4fd5376463932dc424e3dfbb7c61ab8ffb6bff6f3e94d9bcc9afbb1921` |
| 7 | `theorem` | [liftOfDerivationToSquareZero_mk_apply'](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/declarations/liftofderivationtosquarezero-mk-apply--f32724431291c397279e9462.md) | 112 | `result-track:f32724431291c397279e9462b3bc3c623bd40e09b2b8a196625a8e180b4a769d` |
| 8 | `def` | [derivationToSquareZeroEquivLift](../../../../mathematics/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/declarations/derivationtosquarezeroequivlift--2ca20e2b169b4d12c6d6188a.md) | 120 | `declaration-track:2ca20e2b169b4d12c6d6188a3d25732ff40ca19200393cc79ae028c3d7cd5f60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
