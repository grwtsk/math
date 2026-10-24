# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RawDerivation.Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9bc84ea76dd5c4f657f0065ba58f81b1c558886",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9bc84ea76dd5c4f657f0065ba58f81b1c558886`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Atomize.Formal.IndexedAll` — import line 6; external provider; requires a separately pinned dependency.
- `Atomize.Formal.KernelPresentation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RawDer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/rawder--5c589637d3643bc6f1b5b6c2.md) | 87 | `declaration-track:5c589637d3643bc6f1b5b6c23036789f045fa3d4597095e6e21361ebb8890336` |
| 2 | `def` | [root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/root--ea6a9380955bd37c04049831.md) | 108 | `declaration-track:ea6a9380955bd37c04049831cf740d7781be45c0d3e3637c3c092f984ac422cf` |
| 3 | `def` | [size](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/size--061e5797d17b99979eb676a7.md) | 124 | `declaration-track:061e5797d17b99979eb676a7bdcb04b735abb59c61bea7d94a2b2d495b16ad4d` |
| 4 | `def` | [sizeAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/sizeall--f3fa1dec9cd7554922370d67.md) | 140 | `declaration-track:f3fa1dec9cd7554922370d6723aec9b43e8441e6bbf8542e8ccc93fb1c018751` |
| 5 | `def` | [height](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/height--c2d3c7d1af368c12da6242b6.md) | 159 | `declaration-track:c2d3c7d1af368c12da6242b6fff7252f470d3c77ae6d867d416bafc9cb34f5d3` |
| 6 | `def` | [heightAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/heightall--ebf3f90f735a6dfdf5e4c258.md) | 175 | `declaration-track:ebf3f90f735a6dfdf5e4c25800a051d1e4d70117de674b7a2c44274e16733918` |
| 7 | `def` | [constantReferences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/constantreferences--aadd281c4dbfabc87e5c6d7f.md) | 194 | `declaration-track:aadd281c4dbfabc87e5c6d7fa9b45985ade895698a312f1657745c586189f43a` |
| 8 | `def` | [constantReferencesAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/constantreferencesall--4bf47f4e9855a7becaeed42a.md) | 212 | `declaration-track:4bf47f4e9855a7becaeed42a5d5e9dc5cb3dbfe92e72bfca5917ecb64b1ff0dc` |
| 9 | `def` | [rootVariables](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/rootvariables--848d71fc289ff3042799eaa9.md) | 234 | `declaration-track:848d71fc289ff3042799eaa9319b58e9c6cd977a2794fd24246fc6a46cfa726c` |
| 10 | `def` | [rootVariablesAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/rootvariablesall--34b85780fbeb0ecfbd87ca66.md) | 252 | `declaration-track:34b85780fbeb0ecfbd87ca668df4d113f0ba9f6c50f6c384f1f18cbcafe7afa0` |
| 11 | `def` | [leafOrigins](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/leaforigins--802305b773b49f15ef40d071.md) | 274 | `declaration-track:802305b773b49f15ef40d071ff18eea48705f66fb294507685fa609e141daad7` |
| 12 | `def` | [leafOriginsAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/declarations/leaforiginsall--f0e1103fb5a250caa43f99bb.md) | 292 | `declaration-track:f0e1103fb5a250caa43f99bb4f539c61cedc6e4989ddf82f4123e92d611af7d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
