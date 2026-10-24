# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Represents.Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1b051d48f9158e858b95e3727be85b31b23c3c9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1b051d48f9158e858b95e3727be85b31b23c3c9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity.WalkCounting` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Represents](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/represents--85f0d05f5b365e64060f69fa.md) | 36 | `declaration-track:85f0d05f5b365e64060f69fa9af3863297cbbffd48fd06d382f957a07d67dcc8` |
| 2 | `lemma` | [image_out](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/image-out--476c9688d65f5efde4ff7538.md) | 43 | `result-track:476c9688d65f5efde4ff75384c5e12c93671be271f7157970ef69d75eb1aa5da` |
| 3 | `lemma` | [existsUnique_rep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/existsunique-rep--2dbb854c795ee902c49ecff9.md) | 50 | `result-track:2dbb854c795ee902c49ecff94b1337265fcb539aaa51ca154bd29966aea035d9` |
| 4 | `lemma` | [exists_inter_eq_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/exists-inter-eq-singleton--88dae121c25a87fd6e4ee998.md) | 56 | `result-track:88dae121c25a87fd6e4ee998b123ddebca319070abf302f1edd522556cd1a56c` |
| 5 | `lemma` | [disjoint_supp_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/disjoint-supp-of-notmem--1950648b0fcd311fb8e56320.md) | 60 | `result-track:1950648b0fcd311fb8e563204b4c86f9a586b1f91ec748775561acebbaef5875` |
| 6 | `lemma` | [ncard_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/ncard-inter--6433f5ec493ef7509e13e675.md) | 69 | `result-track:6433f5ec493ef7509e13e67518f5fd29beb0aaaddc71f2c593a999e43a61e581` |
| 7 | `lemma` | [ncard_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/ncard-eq--67114ec3b749b62590ae3a65.md) | 73 | `result-track:67114ec3b749b62590ae3a654cbd7e31235726fb8f025530041e4288b990d675` |
| 8 | `lemma` | [ncard_sdiff_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/ncard-sdiff-of-mem--6d7a2cac007a7054057fa160.md) | 76 | `result-track:6d7a2cac007a7054057fa160c271d99151bccd84a24f14d5870d8f87037c28e5` |
| 9 | `lemma` | [ncard_sdiff_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/ncard-sdiff-of-notmem--efda6d81dad1eab1adee1795.md) | 82 | `result-track:efda6d81dad1eab1adee179575e9a945a1da60ee6f157b817341829025430e27` |
| 10 | `lemma` | [ConnectedComponent.even_ncard_supp_sdiff_rep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/declarations/connectedcomponent-even-ncard-supp-sdiff-rep--e614b0f38e4ebe0fe02a9640.md) | 90 | `result-track:e614b0f38e4ebe0fe02a9640702aae879aaaa43e59bc00df015e0646fdd2d24c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
