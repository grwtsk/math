# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dd396da7466019a513f121c7ad0afa3043795c3",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dd396da7466019a513f121c7ad0afa3043795c3`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.DenselyOrdered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/instance--68b45ad6d596213ee7ece959.md) | 19 | `declaration-track:68b45ad6d596213ee7ece95994b39ce8404137ff543c1a665e6822bdbe2cecfb` |
| 2 | `lemma` | [Real.singleton_eq_inter_Icc](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/real-singleton-eq-inter-icc--475308ac38e0e972a41e13d3.md) | 23 | `result-track:475308ac38e0e972a41e13d3c96cd07676b8debcc4e3b638cbfbd841d402d815` |
| 3 | `lemma` | [squeeze_zero'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/squeeze-zero--567aa6c4273fa3f0e9f81eec.md) | 28 | `result-track:567aa6c4273fa3f0e9f81eecb94136f83961d0d6d98bd8169408d24e823ab50d` |
| 4 | `lemma` | [squeeze_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/squeeze-zero--5c21815ef89e23e8b450d0a4.md) | 34 | `result-track:5c21815ef89e23e8b450d0a4a21971ba6ba298df7a26a42abbce3648b14bde2c` |
| 5 | `lemma` | [eventually_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/eventually-closedball-subset--24ba713a9b1363bb9194e1d3.md) | 40 | `result-track:24ba713a9b1363bb9194e1d3710c56f87a15de95ef584689323dd6a795593708` |
| 6 | `lemma` | [tendsto_closedBall_smallSets](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/tendsto-closedball-smallsets--2112f45d4839cc237a57d13e.md) | 46 | `result-track:2112f45d4839cc237a57d13ebbc7b1db89e102323b9f566f7c1e86868978d7fd` |
| 7 | `lemma` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/isclosed-closedball--65d5e20c777d2b9d88221592.md) | 52 | `result-track:65d5e20c777d2b9d88221592ebbfe8cee873693b3a7638ca7f93a067cc8b6b1b` |
| 8 | `lemma` | [isClosed_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/isclosed-sphere--43864ef78e39f13610ea103f.md) | 57 | `result-track:43864ef78e39f13610ea103ff1f8b02f2476de32e5f1e7c484de936bddb3bb96` |
| 9 | `lemma` | [closure_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/closure-closedball--54d87051329eb6a800c581aa.md) | 61 | `result-track:54d87051329eb6a800c581aa5a628e7ff1daa8e5157ac5f522ad60a2e823c6b9` |
| 10 | `lemma` | [closure_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/closure-sphere--bf9df1382200b4776628a8ef.md) | 65 | `result-track:bf9df1382200b4776628a8ef165eb9107c66f58b93a85ba4922b62967ad36683` |
| 11 | `lemma` | [closure_ball_subset_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/closure-ball-subset-closedball--1c69e036c372d360497ea973.md) | 68 | `result-track:1c69e036c372d360497ea973e02d94a43c15a91d55719bcea3c3837b23dd1c0d` |
| 12 | `lemma` | [frontier_ball_subset_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/frontier-ball-subset-sphere--e4271e49ef95958ba73b98c8.md) | 71 | `result-track:e4271e49ef95958ba73b98c8cd650ea3c4cc4f3ecddf4ef38e5fa4da1dccacd9` |
| 13 | `lemma` | [frontier_closedBall_subset_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/frontier-closedball-subset-sphere--543910fa9d2f98aa30937d8b.md) | 74 | `result-track:543910fa9d2f98aa30937d8b7712f133a2bec3062ea4a38e83a45f6bb9996245` |
| 14 | `lemma` | [closedBall_zero'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/closedball-zero--479ac5e1de70071d00018391.md) | 77 | `result-track:479ac5e1de70071d00018391459335d3e0766d38111f13dfd4f7aeb161ffcfad` |
| 15 | `lemma` | [eventually_isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/eventually-iscompact-closedball--d02185be8fa84eb8a1ee1c7a.md) | 83 | `result-track:d02185be8fa84eb8a1ee1c7a1a93dfabe101349374a714d6bfad7a2c529ed056` |
| 16 | `lemma` | [exists_isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/exists-iscompact-closedball--079f5636b7845d491483c8f8.md) | 89 | `result-track:079f5636b7845d491483c8f81387c8e0b720e7cc0d2ba0e42bc6a569c5d87828` |
| 17 | `theorem` | [biInter_gt_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/biinter-gt-closedball--4c29a73691ea905e500f9a6f.md) | 95 | `result-track:4c29a73691ea905e500f9a6f4ac1562cdfeb9d616bb1018f007b5cf71e554808` |
| 18 | `theorem` | [biInter_gt_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/biinter-gt-ball--6b137b0dacfed31d12fa2685.md) | 99 | `result-track:6b137b0dacfed31d12fa268584d246e1ed3e4c403e8e6871930cd0e443d68c7d` |
| 19 | `theorem` | [biUnion_lt_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/biunion-lt-ball--358ff750444aa22a23e9e132.md) | 103 | `result-track:358ff750444aa22a23e9e132995ca2880dd7f53d0d434211ce7a1515d4af6229` |
| 20 | `theorem` | [biUnion_lt_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/biunion-lt-closedball--02d50e01ce40bac450bf4a24.md) | 108 | `result-track:02d50e01ce40bac450bf4a241575b84640fec4866d2b01e04665052ad83b3b5e` |
| 21 | `theorem` | [lebesgue_number_lemma_of_metric](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/lebesgue-number-lemma-of-metric--450b16b3196f8c241ae66e52.md) | 115 | `result-track:450b16b3196f8c241ae66e529cf96b72ba0197033610fb65db8d7b0bf68b4734` |
| 22 | `theorem` | [lebesgue_number_lemma_of_metric_sUnion](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb68ba948038437e1cba33f7266c2046cf3f5c00eddf19efd674491e8185d7944.lean/declarations/lebesgue-number-lemma-of-metric-sunion--3b8b9fe838dde2ed4378dfa3.md) | 120 | `result-track:3b8b9fe838dde2ed4378dfa30c1650242e8b195e587ca5f0994aa564ee21ba17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
