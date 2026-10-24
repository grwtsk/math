# Verification target: GRWTSK.Algebra.LinearAlgebra.GradedModule.Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f84a26306600b1ddfa9c03f56c6b33f0f90efb3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f84a26306600b1ddfa9c03f56c6b33f0f90efb3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GdistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/gdistribmulaction--d0779817bef37945826d0f64.md) | 37 | `declaration-track:d0779817bef37945826d0f6438aaed41dc55ee349f9464660116bbcdf3a69c13` |
| 2 | `class` | [Gmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/gmodule--1e7e093dbecbac11794b14b2.md) | 44 | `declaration-track:1e7e093dbecbac11794b14b26ba401fa19106d20009679557b7d423e896ec547` |
| 3 | `instance` | [GSemiring.toGmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/gsemiring-togmodule--e8489a18bfde4054d96c291a.md) | 51 | `declaration-track:e8489a18bfde4054d96c291adae7b6d27f52e9418263ccabc6cb8409f317c43f` |
| 4 | `def` | [gsmulHom](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/gsmulhom--851b3c5f3deb34e16c08a194.md) | 64 | `declaration-track:851b3c5f3deb34e16c08a1946a6f5d325b465d2b78c290774c18c96e1066e616` |
| 5 | `def` | [smulAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/smuladdmonoidhom--247a514769175112b68fadea.md) | 77 | `declaration-track:247a514769175112b68fadeaf3d0baf74b33d0c553b12b7694e8270fcceb83bb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/instance--62a4a36147e287460162e60e.md) | 88 | `declaration-track:62a4a36147e287460162e60ed5f0c3204f8a34da5e05b06de09a86a44776102d` |
| 7 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/smul-def--32af9fb8b47aa5d7d56420b0.md) | 92 | `result-track:32af9fb8b47aa5d7d56420b08e6ffd79676478990ca71e333ae07cd0744dbb24` |
| 8 | `theorem` | [smulAddMonoidHom_apply_of_of](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/smuladdmonoidhom-apply-of-of--b8950259de682632dcc27449.md) | 97 | `result-track:b8950259de682632dcc2744920d06ea977cc79ae132ad7e90d2d6a2551f73626` |
| 9 | `theorem` | [of_smul_of](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/of-smul-of--3c0bcb2bf311e892a7d50d53.md) | 104 | `result-track:3c0bcb2bf311e892a7d50d53a570e4c60ef5ac8eba5606658324b0563a24f2d6` |
| 10 | `theorem` | [one_smul'](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/one-smul--c90c350f9ed58c90a79b4e21.md) | 113 | `result-track:c90c350f9ed58c90a79b4e21cdb27299a29e8be167fe536146bacf890fe29d7e` |
| 11 | `theorem` | [mul_smul'](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/mul-smul--fe58341b179c87fe3fc6d74b.md) | 123 | `result-track:fe58341b179c87fe3fc6d74bffcd1caea8660430bb12be1896e557dcc7e4a562` |
| 12 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/module--e930d5a14123e29add9e55bf.md) | 143 | `declaration-track:e930d5a14123e29add9e55bff01947421e6ddd1928aef9f070b2b19f09dfdcc9` |
| 13 | `instance` | [gmulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/gmulaction--a3573e2d415b24c012e29617.md) | 173 | `declaration-track:a3573e2d415b24c012e29617a5ff831e9bb468258d5f434ec68aa1b3168c5dbe` |
| 14 | `instance` | [gdistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/gdistribmulaction--670a5e298dc3282f356c3420.md) | 182 | `declaration-track:670a5e298dc3282f356c34209be945727efb9fb5428c4f3fe30cd13b07ed086b` |
| 15 | `instance` | [gmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/gmodule--aa9efac03d09080e61a2cfb7.md) | 196 | `declaration-track:aa9efac03d09080e61a2cfb762565208b8198c29306da55205c79d3b99b6b041` |
| 16 | `def` | [isModule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/ismodule--41eba205b6977241087c0838.md) | 215 | `declaration-track:41eba205b6977241087c083887f9f0b68b8eb5b963a0efffb6f9311265767a96` |
| 17 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/declarations/linearequiv--9198773b5c627939adb45072.md) | 223 | `declaration-track:9198773b5c627939adb4507217605700981d610e5b04576b1064bbb7a16d4994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
