# Verification target: GRWTSK.Algebra.CommutativeAlgebra.GroupRingAction.Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7801f5c753350b0b476aa3c31c569e2e1193d7d4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7801f5c753350b0b476aa3c31c569e2e1193d7d4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_map](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/smul-eq-map--a65b6c529e7e9211c5dc5262.md) | 30 | `result-track:a65b6c529e7e9211c5dc5262a362e324434e27c1a5fafd7c2d526103c17fe5e7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/instance--d451bd8aa94c6f68d5057aad.md) | 40 | `declaration-track:d451bd8aa94c6f68d5057aad663229d98a7d55aaa7791a1a44e4e235eb76a7bb` |
| 3 | `theorem` | [smul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/smul-x--9c573fc5209d129e5af5cc6a.md) | 51 | `result-track:9c573fc5209d129e5af5cc6a60291a1ff6d06122daf8ff3e8df031ff6c90f41a` |
| 4 | `theorem` | [smul_eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/smul-eval-smul--a310262af3a3474e0dde3f08.md) | 56 | `result-track:a310262af3a3474e0dde3f0871c01ead7d62ca31dc0d1eb5d4d12deb9f90254b` |
| 5 | `theorem` | [eval_smul'](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/eval-smul--6b6d0d3c5e7a44f7c0d33bcc.md) | 64 | `result-track:6b6d0d3c5e7a44f7c0d33bcc4b64524db78efc4292f49a6ae73708d660bdf3a8` |
| 6 | `theorem` | [smul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/smul-eval--c1d19c3a68cc3d28db4ad4c4.md) | 68 | `result-track:c1d19c3a68cc3d28db4ad4c4bcbd4025555b61f7089828496b2bd0e12eea8a99` |
| 7 | `def` | [prodXSubSMul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/prodxsubsmul--32090cdf8ef375ee1ff0d970.md) | 82 | `declaration-track:32090cdf8ef375ee1ff0d9706de8a0a9547b11f026fd133d85abb79d78058540` |
| 8 | `theorem` | [prodXSubSMul.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/prodxsubsmul-monic--1c635234f234108fb899a724.md) | 87 | `result-track:1c635234f234108fb899a7240897ff4425cb868c787be759c1b68f5a47d278cb` |
| 9 | `theorem` | [prodXSubSMul.eval](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/prodxsubsmul-eval--2f631dbc0392fddeb7a25382.md) | 90 | `result-track:2f631dbc0392fddeb7a25382d7c37f952916ae799282d52d937ca03b8f2ec0e2` |
| 10 | `theorem` | [prodXSubSMul.smul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/prodxsubsmul-smul--657bddb9f9cd809c1049b9db.md) | 95 | `result-track:657bddb9f9cd809c1049b9db5d9518e0f44b7046517ba700d755db07a9a26cab` |
| 11 | `theorem` | [prodXSubSMul.coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/prodxsubsmul-coeff--0420e0ceab65fc603e38bf25.md) | 101 | `result-track:0420e0ceab65fc603e38bf2544984e86b78e563ab2d65a00e59c3a2d86fc3bc1` |
| 12 | `def` | [polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/polynomial--c1cc347cf221019271d817ff.md) | 116 | `declaration-track:c1cc347cf221019271d817ff6aa2cf69242baab05322a0a7c75b3841ef823245` |
| 13 | `theorem` | [coe_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/declarations/coe-polynomial--b5eb3e8fcad3f6cf09fc7801.md) | 134 | `result-track:b5eb3e8fcad3f6cf09fc780155a68d39753bc07b8e61a39a69c3fcede9407e8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
