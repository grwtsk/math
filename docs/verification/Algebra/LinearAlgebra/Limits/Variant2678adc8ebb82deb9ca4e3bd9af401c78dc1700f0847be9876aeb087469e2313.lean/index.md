# Verification target: GRWTSK.Algebra.LinearAlgebra.Limits.Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcdd78dcfaa888f0a5e16d9295e5d498c673e871",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcdd78dcfaa888f0a5e16d9295e5d498c673e871`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectLimit` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addCommGroupObj](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/addcommgroupobj--9dc5d76462e356f75e79cc73.md) | 37 | `declaration-track:9dc5d76462e356f75e79cc7326c1d7aedcbf069f4d4e7488e0751f5abc533f74` |
| 2 | `instance` | [moduleObj](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/moduleobj--045d4e2f7ad3e3bdfbd2b998.md) | 44 | `declaration-track:045d4e2f7ad3e3bdfbd2b9985e40d10c24ed0ff93ec85abd4ad627670ac2c3bd` |
| 3 | `def` | [sectionsSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/sectionssubmodule--7aafa1dea005a41f40c52d0a.md) | 52 | `declaration-track:7aafa1dea005a41f40c52d0a69cd7c64903100276014f58e797e30162b331936` |
| 4 | `instance` | [limitAddCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/limitaddcommmonoid--79a46448bb1dd80154d37475.md) | 65 | `declaration-track:79a46448bb1dd80154d374759eaf2b7f6065d15fd865d9fb27f5c4693ece7143` |
| 5 | `instance` | [limitAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/limitaddcommgroup--72892e95581ce2606fedbe99.md) | 70 | `declaration-track:72892e95581ce2606fedbe99ce8fb8ac56308b8d5410d0e2cdac54e73f962eb9` |
| 6 | `instance` | [limitModule](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/limitmodule--273195e7dcd1ecc5a9015b21.md) | 75 | `declaration-track:273195e7dcd1ecc5a9015b21b6185a8e00c179e59b3a919f5de15e4a0f292884` |
| 7 | `def` | [limitπLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/limit-linearmap--09987b293400725722808810.md) | 81 | `declaration-track:09987b2934007257228088101696cd19cc65a1b013bd268e9110ddfa75b11d93` |
| 8 | `def` | [limitCone](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/limitcone--133259e58d51215322fc8877.md) | 97 | `declaration-track:133259e58d51215322fc88775c7e3738dd0d8a76f936650b841033980334f6c7` |
| 9 | `def` | [limitConeIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/limitconeislimit--67c2ed2ab3b948d8a6b26aa6.md) | 108 | `declaration-track:67c2ed2ab3b948d8a6b26aa6dd39d04b95ca8b153f780d811329216ab6cf8c78` |
| 10 | `lemma` | [hasLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/haslimitsofsize--25919957355ffb7d84661757.md) | 127 | `result-track:25919957355ffb7d84661757711ed2ab6a08d2ffa82ddb5ce60a2123bb077461` |
| 11 | `instance` | [hasLimits](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/haslimits--5e82d278aaebb23d38604714.md) | 134 | `declaration-track:5e82d278aaebb23d3860471446f9f3d9547295c627f4b1ea67c072e0c84ebbd8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/instance--431a4706ea87f72c0b56d61d.md) | 138 | `declaration-track:431a4706ea87f72c0b56d61d8ea5f54877614e01859dc5d2d5fb3d32e786c162` |
| 13 | `def` | [forget₂AddCommGroupPreservesLimitsAux](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/forget-addcommgrouppreserveslimitsaux--6f125d1eacb50fd6bcb2d962.md) | 143 | `declaration-track:6f125d1eacb50fd6bcb2d962838bab610fea2b4bf02b07fdf33366e9255d761d` |
| 14 | `instance` | [forget₂AddCommGroupPreservesLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/forget-addcommgrouppreserveslimitsofsize--84a238235c71d5774fa96454.md) | 151 | `declaration-track:84a238235c71d5774fa964542fefdd1251be36704d9fedaf5da3c8d08c8528c4` |
| 15 | `instance` | [forget₂AddCommGroupPreservesLimits](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/forget-addcommgrouppreserveslimits--eff4c26b5fa66ad4e61bc8f4.md) | 159 | `declaration-track:eff4c26b5fa66ad4e61bc8f463404cc2be7064d65c57424dd6c237070f2855c2` |
| 16 | `instance` | [forgetPreservesLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/forgetpreserveslimitsofsize--fb8678b8d4ac5df6f029022f.md) | 166 | `declaration-track:fb8678b8d4ac5df6f029022f73a2d7c650f365bc823b4caccd6ff794bd0c36d6` |
| 17 | `instance` | [forgetPreservesLimits](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/forgetpreserveslimits--7f3cc9339e13097817a7f845.md) | 173 | `declaration-track:7f3cc9339e13097817a7f84578d4efd65a2010140d3cb0eaa1ccdc1b4ba8d1cb` |
| 18 | `def` | [directLimitDiagram](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/directlimitdiagram--b07f76b934e0b2f5ee3c3515.md) | 194 | `declaration-track:b07f76b934e0b2f5ee3c3515338687007739a66e85ffec17ccd19a23ff41cf69` |
| 19 | `def` | [directLimitCocone](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/directlimitcocone--2d0b058365f837bff36e784d.md) | 215 | `declaration-track:2d0b058365f837bff36e784d52497d94f0ff57e3a04507ee39980bdc0d4a6296` |
| 20 | `def` | [directLimitIsColimit](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/declarations/directlimitiscolimit--261079fe2ab2991ecb595dfc.md) | 228 | `declaration-track:261079fe2ab2991ecb595dfc746f422256d5bb94c5db5c3d512f2a326e2250fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
