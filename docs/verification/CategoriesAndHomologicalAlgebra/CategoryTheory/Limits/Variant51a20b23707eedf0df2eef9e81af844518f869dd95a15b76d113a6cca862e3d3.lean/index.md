# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcd5c405348ac3aadd15a07ac60beae012f11538",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcd5c405348ac3aadd15a07ac60beae012f11538`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorialityRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/functorialityrightadjoint--b60f54aaefcfd4d5fa4d1f21.md) | 57 | `declaration-track:b60f54aaefcfd4d5fa4d1f21922749b1eb1cc02dabb377d7dced327a19fb7105` |
| 2 | `def` | [functorialityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/functorialityunit--24bbef2aefb55eab21532d19.md) | 69 | `declaration-track:24bbef2aefb55eab21532d19dbb222407ce9a6db1d2c5d76c30b9c0fdae2143a` |
| 3 | `def` | [functorialityCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/functorialitycounit--d04cb8ccb982c0909e29e60a.md) | 79 | `declaration-track:d04cb8ccb982c0909e29e60ade8f000d7d7327e4bdd558e8048544f516f538c5` |
| 4 | `def` | [functorialityIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/functorialityisleftadjoint--0e0bdaff33179440cd7da805.md) | 85 | `declaration-track:0e0bdaff33179440cd7da805bace76565b907a3ed92bb7b995d0828064de28f7` |
| 5 | `def` | [leftAdjointPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/leftadjointpreservescolimits--338123d38846880f904fa5e1.md) | 96 | `declaration-track:338123d38846880f904fa5e1cc2f3576c7296a80b81251adb62a6862ced88758` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/instance--8857fd723c2887c87a1d3c39.md) | 106 | `declaration-track:8857fd723c2887c87a1d3c39319f229b2e51c71c02b48b3bc64a18adc410a4e2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/instance--0d72dda5b4142a3f5136beaf.md) | 112 | `declaration-track:0d72dda5b4142a3f5136beafc26a0657b6b6af464c964494bdc7ca960dc05893` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/instance--10ea843188df0a46a558f457.md) | 121 | `declaration-track:10ea843188df0a46a558f45773adff736f60407252e5149ceee00ebe63dbe4b7` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/example--5686852cc4d78be5bf815892.md) | 131 | `declaration-track:5686852cc4d78be5bf8158928b0a4ee0694baa3f71da972afb341f327739e510` |
| 10 | `theorem` | [hasColimit_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/hascolimit-comp-equivalence--5c523441a0709dd2615b001e.md) | 135 | `result-track:5c523441a0709dd2615b001ed3537bd688df1bdbadfd456da44d6f6affe469c0` |
| 11 | `theorem` | [hasColimit_of_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/hascolimit-of-comp-equivalence--95c5c5de457ef584b05f02a8.md) | 142 | `result-track:95c5c5de457ef584b05f02a881d532f492b3c2dcdc600691f91855ab36443940` |
| 12 | `theorem` | [hasColimitsOfShape_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/hascolimitsofshape-of-equivalence--9773176d6a228477fde6b85a.md) | 150 | `result-track:9773176d6a228477fde6b85a5b9f439550a4bb194b80d08b88b9db2997ad838b` |
| 13 | `theorem` | [has_colimits_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/has-colimits-of-equivalence--f2b425c191c9a779268dc239.md) | 156 | `result-track:f2b425c191c9a779268dc2399111eb42d357c0e716cb18fdc511dcd9a1edcbd2` |
| 14 | `def` | [functorialityLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/functorialityleftadjoint--516fbb2c853c545479375b73.md) | 171 | `declaration-track:516fbb2c853c545479375b73f2b2ca19211725c601add7161ce5d2a909f68e3f` |
| 15 | `def` | [functorialityUnit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/functorialityunit--7e9e304ec948b5300211a37b.md) | 183 | `declaration-track:7e9e304ec948b5300211a37b5e22faae9d354a62ef3d4dafc050422f100ec256` |
| 16 | `def` | [functorialityCounit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/functorialitycounit--ec5a98d0cd0e73a3260e2fa3.md) | 193 | `declaration-track:ec5a98d0cd0e73a3260e2fa3dbb38dcc84c2c58e7af0704c34d81bd4cacacb68` |
| 17 | `def` | [functorialityIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/functorialityisrightadjoint--84a0a2e6b128c4d9f48aaecf.md) | 199 | `declaration-track:84a0a2e6b128c4d9f48aaecf73dd8f40cfdab4f53ecd059cbf81489bb9c6f2e8` |
| 18 | `def` | [rightAdjointPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/rightadjointpreserveslimits--320223921cc9992b6b146d57.md) | 210 | `declaration-track:320223921cc9992b6b146d57447aaff0032afe60d298e11e7c6d9600f73bab30` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/instance--7a330fbba3092d571007f26b.md) | 220 | `declaration-track:7a330fbba3092d571007f26b68f3ec3ba2e7d4195f798ee6bcbfcb8ed0794f3e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/instance--3d1b6bb8801f85b2204591d4.md) | 226 | `declaration-track:3d1b6bb8801f85b2204591d4bd74a8bffd05ddbe5eff8e8320122aaa40f448fa` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/instance--c082048d776bb8a325ccface.md) | 235 | `declaration-track:c082048d776bb8a325ccface614eff001c53e1e17196d4ea79c60d2d2a879b75` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/example--568de85f4b622a878ecf98a7.md) | 245 | `declaration-track:568de85f4b622a878ecf98a79609c83e1e3f5b16cce9b28323720b3a28031b4d` |
| 23 | `theorem` | [hasLimit_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/haslimit-comp-equivalence--cb1f854cab2c776cf722edc9.md) | 248 | `result-track:cb1f854cab2c776cf722edc999eb985415276ceca8411c4dfca7c149cb817f7b` |
| 24 | `theorem` | [hasLimit_of_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/haslimit-of-comp-equivalence--90499eb03d01b91d29c1a935.md) | 254 | `result-track:90499eb03d01b91d29c1a9353af19a3076f05ed74a8d85b46bc1edf18e31232b` |
| 25 | `theorem` | [hasLimitsOfShape_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/haslimitsofshape-of-equivalence--b98dcaffaa5512150826367d.md) | 262 | `result-track:b98dcaffaa5512150826367d30b470b4daf0cf82a547b98fc6b081f858e14361` |
| 26 | `theorem` | [has_limits_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/has-limits-of-equivalence--98821b724ff4408dfe084e48.md) | 268 | `result-track:98821b724ff4408dfe084e480b0fe3d5167c8cc239e8708b828b0ae6928559d4` |
| 27 | `def` | [coconesIsoComponentHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/coconesisocomponenthom--08ea6233295c379f9cac8e5f.md) | 277 | `declaration-track:08ea6233295c379f9cac8e5f80991b4c2561cbc9df84d1043f1fa3c3cf493f46` |
| 28 | `def` | [coconesIsoComponentInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/coconesisocomponentinv--c17cc0ff046980a4210d148e.md) | 288 | `declaration-track:c17cc0ff046980a4210d148e8a6589edad2ffdb08c3e40849382db8da037e3aa` |
| 29 | `def` | [conesIsoComponentHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/conesisocomponenthom--ae43f4142107cc62d8957526.md) | 298 | `declaration-track:ae43f4142107cc62d89575263b88a05e5eb108d2b2fe85912a0ed81ac34e2909` |
| 30 | `def` | [conesIsoComponentInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/conesisocomponentinv--a0e2ad129b11136d3b7352bd.md) | 308 | `declaration-track:a0e2ad129b11136d3b7352bd520ab5219fd49abc1d7ea3b624b7ce7969b17f18` |
| 31 | `def` | [coconesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/coconesiso--1a8bc59539b407d7fd4f6ca7.md) | 326 | `declaration-track:1a8bc59539b407d7fd4f6ca76e8091958669095c0810aaf247ad2bdb8eb44c34` |
| 32 | `def` | [conesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/declarations/conesiso--458eba7fc179931cf5381072.md) | 339 | `declaration-track:458eba7fc179931cf53810725ba65e0681001c8883bb6f8739b24ab8ee99c747` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
