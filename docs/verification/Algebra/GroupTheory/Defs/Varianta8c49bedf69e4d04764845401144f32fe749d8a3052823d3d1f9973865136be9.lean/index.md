# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "867061ba70f745a03e219974510622670ff12b5a",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `867061ba70f745a03e219974510622670ff12b5a`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Commute](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/commute--774468fdd4f16c41dcfa6a15.md) | 41 | `declaration-track:774468fdd4f16c41dcfa6a1563596514036305b01226dc6a5ebf722ee651b606` |
| 2 | `theorem` | [commute_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/commute-iff-eq--4b6852592f0d3789ad2be735.md) | 48 | `result-track:4b6852592f0d3789ad2be735222a645accee58d6ad3b4ee1e7ec4b8557a0b210` |
| 3 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/eq--d38431172eb7bb7e28dcdbdf.md) | 58 | `result-track:d38431172eb7bb7e28dcdbdf9a3032692d1ce9174a74bce9bc12e48a4ac413cf` |
| 4 | `theorem` | [refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/refl--1b75d4e15e18cdcc04c8d000.md) | 63 | `result-track:1b75d4e15e18cdcc04c8d0007957d4c08cdc6049a4288b33995db54eb509b793` |
| 5 | `theorem` | [symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/symm--3034fd4356813df3c44c3043.md) | 68 | `result-track:3034fd4356813df3c44c3043c3ca2e834695f093a040361a5c3d336e4f679ffb` |
| 6 | `theorem` | [semiconjBy](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/semiconjby--c2c8d5bc78d918f2e3d871ff.md) | 72 | `result-track:c2c8d5bc78d918f2e3d871ff2c063518ce2467d621fa3ef572d71406d2f7521f` |
| 7 | `theorem` | [symm_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/symm-iff--9033fa2f8ea8a82c50154d79.md) | 76 | `result-track:9033fa2f8ea8a82c50154d795561a90b68826ac9580dbfb449d00fb10f55598d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/instance--5ee0a8d0ca7c0d7326ba528a.md) | 80 | `declaration-track:5ee0a8d0ca7c0d7326ba528a66aeb21a429bec882d94e005c99c012ea1f0c050` |
| 9 | `instance` | [on_isRefl](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/on-isrefl--c7c4008061d0f632539f454c.md) | 85 | `declaration-track:c7c4008061d0f632539f454cd94a22277b2f951d873977e74d399edbd706e96c` |
| 10 | `theorem` | [mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/mul-right--e949e05eb7a22c4bf72b926a.md) | 97 | `result-track:e949e05eb7a22c4bf72b926ab2631feb6c0736ae1afc3f4d06587fd2bc497def` |
| 11 | `theorem` | [mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/mul-left--d6116615ed7e487b4c457fbe.md) | 103 | `result-track:d6116615ed7e487b4c457fbe6a43e56dc848def1ab88235e5eff97d684ad1d19` |
| 12 | `theorem` | [right_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/right-comm--893985288ca7d6beb33d4c34.md) | 107 | `result-track:893985288ca7d6beb33d4c341c3bc7e6f4516cc8498563e74925dc3fcaa9edc5` |
| 13 | `theorem` | [left_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/left-comm--1a04fd776cbb368dcaa2b899.md) | 111 | `result-track:1a04fd776cbb368dcaa2b899874bdab70eb2aedb058d7ad9981de208df71a1d4` |
| 14 | `theorem` | [mul_mul_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/mul-mul-mul-comm--4f1eb828e78a45972af50673.md) | 115 | `result-track:4f1eb828e78a45972af50673e75d6fb8ce471d3fc23d944ebc27fd816e7e8f12` |
| 15 | `theorem` | [all](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/all--bfc85e5d1fb7c048d7e92ec8.md) | 121 | `result-track:bfc85e5d1fb7c048d7e92ec8d650bb8c192c7f73544d42c42ddc90eabe07906f` |
| 16 | `theorem` | [one_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/one-right--0ca57a3b4f07c661c76b71c9.md) | 129 | `result-track:0ca57a3b4f07c661c76b71c9481cc90700e91aed882d0b94c0a8ec2e3460fdc6` |
| 17 | `theorem` | [one_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/one-left--b9081c07b9386f3e4ae1cf6f.md) | 133 | `result-track:b9081c07b9386f3e4ae1cf6f46b988cf0a1057017d4be5efdb1108af853b078b` |
| 18 | `theorem` | [pow_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/pow-right--46f5782af53994116f9a12aa.md) | 143 | `result-track:46f5782af53994116f9a12aa2745177c54819be7eea105200f51c410f9048408` |
| 19 | `theorem` | [pow_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/pow-left--5fe0b9deafce6ffa50b7c02e.md) | 147 | `result-track:5fe0b9deafce6ffa50b7c02efe81c574f1b04a8e97182a6fd606a39493c05920` |
| 20 | `theorem` | [pow_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/pow-pow--d23c40942d0fdfd169bb4eb0.md) | 152 | `result-track:d23c40942d0fdfd169bb4eb033c2e57744cce551e2c1eccbc4557fb1abc1fec0` |
| 21 | `theorem` | [self_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/self-pow--6b5303d163ffdcf41167cce2.md) | 156 | `result-track:6b5303d163ffdcf41167cce278db969fc7822fdd76b9258ac9a6f6ba389c3082` |
| 22 | `theorem` | [pow_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/pow-self--378246f514bad6255ea62624.md) | 160 | `result-track:378246f514bad6255ea62624ec62a7ede8cb6c2306fd1fba15f365d3e3a90b70` |
| 23 | `theorem` | [pow_pow_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/pow-pow-self--963e40a64334e6466aedfda6.md) | 164 | `result-track:963e40a64334e6466aedfda6aada3df723ba2c190e5d3eb4a200eb64480c9538` |
| 24 | `lemma` | [mul_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/mul-pow--fcec0ec822b6f1e2bd0053cc.md) | 167 | `result-track:fcec0ec822b6f1e2bd0053ccf9c33a939afb661581ba95c0dbc91a304d8f60e7` |
| 25 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/mul-inv--194a13a4a6ad45e07fc6ad9d.md) | 178 | `result-track:194a13a4a6ad45e07fc6ad9db59a95a44cfcb9228b27b928a178ba8489bf8911` |
| 26 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/inv--137694247b42aceebf907439.md) | 181 | `result-track:137694247b42aceebf907439ccf550df3f36eac06e8ab9b68e8134de84f7cba7` |
| 27 | `lemma` | [mul_zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/mul-zpow--976d8f63af8abd8bbfc751aa.md) | 184 | `result-track:976d8f63af8abd8bbfc751aa3dcb2dd642f9c516ca50098ed11e56937607f359` |
| 28 | `theorem` | [mul_inv_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/mul-inv-cancel--4ead835fc455c13f5c2576e3.md) | 195 | `result-track:4ead835fc455c13f5c2576e383015ce34390104248861786857e7653456153e3` |
| 29 | `theorem` | [mul_inv_cancel_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianta8c49bedf69e4d04764845401144f32fe749d8a3052823d3d1f9973865136be9.lean/declarations/mul-inv-cancel-assoc--dbfba8e58541ba9ec5d56a0e.md) | 199 | `result-track:dbfba8e58541ba9ec5d56a0ecafc5d1b2da5692c30e9c000d884ab6e10655e20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
