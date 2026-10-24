# Verification target: GRWTSK.Algebra.FiniteType.Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c845cfc156fea8e54cc2e014e75e69fe3248285d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c845cfc156fea8e54cc2e014e75e69fe3248285d`.

Source path: `GRWTSK/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean.json)

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
| 1 | `abbrev` | [FGAlgCat](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/fgalgcat--d0729bdda034a80f1750b7ec.md) | 36 | `declaration-track:d0729bdda034a80f1750b7ecf3d848dbd3c0d116573c62dd5cf2f037f406bca2` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/instance--91d80e8aa947345c03190b44.md) | 39 | `declaration-track:91d80e8aa947345c03190b44f3c47e3254b0f01d77ffe7d5247c24abb74f21f1` |
| 3 | `structure` | [FGAlgCatSkeleton](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/fgalgcatskeleton--fd2e892025dbd40f99fabdb7.md) | 42 | `declaration-track:fd2e892025dbd40f99fabdb7f8014c9a33c55c6bfe77424dc3b64e6ff4126c6b` |
| 4 | `def` | [FGAlgCatSkeleton.eval](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/fgalgcatskeleton-eval--8ce0b71f7409c4623a23dd44.md) | 49 | `declaration-track:8ce0b71f7409c4623a23dd448962983fbdc936f58a9d84ca59a0ca4b718c9e11` |
| 5 | `lemma` | [Algebra.FiniteType.exists_fgAlgCatSkeleton](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/algebra-finitetype-exists-fgalgcatskeleton--5c85969320bc97785657ba9d.md) | 52 | `result-track:5c85969320bc97785657ba9dd384d25e13ac0f410a0d050352b6a703b0ddfbc4` |
| 6 | `lemma` | [RingHom.FiniteType.exists_smallRepr](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/ringhom-finitetype-exists-smallrepr--6fb5fe4a42d9375d0b7d332d.md) | 58 | `result-track:6fb5fe4a42d9375d0b7d332d0aff83d3993f76c3ba4ac056290cc11474227560` |
| 7 | `def` | [FGAlgCat.uliftFunctor](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/fgalgcat-uliftfunctor--ad9303ec83c75d64fa5b44c5.md) | 66 | `declaration-track:ad9303ec83c75d64fa5b44c58f8fa692c3173d1acf1a0d6395fccd1e51742b60` |
| 8 | `def` | [FGAlgCat.fullyFaithfulUliftFunctor](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/fgalgcat-fullyfaithfululiftfunctor--bfe199ebdcf3f2f610d02d85.md) | 72 | `declaration-track:bfe199ebdcf3f2f610d02d856470e96c6269c800f659020516420c7ba09fb853` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/instance--424ea8d0dd9d7ff09d5c92a9.md) | 77 | `declaration-track:424ea8d0dd9d7ff09d5c92a9f7fc7280f6b2983e8ebaec7c16b99a913dc6b9bf` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/instance--66b4c86e9823d2c203c12ae4.md) | 80 | `declaration-track:66b4c86e9823d2c203c12ae46709235f13796263048def34010f33ec07b2ed89` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/instance--79bc54ed20c896139832b91b.md) | 84 | `declaration-track:79bc54ed20c896139832b91bcc87a2883e357168c5245a7c7e2f07a0010db629` |
| 12 | `def` | [FGAlgCat.equivUnder](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/fgalgcat-equivunder--6cf7d0f7b28f88ba8fe06659.md) | 110 | `declaration-track:6cf7d0f7b28f88ba8fe0665921a4f34e179eb003605a7c8b5da3a4942fc49f5a` |
| 13 | `lemma` | [essentiallySmall_of_le](../../../../mathematics/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/declarations/essentiallysmall-of-le--dcacd4fc292ea89be4055b3a.md) | 123 | `result-track:dcacd4fc292ea89be4055b3a42975ec197a0a9ea2b7d93f364ec281ef37123b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
