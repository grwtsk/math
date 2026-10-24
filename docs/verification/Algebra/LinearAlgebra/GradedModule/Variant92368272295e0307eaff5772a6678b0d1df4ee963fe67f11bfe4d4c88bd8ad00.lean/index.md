# Verification target: GRWTSK.Algebra.LinearAlgebra.GradedModule.Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38d35b50d135ef0358006d3fc1b23c0ffc5a611a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38d35b50d135ef0358006d3fc1b23c0ffc5a611a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GdistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/gdistribmulaction--a9ea21bf21bfab86b5d38d8b.md) | 43 | `declaration-track:a9ea21bf21bfab86b5d38d8beb98f2d2806d9a5aaa79011c38ecca468c7a0268` |
| 2 | `class` | [Gmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/gmodule--38373a95b71bee31ce76000d.md) | 49 | `declaration-track:38373a95b71bee31ce76000d8cb872a0828311e63e26383e08902a196e88ec68` |
| 3 | `instance` | [GSemiring.toGmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/gsemiring-togmodule--b447a1c39cb3ed64396f692d.md) | 55 | `declaration-track:b447a1c39cb3ed64396f692d1521c94bb1fdc7c02c8e223eab1eb6d7d92c2c36` |
| 4 | `def` | [gsmulHom](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/gsmulhom--8d41694c7390537ddff18a35.md) | 67 | `declaration-track:8d41694c7390537ddff18a35a8ae31d28e464077fa1f63ece02909443c90a864` |
| 5 | `def` | [smulAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/smuladdmonoidhom--7e7230e297d797060966a955.md) | 79 | `declaration-track:7e7230e297d797060966a955f7921fca1473697a7fb0e001c4cf7ca46f1ce2b6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/instance--6f048a472ad775e206cd35c7.md) | 89 | `declaration-track:6f048a472ad775e206cd35c76475ae6c65b77e227302efdc66ac4bfd0a36820e` |
| 7 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/smul-def--91e797742f1447f580a15175.md) | 94 | `result-track:91e797742f1447f580a151755befaa6ec999479b4ce48272e40f1ffbe70a5609` |
| 8 | `theorem` | [smulAddMonoidHom_apply_of_of](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/smuladdmonoidhom-apply-of-of--e6bed3683dda86327c167e79.md) | 99 | `result-track:e6bed3683dda86327c167e79675344e194bb383e43a1ecf6952900107d932249` |
| 9 | `theorem` | [of_smul_of](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/of-smul-of--ec208a7c44b1ddb607fd45b9.md) | 104 | `result-track:ec208a7c44b1ddb607fd45b91ae79932853113273be45e27723ed88c0ec4e704` |
| 10 | `theorem` | [one_smul'](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/one-smul--c8a563cdba68843f2c120211.md) | 111 | `result-track:c8a563cdba68843f2c12021163ca2034abd5ff9a04bd7085f39a616d5295f3ac` |
| 11 | `theorem` | [mul_smul'](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/mul-smul--b259ee6d9566650a9102c994.md) | 121 | `result-track:b259ee6d9566650a9102c9948a471c356c1b9b297c5181ed9955b27a41514c1c` |
| 12 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/module--319cd2b3cac0a0bcd452296d.md) | 142 | `declaration-track:319cd2b3cac0a0bcd452296d5ed7d47a97bf33956f189027fe2536b3ad45deb8` |
| 13 | `instance` | [gmulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/gmulaction--bc4d11ccccf84574f5aa9889.md) | 169 | `declaration-track:bc4d11ccccf84574f5aa9889b3a92defbdaa244dd09052487ae9c783f00643e2` |
| 14 | `instance` | [gdistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/gdistribmulaction--6f5f125925748bed61f1ddc4.md) | 176 | `declaration-track:6f5f125925748bed61f1ddc46f5431314403c5334aee8b6d4b7701b271f3d378` |
| 15 | `instance` | [gmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/gmodule--5da1aed90d90fecb322e48c5.md) | 188 | `declaration-track:5da1aed90d90fecb322e48c50eb47b339a28492d35416e2215be70b95272e7ae` |
| 16 | `def` | [isModule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/ismodule--23ae381f2c48336f6b93141d.md) | 204 | `declaration-track:23ae381f2c48336f6b93141dea01273decda704b4bcdac8abfcf5ace594752a6` |
| 17 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant92368272295e0307eaff5772a6678b0d1df4ee963fe67f11bfe4d4c88bd8ad00.lean/declarations/linearequiv--5181619b5a71417deb7dbf65.md) | 211 | `declaration-track:5181619b5a71417deb7dbf65a05792cbb3ff051c753ba0fc7030789f34c23f41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
