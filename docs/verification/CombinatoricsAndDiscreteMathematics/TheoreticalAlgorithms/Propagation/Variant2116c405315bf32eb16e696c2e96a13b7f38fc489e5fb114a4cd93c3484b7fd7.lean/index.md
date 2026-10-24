# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Propagation.Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ffd66920040cfe7e105f6972c2b276f952240d1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ffd66920040cfe7e105f6972c2b276f952240d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.LogVerification` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PropagationEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/propagationedge--664a482beea1999ad9cbc369.md) | 7 | `declaration-track:664a482beea1999ad9cbc3698d113215bbb87e36b1193d2f638840b8abe32bb6` |
| 2 | `def` | [pathGain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/pathgain--82c238be639067bf085c471a.md) | 12 | `declaration-track:82c238be639067bf085c471ad9e5896495f91d23644d74f5ddcffa89734b896a` |
| 3 | `def` | [propagatedDefectBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/propagateddefectbound--211a0158c6190bd0238ae51c.md) | 17 | `declaration-track:211a0158c6190bd0238ae51c60fed6f509bd1083a4780a9f4e6c9ca92850605f` |
| 4 | `theorem` | [pathGain_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/pathgain-nil--5a1014786874ccaf5921342e.md) | 24 | `result-track:5a1014786874ccaf5921342e7b36bd748597f7a99d7379310aec36fba6bde2bb` |
| 5 | `theorem` | [pathGain_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/pathgain-cons--b58cb87dbf49ddde764ae6c1.md) | 28 | `result-track:b58cb87dbf49ddde764ae6c1ab977a6ec8d62ea57374accef8149f7b1faa858a` |
| 6 | `theorem` | [propagatedDefectBound_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/propagateddefectbound-nil--74dfdff39d9fdc8d93fc2919.md) | 35 | `result-track:74dfdff39d9fdc8d93fc29198eed32efb0ed2104931d08b60b7e2fd49ffd3750` |
| 7 | `theorem` | [propagatedDefectBound_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/propagateddefectbound-cons--5b369469bc37120f08f101b2.md) | 40 | `result-track:5b369469bc37120f08f101b2b43064e0ca6862ff23ead5335795f99f40e86d25` |
| 8 | `theorem` | [path_gain_numerator_is_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/path-gain-numerator-is-product--e94e2d56efe5aede26e31703.md) | 49 | `result-track:e94e2d56efe5aede26e31703d2372967427649aeb17221188bbf2d4297255335` |
| 9 | `theorem` | [path_gain_scale_is_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/path-gain-scale-is-product--cfaafe7244bcce5a1da33bca.md) | 58 | `result-track:cfaafe7244bcce5a1da33bcad89c7de33f8b2d7963d1f1516ada969cc64d17ab` |
| 10 | `structure` | [PathGainObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/pathgainobligation--69bbeeb437931d851e645de6.md) | 67 | `declaration-track:69bbeeb437931d851e645de6f0f6e9ce9381aa484691bac239349b42819b9b3b` |
| 11 | `def` | [propagatedUnknowns](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/propagatedunknowns--92d1e748372f374ccebc984b.md) | 78 | `declaration-track:92d1e748372f374ccebc984b1b87a39dbc7ef46edcc891ccb341d77f315fcb92` |
| 12 | `theorem` | [derivative_bound_unknown_propagation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/derivative-bound-unknown-propagation--636bf9658b019d524a51cd5a.md) | 89 | `result-track:636bf9658b019d524a51cd5ae60b96cabadf701f7a73727d15b8234ff61635be` |
| 13 | `theorem` | [invariant_domain_unknown_propagation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/invariant-domain-unknown-propagation--bc9bf6c30aea0030aba4c199.md) | 94 | `result-track:bc9bf6c30aea0030aba4c199be04c964e4c3b2fb8cd7e33a684359c25638bbfe` |
| 14 | `theorem` | [logarithm_branch_unknown_propagation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/logarithm-branch-unknown-propagation--e106c0dc8d126ea29009acd4.md) | 99 | `result-track:e106c0dc8d126ea29009acd48a14ab02da6a3ae7cd73a9634a0a20625e1870db` |
| 15 | `theorem` | [cycle_multiplier_unknown_propagation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7.lean/declarations/cycle-multiplier-unknown-propagation--923f60f2541356063d24fcb8.md) | 104 | `result-track:923f60f2541356063d24fcb8e8e2961b4291888f66ba9dffe5c2ded9fc51def8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
