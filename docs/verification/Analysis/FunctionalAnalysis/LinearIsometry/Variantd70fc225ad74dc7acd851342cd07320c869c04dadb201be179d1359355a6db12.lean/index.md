# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LinearIsometry.Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7db1a30301986ef5ce3e69f8e0500d917115b3e7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7db1a30301986ef5ce3e69f8e0500d917115b3e7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean.json)

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
| 1 | `lemma` | [LinearIsometryEquiv.strictConvex_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/declarations/linearisometryequiv-strictconvex-preimage--b6d6d09b7b3f8fdee2938370.md) | 31 | `result-track:b6d6d09b7b3f8fdee29383702fad075f4b940635ca11d301929522b7149024c2` |
| 2 | `lemma` | [LinearIsometryEquiv.strictConvex_image](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/declarations/linearisometryequiv-strictconvex-image--c0ab80bed5204c86dfc8b505.md) | 36 | `result-track:c0ab80bed5204c86dfc8b505001d1d5777a0f93e18db1384bb0819b29e3e5cb8` |
| 3 | `lemma` | [StrictConvex.linearIsometry_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/declarations/strictconvex-linearisometry-preimage--33c9a628a837a359716652d7.md) | 44 | `result-track:33c9a628a837a359716652d71d35012e1a16ce6ee543d9a5b65ba439da4aae21` |
| 4 | `lemma` | [LinearIsometryEquiv.strictConvexSpace_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/declarations/linearisometryequiv-strictconvexspace-iff--bf7e5e837e14e7b49fda2446.md) | 51 | `result-track:bf7e5e837e14e7b49fda2446ed9d05aa9bd562286d55d5fee12b94c383d967a2` |
| 5 | `lemma` | [LinearIsometry.strictConvexSpace_range_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/declarations/linearisometry-strictconvexspace-range-iff--81a2ade98a63ec501b162160.md) | 55 | `result-track:81a2ade98a63ec501b16216028747a70be59d887aae00cb88e4b542da70cca79` |
| 6 | `instance` | [LinearIsometry.strictConvexSpace_range](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/declarations/linearisometry-strictconvexspace-range--c535b720f08637ef2f85b71c.md) | 59 | `declaration-track:c535b720f08637ef2f85b71c9af4cae2cb850dcfff086fc009e8a146af75839e` |
| 7 | `lemma` | [LinearIsometry.strictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/declarations/linearisometry-strictconvexspace--f5b64fa50956b1b8c5db16e4.md) | 63 | `result-track:f5b64fa50956b1b8c5db16e46e6f161853953c95d953f3b6b1d8cc5a05c5d948` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearIsometry/Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12.lean/declarations/instance--74ba9c4e4b21272846184a2d.md) | 74 | `declaration-track:74ba9c4e4b21272846184a2deba07c81a14ef3759e4074ed2644c5bc4088c996` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
