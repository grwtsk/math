# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37fed84919920dfe801b24108a4069343b93fc65",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37fed84919920dfe801b24108a4069343b93fc65`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Abelianization](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/abelianization--409b87605ab5a5fff2112b28.md) | 47 | `declaration-track:409b87605ab5a5fff2112b28e02a18056b57ebbe3bd5012a926b0d13d1f44b3a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/instance--620fbb225eec3ee0cf206d4f.md) | 53 | `declaration-track:620fbb225eec3ee0cf206d4f16d7ede4c61637be64658312666e709bdc185b4c` |
| 3 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/of--799f19c434824d7da4cb4689.md) | 59 | `declaration-track:799f19c434824d7da4cb46896feae9a3e448b4c3adf5534b5ef4587b8159452c` |
| 4 | `theorem` | [mk_eq_of](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/mk-eq-of--721d863e52ce75433c69f905.md) | 65 | `result-track:721d863e52ce75433c69f9050eaf1f7b384b5d19d258b82171c0ce0d2f10bf6b` |
| 5 | `theorem` | [ker_of](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/ker-of--3284186c669a15d1dfb3a1df.md) | 70 | `result-track:3284186c669a15d1dfb3a1dfae0e5ab1706403bd3437b79ed523c7aa6b984904` |
| 6 | `theorem` | [commutator_subset_ker](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/commutator-subset-ker--e5cca92aa06899c748fa0e01.md) | 80 | `result-track:e5cca92aa06899c748fa0e01092773d847867ed448cfaf8d142022a89872999a` |
| 7 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/lift--d7ac238b15b50713c48d0383.md) | 87 | `declaration-track:d7ac238b15b50713c48d0383af9fc3ac7986422fa949d5a320c73a49002f80f9` |
| 8 | `theorem` | [lift_apply_of](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/lift-apply-of--e444638aeac43aba68957924.md) | 93 | `result-track:e444638aeac43aba6895792443f6a36102180ee4ac708a3e04ad53592651d76f` |
| 9 | `theorem` | [coe_lift_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/coe-lift-symm--77570ddc0c0a16096279b88f.md) | 96 | `result-track:77570ddc0c0a16096279b88fcaf3398ec77eeac58b305a3d506a726ee9cff453` |
| 10 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/lift-symm-apply--b055e7ad19992095aa0d75db.md) | 99 | `result-track:b055e7ad19992095aa0d75db4eabba3bf808ca758ebead926955ea635a408339` |
| 11 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/lift-unique--26fcec268921bd3f4f3dcb3b.md) | 101 | `result-track:26fcec268921bd3f4f3dcb3b9fd9d78945fceb6b3beb3e54973cd0601ab5211d` |
| 12 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/lift-of--f74b3a0e708a0af72543c221.md) | 108 | `result-track:f74b3a0e708a0af72543c22168074e9be63a99e759c6311a0b992fd3dec7583e` |
| 13 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/hom-ext--598051db7f396ba679c1b8dc.md) | 117 | `result-track:598051db7f396ba679c1b8dcb7788fc646e2ce0f7380ac2a51aad8da3d37844e` |
| 14 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/map--bdd2f6eee4ca5dccc346f7eb.md) | 125 | `declaration-track:bdd2f6eee4ca5dccc346f7eb13ecae29aaf3c59d8a0b1c47517d149ba899568a` |
| 15 | `theorem` | [lift_of_comp](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/lift-of-comp--a75f2d487ada12fcc0a4ecac.md) | 129 | `result-track:a75f2d487ada12fcc0a4ecac51d9c5405883a9787abc6194049d51e1cd1d20a9` |
| 16 | `theorem` | [map_of](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/map-of--e45301d4d07d93594294b207.md) | 133 | `result-track:e45301d4d07d93594294b2079d9b7fc9fc22d4f2eb3f90f3783957720d3a5e76` |
| 17 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/map-id--ba366e704c9ba73468dd330a.md) | 137 | `result-track:ba366e704c9ba73468dd330a90524eb22190c70fc7302071fff8958a3ba1459a` |
| 18 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/map-comp--6cf0bb262d147f26e770927c.md) | 141 | `result-track:6cf0bb262d147f26e770927c8202e3289c6b93a362c3579d11024bc2b5058772` |
| 19 | `theorem` | [map_map_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/map-map-apply--35d62725664dbb7939c23c92.md) | 145 | `result-track:35d62725664dbb7939c23c922c17c3122d4c4b434b75cec054eaf04baa489d22` |
| 20 | `def` | [MulEquiv.abelianizationCongr](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/mulequiv-abelianizationcongr--ce9d2b0f6f0d22927d860f75.md) | 158 | `declaration-track:ce9d2b0f6f0d22927d860f7548f7f20121e1707eb5e6445c09d3cf06b76ecbc9` |
| 21 | `theorem` | [abelianizationCongr_of](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/abelianizationcongr-of--a76dd14de0f4fb673c96c3b8.md) | 170 | `result-track:a76dd14de0f4fb673c96c3b8d40792e8f0a10d8bca38e380461dbe228b0fbc05` |
| 22 | `theorem` | [abelianizationCongr_refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/abelianizationcongr-refl--11822a4df8131190e11beece.md) | 175 | `result-track:11822a4df8131190e11beece981a9def9bf95f9510d94b685f41bb299ee0f062` |
| 23 | `theorem` | [abelianizationCongr_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/abelianizationcongr-symm--f1d1ad41f73840f2469a380f.md) | 180 | `result-track:f1d1ad41f73840f2469a380f702c5d5d4f3ba446da23932aa39c8c6922914c18` |
| 24 | `theorem` | [abelianizationCongr_trans](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/abelianizationcongr-trans--30fbd9eec3c8138e04201393.md) | 185 | `result-track:30fbd9eec3c8138e04201393fa6ced1c7ac5437aa641d685b21db72d55f1180c` |
| 25 | `def` | [Abelianization.equivOfComm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/abelianization-equivofcomm--de1888f905e65774ea9d1b46.md) | 193 | `declaration-track:de1888f905e65774ea9d1b46653cde6336085b290b60beba99a880334438251d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9e1b4897598ffc94f90ff15288129d42fdea0b96f0a8d8ae49c3d041cb383757.lean/declarations/instance--4fd17e44e2d003dd17422753.md) | 201 | `declaration-track:4fd17e44e2d003dd1742275346dc2c8117a41c6f564dec59dbb134e528a3d166` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
