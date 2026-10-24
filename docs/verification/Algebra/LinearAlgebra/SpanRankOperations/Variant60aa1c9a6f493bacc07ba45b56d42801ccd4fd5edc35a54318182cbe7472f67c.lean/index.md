# Verification target: GRWTSK.Algebra.LinearAlgebra.SpanRankOperations.Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1896c3a19869e7c2eb39fcbbb6bd2f058eb12f22",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1896c3a19869e7c2eb39fcbbb6bd2f058eb12f22`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Submodule.spanRank_baseChange_le](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/declarations/submodule-spanrank-basechange-le--abec187dde8e8c564a9a2ac7.md) | 44 | `result-track:abec187dde8e8c564a9a2ac7ba0f799f8b18a970ec30477a07d7c38976249344` |
| 2 | `lemma` | [Submodule.FG.spanFinrank_baseChange_le](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/declarations/submodule-fg-spanfinrank-basechange-le--09d867f0f9f70b1cd21ebd3e.md) | 51 | `result-track:09d867f0f9f70b1cd21ebd3e5d2f215db57cfa42f55ac86ac01bd32e2a63a828` |
| 3 | `lemma` | [TensorProduct.spanRank_top_le](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/declarations/tensorproduct-spanrank-top-le--5bcceb2338cdafa9523c53bb.md) | 56 | `result-track:5bcceb2338cdafa9523c53bb0b55bb73c62eba0242c4fee0235fe03acf08d530` |
| 4 | `lemma` | [TensorProduct.spanFinrank_top_le_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/declarations/tensorproduct-spanfinrank-top-le-of-fg--ea4fcf6f4b73c713629603be.md) | 59 | `result-track:ea4fcf6f4b73c713629603be5cfaaa431866bb354ba7694684b5427a77e4bde1` |
| 5 | `lemma` | [TensorProduct.spanFinrank_top_eq_of_residueField](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/declarations/tensorproduct-spanfinrank-top-eq-of-residuefield--afc494858173b12d0c99b6c1.md) | 66 | `result-track:afc494858173b12d0c99b6c17305959c681db9f71e7dff9d40e59c2e7973e4bb` |
| 6 | `lemma` | [spanFinrank_eq_finrank_quotient](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/declarations/spanfinrank-eq-finrank-quotient--dacb24d7bc7c56031d6d37ec.md) | 84 | `result-track:dacb24d7bc7c56031d6d37ecfc050a34a47125cecfebe483104998acf2684b11` |
| 7 | `lemma` | [spanFinrank_maximalIdeal_eq_finrank_cotangentSpace_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/declarations/spanfinrank-maximalideal-eq-finrank-cotangentspace-of-fg--8596099550beda670ebbce05.md) | 96 | `result-track:8596099550beda670ebbce05d6a7111d1ec4034e1914603e5be0cd7f9b9ed497` |
| 8 | `lemma` | [spanFinrank_maximalIdeal_eq_finrank_cotangentSpace](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant60aa1c9a6f493bacc07ba45b56d42801ccd4fd5edc35a54318182cbe7472f67c.lean/declarations/spanfinrank-maximalideal-eq-finrank-cotangentspace--105f341c34b12431cab0c487.md) | 101 | `result-track:105f341c34b12431cab0c487265bbcd223fb761515d823cbb5752b29984be72e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
