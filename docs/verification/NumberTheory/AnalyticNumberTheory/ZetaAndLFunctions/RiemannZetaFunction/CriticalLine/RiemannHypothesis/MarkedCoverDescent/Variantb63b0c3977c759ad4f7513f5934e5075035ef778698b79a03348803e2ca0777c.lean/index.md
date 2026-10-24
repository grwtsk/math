# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MarkedCoverDescent.Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85e394503bcb2f6120da630d3e780d48e73b024",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85e394503bcb2f6120da630d3e780d48e73b024`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CenteredPermutation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cocycle](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/cocycle--271c3859084fd49f31c6071b.md) | 24 | `declaration-track:271c3859084fd49f31c6071ba32c52e8f07d801a948700f298acd63113af017f` |
| 2 | `def` | [transition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/transition--e26e2d9a383d9b7f56af5e13.md) | 27 | `declaration-track:e26e2d9a383d9b7f56af5e13c52be8f06f651f56dcc59d4a7aa897a3d3fb1ec0` |
| 3 | `def` | [Coherent](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/coherent--98188e27b1d08e1422a7d0e9.md) | 30 | `declaration-track:98188e27b1d08e1422a7d0e9438e98dc19e794d8e9160c205df502f5edc0f734` |
| 4 | `theorem` | [explicit_frames_satisfy_cocycle](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/explicit-frames-satisfy-cocycle--523de1b6d7fbf6d1b0917ded.md) | 33 | `result-track:523de1b6d7fbf6d1b0917dedc5b74072429cb02b6155a453a9615f5be3bc2a11` |
| 5 | `theorem` | [cocycle_requires_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/cocycle-requires-identity--af9d29c3a2fd52b5c9d8eebf.md) | 38 | `result-track:af9d29c3a2fd52b5c9d8eebf56858ba02be2fe59931688b2bea48cfab3572e32` |
| 6 | `theorem` | [cocycle_requires_inverse](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/cocycle-requires-inverse--80f10735cdb19777c94a87e2.md) | 43 | `result-track:80f10735cdb19777c94a87e219f442bb83c8f0513257fd2984c9f2296d5dbd1d` |
| 7 | `theorem` | [anchored_family_is_coherent](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/anchored-family-is-coherent--96375aa1dc93d4b3ef4c2275.md) | 47 | `result-track:96375aa1dc93d4b3ef4c2275ccf5bfb822544ca04c4be8bdaec9b9a76afa1325` |
| 8 | `theorem` | [every_coherent_family_reconstructs_from_anchor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/every-coherent-family-reconstructs-from-anchor--57696a758eb44d59396297fc.md) | 53 | `result-track:57696a758eb44d59396297fcdf3484e3f6b49264cb5408f4fe3fa5673dcb4088` |
| 9 | `theorem` | [coherent_families_with_same_anchor_are_equal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/coherent-families-with-same-anchor-are-equal--70cfd9c0a3aa6fd83b74e3c8.md) | 59 | `result-track:70cfd9c0a3aa6fd83b74e3c8f8114966946c7e380ca180c536c1c0878b2b17c1` |
| 10 | `theorem` | [compatible_readout_is_anchor_independent](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/compatible-readout-is-anchor-independent--68666700c533564cf8d3a792.md) | 66 | `result-track:68666700c533564cf8d3a792f5b39bbeb7ce8984aee960fd4c82ddb862884c2a` |
| 11 | `def` | [negationTransitions](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/negationtransitions--c049e1c4f42c6de0cc9d0eb8.md) | 74 | `declaration-track:c049e1c4f42c6de0cc9d0eb8097783b31ad1acad79f77f10f1de915323d47a44` |
| 12 | `theorem` | [invertible_marked_transitions_need_not_be_cocyclic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantb63b0c3977c759ad4f7513f5934e5075035ef778698b79a03348803e2ca0777c.lean/declarations/invertible-marked-transitions-need-not-be-cocyclic--9522451fca49671869db4780.md) | 77 | `result-track:9522451fca49671869db478033420e0e3f19d353d994d8ccb65e92c6218a8138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
