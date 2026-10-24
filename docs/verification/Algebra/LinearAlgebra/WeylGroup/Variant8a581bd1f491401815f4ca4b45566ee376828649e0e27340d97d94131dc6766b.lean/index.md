# Verification target: GRWTSK.Algebra.LinearAlgebra.WeylGroup.Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7491e9b90cb78c2d12bc65f3e0c0cc2923c361a0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7491e9b90cb78c2d12bc65f3e0c0cc2923c361a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weylGroup](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgroup--0285598b99e27a7661cd3853.md) | 46 | `declaration-track:0285598b99e27a7661cd38538769b636201223e6f86cf3d04efccef5b33ac8ef` |
| 2 | `lemma` | [reflection_mem_weylGroup](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/reflection-mem-weylgroup--e7d21336705b3a6b358b48d2.md) | 49 | `result-track:e7d21336705b3a6b358b48d228927058235040af12fed4658ff461c157208536` |
| 3 | `def` | [weylGroup.ofIdx](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgroup-ofidx--e7ca51f83435c88537c2089a.md) | 53 | `declaration-track:e7ca51f83435c88537c2089a4748c5b31439e530b4f77c66bebdf0106fb4250a` |
| 4 | `lemma` | [weylGroup.ofIdx_smul](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgroup-ofidx-smul--20bed490c561b5b491cb8000.md) | 55 | `result-track:20bed490c561b5b491cb800092582d424464ac2f44eb2f290296debce5c8f687` |
| 5 | `lemma` | [weylGroup_toSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgroup-tosubmonoid--71c813b52c2404c7af600f90.md) | 60 | `result-track:71c813b52c2404c7af600f90ea39cd2c9b0a1de930979c0b069b12738b30210d` |
| 6 | `lemma` | [weylGroup.induction](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgroup-induction--cde01af6f58cada56953db5f.md) | 67 | `result-track:cde01af6f58cada56953db5f70ca6fea396bc35c494a430b96ca289bf19ac3e1` |
| 7 | `lemma` | [weylGroup.induction'](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgroup-induction--c4181dcc4a22661804a4b619.md) | 86 | `result-track:c4181dcc4a22661804a4b6196093afc238bef2645e38303b2147a55bed7380ca` |
| 8 | `lemma` | [range_weylGroup_weightHom](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/range-weylgroup-weighthom--b92a8ad1cdb7ccb28eca32d0.md) | 97 | `result-track:b92a8ad1cdb7ccb28eca32d088165b1f69f2a9c08ae4f59a9171a19ff90e14bc` |
| 9 | `lemma` | [range_weylGroup_coweightHom](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/range-weylgroup-coweighthom--f299af5db760012022052960.md) | 123 | `result-track:f299af5db760012022052960b07238c472880e86dd5260d7111b06ea68be5ec3` |
| 10 | `abbrev` | [weylGroupToPerm](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgrouptoperm--ee84d5f7c7f304c853a688a2.md) | 150 | `declaration-track:ee84d5f7c7f304c853a688a2b9a230d57f198cf2684cb019de05f820893ffc92` |
| 11 | `lemma` | [range_weylGroupToPerm](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/range-weylgrouptoperm--11999f4db8ca3c3318294080.md) | 152 | `result-track:11999f4db8ca3c3318294080ba6a785527275afc92a03526f7aee73614023770` |
| 12 | `def` | [weylGroupRootRep](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgrouprootrep--3ae109b9ff9a0b132e1d3572.md) | 178 | `declaration-track:3ae109b9ff9a0b132e1d3572a9128571ada8c3db7f99bdadf778a576bd89a47c` |
| 13 | `def` | [weylGroupCorootRep](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgroupcorootrep--a423cd113981684c2d32ba73.md) | 182 | `declaration-track:a423cd113981684c2d32ba7376a77894c376d187f603449af8df70feeeb68f51` |
| 14 | `lemma` | [weylGroup_apply_root](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/declarations/weylgroup-apply-root--f868054cfec484c7717a5ae2.md) | 185 | `result-track:f868054cfec484c7717a5ae28b41d1c4a8c150fc55bcc80ef947943102d1c8f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
