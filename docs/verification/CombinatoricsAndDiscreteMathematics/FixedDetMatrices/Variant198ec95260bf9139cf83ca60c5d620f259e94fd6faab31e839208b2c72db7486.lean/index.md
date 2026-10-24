# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FixedDetMatrices.Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f2e3e14a62fe92c4d2860a0ec6575c63c23ced4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f2e3e14a62fe92c4d2860a0ec6575c63c23ced4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedDetMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/fixeddetmatrix--f57cf333f735f7868c6014bc.md) | 33 | `declaration-track:f57cf333f735f7868c6014bcb53548a76388add313b21d617fd3ff28ffe17b60` |
| 2 | `lemma` | [ext'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/ext--ed79e23bd0bfb710692d432d.md) | 42 | `result-track:ed79e23bd0bfb710692d432d56a9029d7346bd63061e661e9017ca93d5bef226` |
| 3 | `lemma` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/ext--4f2c23f8dcd1335b91c711dc.md) | 47 | `result-track:4f2c23f8dcd1335b91c711dc21a97704c9def58bdaf8d397615b9f93aa587bda` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/instance--13c88f40aa9ee289dcedf686.md) | 52 | `declaration-track:13c88f40aa9ee289dcedf6864d45955ceef0ca7d7716b8b32e1d6bd682c31982` |
| 5 | `lemma` | [smul_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/smul-def--4f852c7f51a8ad22ef571019.md) | 55 | `result-track:4f852c7f51a8ad22ef571019a1306c8c0f788769c4be6ee3c0f7825f68d0f702` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/instance--3797c7d52f0af57594c4e89a.md) | 59 | `declaration-track:3797c7d52f0af57594c4e89a1bab72a8ece5fa54ba2cf5ce681307b3e1607cd0` |
| 7 | `lemma` | [smul_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/smul-coe--9b8fa3fd1e9c171ee14cfddf.md) | 63 | `result-track:9b8fa3fd1e9c171ee14cfddf6408c1bb2f75d6a24ddc09622b8f8cb3e187eaf9` |
| 8 | `def` | [reps](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reps--6b476d3c1e172026b81d4134.md) | 74 | `declaration-track:6b476d3c1e172026b81d4134ab08bd9c7e25986143214d049bcbeb71c9925646` |
| 9 | `def` | [reduceStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reducestep--5ba5ce0f579766be9df5adb3.md) | 78 | `declaration-track:5ba5ce0f579766be9df5adb36760e15b9f60f6e1cb601df7ec7e7e8aac0b0252` |
| 10 | `lemma` | [reduce_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reduce-aux--dec332e71229488be008c4d5.md) | 80 | `result-track:dec332e71229488be008c4d5b53ee3f09b7ce029edadeb68a479a954ea5d27f9` |
| 11 | `def` | [reduce_rec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reduce-rec--e77c5a3d2f3a264ad9602c1d.md) | 90 | `declaration-track:e77c5a3d2f3a264ad9602c1d50d1dbb6cbff29c08ab1df78931f27c7f8de15f3` |
| 12 | `def` | [reduce](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reduce--4484e8c781a6a2f376e2cf0d.md) | 104 | `declaration-track:4484e8c781a6a2f376e2cf0dfe9c8ff2fdf352046094a335337003db5953b4d0` |
| 13 | `lemma` | [reduce_of_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reduce-of-pos--2bff2121c16a44f3859a60e7.md) | 116 | `result-track:2bff2121c16a44f3859a60e7a500763e8444735f725c6fdcc30c1dfaa25cdf2f` |
| 14 | `lemma` | [reduce_of_not_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reduce-of-not-pos--158877253ce4f3d7a147a33e.md) | 122 | `result-track:158877253ce4f3d7a147a33e1f06370cd1f9bc4f254ad38636a9c600f4cef7be` |
| 15 | `lemma` | [reduce_reduceStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reduce-reducestep--8f9105ab7e867a5801cc3fc3.md) | 129 | `result-track:8f9105ab7e867a5801cc3fc3e643108b62bb036438c747486dc9deea14b9e7e5` |
| 16 | `lemma` | [A_c_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/a-c-eq-zero--82e5fa711cbf840ebae92d1d.md) | 134 | `result-track:82e5fa711cbf840ebae92d1dd07920c8c29e2d6e93f82d40ac001328c8e3d0dc` |
| 17 | `lemma` | [A_d_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/a-d-ne-zero--cd2288cad64a1595beff6688.md) | 137 | `result-track:cd2288cad64a1595beff66889e8e8157b3da0ca02d82d83da0b7674a8538ab93` |
| 18 | `lemma` | [A_a_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/a-a-ne-zero--083199e58c2ce35340aacda2.md) | 140 | `result-track:083199e58c2ce35340aacda2bf22a8a860e58377b15ecbc8de361d85ddc10402` |
| 19 | `lemma` | [reps_entries_le_m'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reps-entries-le-m--e5f19065d3c4fcc267883dd1.md) | 144 | `result-track:e5f19065d3c4fcc267883dd13b5277c176233cc55b01e71511c2a0b61eab3f27` |
| 20 | `lemma` | [reps_zero_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reps-zero-empty--4703113c97790d84c278f963.md) | 157 | `result-track:4703113c97790d84c278f963248b7f56a4395d721a31430ac4d3f6476fd1df51` |
| 21 | `instance` | [repsFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/repsfintype--4a31ae2dca2c97e3e654eb3b.md) | 164 | `declaration-track:4a31ae2dca2c97e3e654eb3b8f308f21d2aac09f6254eade02d77fcab4880fa9` |
| 22 | `lemma` | [S_smul_four](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/s-smul-four--ad9406bcf3cfba00925e22d0.md) | 173 | `result-track:ad9406bcf3cfba00925e22d0e179729664766ed51ebbb6b3dab849514221c90b` |
| 23 | `lemma` | [T_S_rel_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/t-s-rel-smul--bcfb08e7e28f039bad89ea16.md) | 177 | `result-track:bcfb08e7e28f039bad89ea16d2478552bb9e6987226fc0ee48c021cdb82eaf78` |
| 24 | `lemma` | [reduce_mem_reps](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reduce-mem-reps--3853a2d738a70ea025856549.md) | 180 | `result-track:3853a2d738a70ea02585654939ac44545bed578caa093b7f1235667467e9cad9` |
| 25 | `lemma` | [prop_red_S](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/prop-red-s--7cb79d17dd4bf81ff1a65954.md) | 218 | `result-track:7cb79d17dd4bf81ff1a6595447ab9c35ede3bd8b74a85121385076e8e53c0125` |
| 26 | `lemma` | [prop_red_T](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/prop-red-t--bcfc868a07514b8a5be38377.md) | 224 | `result-track:bcfc868a07514b8a5be38377bccfccf9772d3dcb2f1af82948740cd5bd1bf0be` |
| 27 | `lemma` | [prop_red_T_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/prop-red-t-pow--2d8ea692731a5d23a3d29678.md) | 231 | `result-track:2d8ea692731a5d23a3d29678e54a76661e358f44f7a261c483eed7cb29dcbd3e` |
| 28 | `theorem` | [induction_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/induction-on--83d6cd5dc3decc1f5d0bc0b7.md) | 242 | `result-track:83d6cd5dc3decc1f5d0bc0b74b99af99537c338035f4db77d6f01c5248d1c4d8` |
| 29 | `lemma` | [reps_one_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/reps-one-id--eef896219f00cbb429ca6964.md) | 258 | `result-track:eef896219f00cbb429ca69642bbb68ccc306d8e50133505bd221ceba8ab5315a` |
| 30 | `lemma` | [SpecialLinearGroup.SL2Z_generators](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/declarations/speciallineargroup-sl2z-generators--aeb3cd5744234177ce735a94.md) | 275 | `result-track:aeb3cd5744234177ce735a9471e086eaa245369c8cca4fe396d3ed8671cc057d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
