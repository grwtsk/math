# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Set.Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "832e341417bb1f35122acb5e45447c533f82ba1a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `832e341417bb1f35122acb5e45447c533f82ba1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean.json)

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
| 1 | `theorem` | [small_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-subset--37c4c13c7748efd08999ee96.md) | 22 | `result-track:37c4c13c7748efd08999ee96779903577b4b442bc73888803b02fcde5bc5a894` |
| 2 | `instance` | [small_powerset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-powerset--34e1ab100414cad1db7daead.md) | 25 | `declaration-track:34e1ab100414cad1db7daeadb5bf9e296827ebcf1e585629ed8a0bc388785225` |
| 3 | `instance` | [small_setProd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-setprod--458afcf6d80d46a946bb937d.md) | 28 | `declaration-track:458afcf6d80d46a946bb937d2d854f408021a67affe59e674eb519cb4bed2440` |
| 4 | `instance` | [small_setPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-setpi--641edc749dc880cac42b484a.md) | 32 | `declaration-track:641edc749dc880cac42b484aab383dc6746d750ffae4ddb12cef794ef2408379` |
| 5 | `instance` | [small_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-range--72c7f467adb39c8db4788694.md) | 36 | `declaration-track:72c7f467adb39c8db47886943f46f3f64c10462c7036431c19ef09861be8f468` |
| 6 | `instance` | [small_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-image--0e972944724590840478543f.md) | 40 | `declaration-track:0e972944724590840478543f5f7dfb933d3b7637bab7154a31988cdd3942a8ef` |
| 7 | `instance` | [small_image2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-image2--42d8ac42511ff27e39b4310c.md) | 44 | `declaration-track:42d8ac42511ff27e39b4310c3572e78ed1474ec4e152c8da9ea1cf45b321ca3f` |
| 8 | `theorem` | [small_univ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-univ-iff--5b4facdb5fbc223a07fe390f.md) | 49 | `result-track:5b4facdb5fbc223a07fe390f9778262bff5e5b06fcdae1917c867bebdd4e4261` |
| 9 | `instance` | [small_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-univ--6427adde5bd688f4d9a3689f.md) | 52 | `declaration-track:6427adde5bd688f4d9a3689fc156216d7232300af57ffa58a4540f0680a63fa3` |
| 10 | `instance` | [small_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-union--42bc4cd829ec8647fabba677.md) | 55 | `declaration-track:42bc4cd829ec8647fabba6778e9c769abcd62db4b85473ea5bb90317df2dba6f` |
| 11 | `instance` | [small_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-iunion--3f6d404415bbe7d16d931958.md) | 60 | `declaration-track:3f6d404415bbe7d16d931958a6b6efccb159c67fc20157022aab7caf08297c01` |
| 12 | `instance` | [small_sUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-sunion--ac5159907130adeca4dd6d08.md) | 64 | `declaration-track:ac5159907130adeca4dd6d08201b0064037d7f8625267bdb1f04c32679390f9f` |
| 13 | `instance` | [small_biUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-biunion--0b12a3e975c74a625c89f2ef.md) | 68 | `declaration-track:0b12a3e975c74a625c89f2ef558ab7c757333de7e4552e2f1d14ef7cdc1b9f35` |
| 14 | `instance` | [small_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-insert--ba25f56a041414cc1f763d39.md) | 72 | `declaration-track:ba25f56a041414cc1f763d3956c48f6f2f03158cb4e9545c0eee311beb01961f` |
| 15 | `instance` | [small_diff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-diff--f52246d6c2d7a845f7b34f4a.md) | 76 | `declaration-track:f52246d6c2d7a845f7b34f4ad88e92e7bbc48202d8e12409f3ec60bb147c8c65` |
| 16 | `instance` | [small_sep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-sep--6801ff737d4e429a75194f98.md) | 79 | `declaration-track:6801ff737d4e429a75194f9893280c17acb7268327077a3a8b44ea9a4d64c863` |
| 17 | `instance` | [small_inter_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-inter-of-left--732c73700e4a226a711e913d.md) | 83 | `declaration-track:732c73700e4a226a711e913de9d5f84f06a65836f280f136d9aa0323c7ab8993` |
| 18 | `instance` | [small_inter_of_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-inter-of-right--2ead3c6fac7da4173ea54fa0.md) | 87 | `declaration-track:2ead3c6fac7da4173ea54fa037d79df1ce73dbc9f7bb091914254a603f794e36` |
| 19 | `theorem` | [small_iInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-iinter--29bfe7670dc2ecf3907523f3.md) | 91 | `result-track:29bfe7670dc2ecf3907523f3df0c3905c6c7a1c2de626378ed80901895de90d1` |
| 20 | `instance` | [small_iInter'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-iinter--bcf0333ac3546ca80e75d019.md) | 95 | `declaration-track:bcf0333ac3546ca80e75d0191f54d8715db6a241ee616d236dd260d1314ec62c` |
| 21 | `theorem` | [small_sInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-sinter--f8ba35e1f00be8f482d0e7fb.md) | 100 | `result-track:f8ba35e1f00be8f482d0e7fb657b08c5bbdd51d9b70e7fa59dac2251680aebba` |
| 22 | `instance` | [small_sInter'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-sinter--25beaf94f9f6b6b8046495a3.md) | 104 | `declaration-track:25beaf94f9f6b6b8046495a3ef79525153714dc73cc2257c6e818d15ee4d76e5` |
| 23 | `theorem` | [small_biInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-biinter--a5728946c4fef4eb4f9fec4b.md) | 109 | `result-track:a5728946c4fef4eb4f9fec4b0e60b17a48df931538f21c68b2a88b29f7ef052b` |
| 24 | `instance` | [small_biInter'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-biinter--e22656518ea9241ac03acfc9.md) | 113 | `declaration-track:e22656518ea9241ac03acfc95c96b4f1cecad2c3efc69b56a6473ca843a21001` |
| 25 | `theorem` | [small_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-empty--247937513255e92221f2c47c.md) | 118 | `result-track:247937513255e92221f2c47cb89599cd46bd0619d47c056a71bbc009563a00ee` |
| 26 | `theorem` | [small_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-single--a917a1ec7fbe4908fd38cdef.md) | 121 | `result-track:a917a1ec7fbe4908fd38cdef78632b4e3953d4f78687d42d6fd08f836bc1f97f` |
| 27 | `theorem` | [small_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant92ab403dc8efea34c236b7ddb4146bf484deccced7fa0d9d1cd4ab04a1efa00f.lean/declarations/small-pair--b7b602cc88203d1a999674b3.md) | 124 | `result-track:b7b602cc88203d1a999674b330099a332f6c27ec34c38d2ed100ce32a528f433` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
