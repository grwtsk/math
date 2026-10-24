# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Update.Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7cb268bc23a4c270b99eea8409f41cc0f6c76ad",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7cb268bc23a4c270b99eea8409f41cc0f6c76ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset--96262f3fa53fd02989777556.md) | 30 | `declaration-track:96262f3fa53fd02989777556c33f008d3a92696c15882736ef73f25dac14a0ff` |
| 2 | `theorem` | [updateFinset_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-def--55f20c2479625ed84638253c.md) | 35 | `result-track:55f20c2479625ed84638253cf80f9d0aa00519d568dc838c867dbb63f1beec5c` |
| 3 | `theorem` | [updateFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-empty--3fa578ca9e6c444be59f617d.md) | 39 | `result-track:3fa578ca9e6c444be59f617d6d70702ecbf8104b6c8800f8ba3c8e1ea6b76aa6` |
| 4 | `theorem` | [updateFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-singleton--57bac516c08efdf8e63ed935.md) | 42 | `result-track:57bac516c08efdf8e63ed9354af62ba299cf595066ecdbb9789cf62a46e889ad` |
| 5 | `theorem` | [update_eq_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/update-eq-updatefinset--33c8b2b6fdc1763f97863ed6.md) | 50 | `result-track:33c8b2b6fdc1763f97863ed6acf464b515d82eb5abf54fc282567307a518ac6e` |
| 6 | `theorem` | [_root_.DependsOn.updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/root-dependson-updatefinset--2411e66e25845fd50c61af8f.md) | 61 | `result-track:2411e66e25845fd50c61af8fc6fa29ebbcd7ec75eb3907d6be2d1cfea8a5b614` |
| 7 | `theorem` | [_root_.DependsOn.update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/root-dependson-update--695b443f53ffc162c5be8708.md) | 71 | `result-track:695b443f53ffc162c5be8708874df31f14efb9e7f52a484279f34f547d00c48c` |
| 8 | `theorem` | [updateFinset_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-updatefinset--064560acfd136d6d52d8fe52.md) | 76 | `result-track:064560acfd136d6d52d8fe52666f5fc46d9a29012ed7830e25f487dd2a1025e1` |
| 9 | `lemma` | [updateFinset_updateFinset_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-updatefinset-of-subset--e971807e5684fea31a145032.md) | 88 | `result-track:e971807e5684fea31a145032db8ce81ee86d98c34e23fba1c2be33ffb2eae626` |
| 10 | `lemma` | [restrict_updateFinset_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/restrict-updatefinset-of-subset--7b670407a3d2619b7ff933d5.md) | 93 | `result-track:7b670407a3d2619b7ff933d5e8207c0b80ad1609b1069ebafe5311212c310bc6` |
| 11 | `lemma` | [restrict_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/restrict-updatefinset--7842090627589bc2886e63df.md) | 98 | `result-track:7842090627589bc2886e63df788dbb275f4066243ad7a9b56b1868babdc55b07` |
| 12 | `lemma` | [updateFinset_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-restrict--3b22c39cdb7869ca3c6ca012.md) | 104 | `result-track:3b22c39cdb7869ca3c6ca012d7921cbfdbb6131ea94a8a6a46008d22f112d0c3` |
| 13 | `theorem` | [update_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/update-updatefinset--595159a8758babe11756c74d.md) | 110 | `result-track:595159a8758babe11756c74dff2bb41a258b03482b6e02bd678dd50bd2d29762` |
| 14 | `theorem` | [updateFinset_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-congr--73d1b0520d6f984e8cac4296.md) | 115 | `result-track:73d1b0520d6f984e8cac4296164705202ea409e00465fb4a001f8bed60a8b5e1` |
| 15 | `theorem` | [updateFinset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-univ--6225c06b31c9e9aa7b4fab5f.md) | 119 | `result-track:6225c06b31c9e9aa7b4fab5ffa37a343a4b5df781ff7f5cf0d5a3139dfd6e820` |
| 16 | `theorem` | [updateFinset_univ_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variantf05e93eb61c8078f690c7df111b293e7ef40d022856fc1f16b4983f4f02ea8e5.lean/declarations/updatefinset-univ-apply--d26b275ff2e8762fdfb9e3f5.md) | 123 | `result-track:d26b275ff2e8762fdfb9e3f5cff67af22ac4ccc3e91fa8e1bf9e6b1e39ad27c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
