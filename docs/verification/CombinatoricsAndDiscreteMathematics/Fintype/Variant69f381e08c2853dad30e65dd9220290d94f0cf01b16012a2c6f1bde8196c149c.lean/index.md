# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e2716741891cb07c25cceb8767b1dd591ea2934",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e2716741891cb07c25cceb8767b1dd591ea2934`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Finset.univ_of_card_le_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean/declarations/finset-univ-of-card-le-two--aaaf6d9bb81e5830c6b39558.md) | 28 | `result-track:aaaf6d9bb81e5830c6b39558a6bc7b964f5ccedc7b5d653041fb735235bb385c` |
| 2 | `lemma` | [Finset.univ_of_card_le_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean/declarations/finset-univ-of-card-le-three--7caac2b9d8a0eaf19dad759b.md) | 36 | `result-track:7caac2b9d8a0eaf19dad759b70860fc50107bd1bfa848a2da5c64f65e6ce73fe` |
| 3 | `theorem` | [card_units_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean/declarations/card-units-lt--7ea87fe2f957a85a39e620f1.md) | 71 | `result-track:7ea87fe2f957a85a39e620f19696b13a1fe0501d472bdc772596cc06fca2d467` |
| 4 | `lemma` | [natCard_units_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean/declarations/natcard-units-lt--64e2de91ba5008732de60443.md) | 74 | `result-track:64e2de91ba5008732de6044390a8190209623aa28cbfb00e97fd9d73ba585ce4` |
| 5 | `lemma` | [orderOf_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean/declarations/orderof-lt-card--4d8a4c6d6368fb2296cd443b.md) | 80 | `result-track:4d8a4c6d6368fb2296cd443b76ce85c471945d58827e65d12a6b8fdc9166ca28` |
| 6 | `lemma` | [ZMod.orderOf_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant69f381e08c2853dad30e65dd9220290d94f0cf01b16012a2c6f1bde8196c149c.lean/declarations/zmod-orderof-lt--46a7d9074641a002c524217f.md) | 89 | `result-track:46a7d9074641a002c524217fd68310bdf6c70be853cf2ba571e402c3ac2100e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
