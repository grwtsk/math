# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ULift.Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1ed13f9833f6aad6c5316f5d44959c269c7cde1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1ed13f9833f6aad6c5316f5d44959c269c7cde1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.Monadic.ULift` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.uLift_eq_toIter_uLift_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/declarations/iter-ulift-eq-toiter-ulift-toiterm--75e30ab070bbe1ce47d92da3.md) | 33 | `result-track:75e30ab070bbe1ce47d92da33588e22c6637a0cfde7aceda1f163d41d328a77f` |
| 2 | `theorem` | [Iter.step_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/declarations/iter-step-ulift--9b677cf6306ddddb6b6ea48e.md) | 37 | `result-track:9b677cf6306ddddb6b6ea48eaa465dfb7f0653844a81165d91d5958f821e3142` |
| 3 | `theorem` | [Iter.toList_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/declarations/iter-tolist-ulift--404a2fdf8e62ab3cf698ef40.md) | 50 | `result-track:404a2fdf8e62ab3cf698ef40383ef17b1ca9e95b1bf87b8aa3804727cd55f328` |
| 4 | `theorem` | [Iter.toListRev_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/declarations/iter-tolistrev-ulift--94cd95aac2c6b7a35b382836.md) | 58 | `result-track:94cd95aac2c6b7a35b382836807a7998acb9ad5cb0e26d03627a446c1ed3661e` |
| 5 | `theorem` | [Iter.toArray_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/declarations/iter-toarray-ulift--f20e8335c9f8bcd225fb1215.md) | 64 | `result-track:f20e8335c9f8bcd225fb12155f0a932922ebfaad3cae03335b20f56ad6aa168d` |
| 6 | `theorem` | [Iter.length_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/declarations/iter-length-ulift--f18f99e84445ba31579c4480.md) | 71 | `result-track:f18f99e84445ba31579c448027529a50bd66879cacf3a7c5fd29ad6244fb4371` |
| 7 | `def` | [Iter.count_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant6fe39db2d294277c9d733ddf24b576146d0e3b1fdbf9883b07c82ba75e65e312.lean/declarations/iter-count-ulift--b51eca5d81a2bc261693385e.md) | 80 | `declaration-track:b51eca5d81a2bc261693385e515e0a5b4388f01920212634f4626ad9cac29fd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
