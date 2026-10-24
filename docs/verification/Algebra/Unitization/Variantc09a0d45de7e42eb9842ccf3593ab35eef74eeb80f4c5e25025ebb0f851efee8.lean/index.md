# Verification target: GRWTSK.Algebra.Unitization.Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8238c92c20cd363bae8ded0075bcf82757da3514",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8238c92c20cd363bae8ded0075bcf82757da3514`.

Source path: `GRWTSK/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Unitization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subalgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_range_le](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/lift-range-le--bd29a52e40f5072c6e09445d.md) | 61 | `result-track:bd29a52e40f5072c6e09445d6d66b2b0fc178d6fbfed1ce8867103ad621c76dd` |
| 2 | `theorem` | [lift_range](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/lift-range--8c117996541415fca4407e2b.md) | 70 | `result-track:8c117996541415fca4407e2bc62bdfcef0781d0f0dd7d01cf2f154fe75877fa0` |
| 3 | `def` | [unitization](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization--a22d27bd242380957e505ff1.md) | 85 | `declaration-track:a22d27bd242380957e505ff13e7143bd2d264c033d3db412319e7d87e4207410` |
| 4 | `theorem` | [unitization_apply](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-apply--0187aba75b4f98b83fb40786.md) | 89 | `result-track:0187aba75b4f98b83fb40786b142c49b7acddd9de84dec4d4f0b4a0b21e5303b` |
| 5 | `theorem` | [unitization_range](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-range--fdb8ea849a25d73d59ed3b92.md) | 93 | `result-track:fdb8ea849a25d73d59ed3b92d6648c9961fbec2e8076064b1c080c2a51b2efda` |
| 6 | `theorem` | [_root_.GRWTSK.Algebra.LiftRangeLe.Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.AlgHomClass.unitization_injective'](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/root-grwtsk-algebra-liftrangele-variantc3bf32612a9677b9bf7fb2e950130bcf0--67c30856badad73b241e27f9.md) | 104 | `result-track:67c30856badad73b241e27f9f587e2e5b7c1c24c6871b5e2cac33f04bc985f55` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.LiftRangeLe.Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.AlgHomClass.unitization_injective](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/root-grwtsk-algebra-liftrangele-variantc3bf32612a9677b9bf7fb2e950130bcf0--78d943b4331399ac59c78c98.md) | 122 | `result-track:78d943b4331399ac59c78c9860f3c798c318e828a1c6101117ac014de8053c1b` |
| 8 | `theorem` | [unitization_injective](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-injective--de7fbf0cf0927341f908dea4.md) | 135 | `result-track:de7fbf0cf0927341f908dea4648a97bbea67e1adc06cba4f8ceec0d680bd13ba` |
| 9 | `def` | [unitizationAlgEquiv](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitizationalgequiv--2329d4f3c94011e55878dccc.md) | 141 | `declaration-track:2329d4f3c94011e55878dcccda3785f404ca1265cd740d7d50b268c9f42f7cec` |
| 10 | `def` | [unitization](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization--e3dce678ca41bf9da11f07f2.md) | 168 | `declaration-track:e3dce678ca41bf9da11f07f2e76a502439bbece93fdd39f30f2c87e6102d403f` |
| 11 | `theorem` | [unitization_apply](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-apply--1b9c5e37dd0cb3c9c54c4c9b.md) | 172 | `result-track:1b9c5e37dd0cb3c9c54c4c9bbad249b21fae1634d9fef3d2cab1c4adac64dbdd` |
| 12 | `theorem` | [unitization_range](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-range--4cc80629e21248ec7154b779.md) | 175 | `result-track:4cc80629e21248ec7154b7793ed806381b98748d87e0e8d6dbd67f2e37f05214` |
| 13 | `def` | [unitization](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization--69f64209f5c9114ef54b51b0.md) | 190 | `declaration-track:69f64209f5c9114ef54b51b0a807b9818b6e2954fc6e4e8482496f668c648841` |
| 14 | `theorem` | [unitization_apply](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-apply--c3b5e0596c53a7e87372963c.md) | 194 | `result-track:c3b5e0596c53a7e87372963c8c57c4e8f9042a1102dd0cd5804304fb6f2e9524` |
| 15 | `theorem` | [unitization_range](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-range--78cea38edaf94e74cada5619.md) | 197 | `result-track:78cea38edaf94e74cada561927f81b7ca371ab65bb53da2737382b9fa714ef95` |
| 16 | `theorem` | [starLift_range_le](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/starlift-range-le--5ca6a8a01c26df77f3fb2981.md) | 212 | `result-track:5ca6a8a01c26df77f3fb29814efc78832d1ce5a6791c5d265e3fe0a828cd27ce` |
| 17 | `theorem` | [starLift_range](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/starlift-range--2422ea2a0bf845c1e2e6368b.md) | 222 | `result-track:2422ea2a0bf845c1e2e6368b1e2c47a94862269b80c5714bd43b5f73425da377` |
| 18 | `def` | [unitization](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization--509219af5962561803fbf29e.md) | 239 | `declaration-track:509219af5962561803fbf29e8eac65742cf13562a679a01cee0fd3855a6fd5e6` |
| 19 | `theorem` | [unitization_apply](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-apply--cfe413864d3e1804f38d273a.md) | 243 | `result-track:cfe413864d3e1804f38d273a8eee7caa33feee9ee02a6141dac85d8d4f7c584d` |
| 20 | `theorem` | [unitization_range](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-range--400f6ab3df0af7c0f9c86009.md) | 246 | `result-track:400f6ab3df0af7c0f9c86009a16c092013741cb0ba57bb7d42069088ca35f6f4` |
| 21 | `theorem` | [unitization_injective](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitization-injective--01df16b8387050a53b652968.md) | 260 | `result-track:01df16b8387050a53b6529685a0c19146346b928fb53f28cb518175e14e3d709` |
| 22 | `def` | [unitizationStarAlgEquiv](../../../../mathematics/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/declarations/unitizationstaralgequiv--cfea2ce42a7441bc24bb3dd7.md) | 266 | `declaration-track:cfea2ce42a7441bc24bb3dd7c3c6df2b41686574e56d70ba9d5d7f2e919fafcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
