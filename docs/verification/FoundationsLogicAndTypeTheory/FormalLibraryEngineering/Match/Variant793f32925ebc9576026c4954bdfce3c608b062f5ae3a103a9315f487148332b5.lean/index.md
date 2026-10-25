# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Match.Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e886f99c2cf72d229581e08e0db6507439b52d5c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e886f99c2cf72d229581e08e0db6507439b52d5c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Do.PatternVar` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinDo.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Elab.Match` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Elab.MatchAltView` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Data.Array` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabDoSeqWithRefinedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/elabdoseqwithrefinedtype--0c37cd892a9d57b08f68075f.md) | 34 | `declaration-track:0c37cd892a9d57b08f68075fd6fcef5cea1545b7c253a0c6c7e2c58f852516bf` |
| 2 | `def` | [expandToTermMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/expandtotermmatch--fb1058e6e26fda6bc2825e45.md) | 55 | `declaration-track:fb1058e6e26fda6bc2825e459441ef31d63f743a55998a5823ec4328e44461e0` |
| 3 | `def` | [expandNonAtomicDiscrs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/expandnonatomicdiscrs--9317b8d9d0c2a257586b280b.md) | 87 | `declaration-track:9317b8d9d0c2a257586b280b934f72cb614791309a75da1eb4164882a12edc9a` |
| 4 | `def` | [tryPostponeIfDiscrTypeIsMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/trypostponeifdiscrtypeismvar--75a951f9dcec4b813adbc224.md) | 104 | `declaration-track:75a951f9dcec4b813adbc22421e5ac3f6cdaf6d5d37f7e6c3a6ffbe6e540e6f8` |
| 5 | `def` | [mkUserNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/mkusernamefor--a04c6db4910baba428a6b8de.md) | 112 | `declaration-track:a04c6db4910baba428a6b8de48dfe2d47790420bcb9c93475f3785982f7b36a2` |
| 6 | `def` | [elabDiscrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/elabdiscrs--c52ee6f63f9616f3ec8b21f2.md) | 117 | `declaration-track:c52ee6f63f9616f3ec8b21f21df419fe99ee21060b2d57d536587552a04b467b` |
| 7 | `def` | [elabPatterns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/elabpatterns--257d9b48aa7b5c060e3f6724.md) | 130 | `declaration-track:257d9b48aa7b5c060e3f6724f464b3b3fbca0e46c92a1ec0cc106d7247593afd` |
| 8 | `def` | [mkDepMatchMotive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/mkdepmatchmotive--e066a728890b939d7bd522a2.md) | 150 | `declaration-track:e066a728890b939d7bd522a2f1f717d8bed1cc4a482683900397392e3c6636d4` |
| 9 | `def` | [withElaboratedLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/withelaboratedlhs--31acde87b71e966777b10525.md) | 166 | `declaration-track:31acde87b71e966777b1052583fc744819815a16f7b5c26d555b52f2f6ac6c59` |
| 10 | `abbrev` | [DoMatchAltView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/domatchaltview--2408b06cf5f5f074645e8045.md) | 174 | `declaration-track:2408b06cf5f5f074645e8045d986efeb25b86f01eed545ef4a2e8dd5db3177e6` |
| 11 | `def` | [elabMatchAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/elabmatchalt--385aec16190dc17960c52fdc.md) | 176 | `declaration-track:385aec16190dc17960c52fdc0a0ed635c63daedcaf90567a24699bdba3997052` |
| 12 | `def` | [elabMatchAlts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/elabmatchalts--f4c3c7b8e588cb357ec0406c.md) | 192 | `declaration-track:f4c3c7b8e588cb357ec0406c8bfbcbffbd7f2896a51f4cddf041e007e53922d4` |
| 13 | `def` | [compileMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/compilematch--09d3e77197b1de2bcb0a080d.md) | 198 | `declaration-track:09d3e77197b1de2bcb0a080d48bcb0c67cf19cd3875cfae18d7f3b491067351f` |
| 14 | `def` | [elabDoMatchCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/elabdomatchcore--72e7ed724f2592e448918ca8.md) | 212 | `declaration-track:72e7ed724f2592e448918ca80245eb722489d3aa33e6d8f3386e22a7b8b017e1` |
| 15 | `def` | [isSyntaxMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/issyntaxmatch--9cfcae7357e5f064b305bddf.md) | 227 | `declaration-track:9cfcae7357e5f064b305bddf8d04cbddbc20571baa8eb578cc4470f280c446bf` |
| 16 | `def` | [getAltsPatternVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/getaltspatternvars--3312e173765a6f93d21ceecc.md) | 236 | `declaration-track:3312e173765a6f93d21ceecc943c35ee31cb0d5e165a2e8c319d9aa2f46ac2cb` |
| 17 | `def` | [elabDoMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/declarations/elabdomatch--f913dd1b020dfd8f3c16b0f3.md) | 244 | `declaration-track:f913dd1b020dfd8f3c16b0f3bafec573b41ab110dc6acc782fb779fc9649d68c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
