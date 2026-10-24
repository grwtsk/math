# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Insertion.Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0496ec1bac3282cc12f7e88504a6024fa8760cf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0496ec1bac3282cc12f7e88504a6024fa8760cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeInsertionEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean/declarations/primeinsertionedge--5ce4c81e446e011ea4423b18.md) | 17 | `declaration-track:5ce4c81e446e011ea4423b18023544845e77abc5747aef6fb8ddb657875398ce` |
| 2 | `def` | [PrimeInsertionEdge.target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean/declarations/primeinsertionedge-target--24806677e2e06aa6a1a2172f.md) | 23 | `declaration-track:24806677e2e06aa6a1a2172fc4837cc0be0c137584f11270c80dd0a4f0d9f7ce` |
| 3 | `theorem` | [PrimeInsertionEdge.source_subset_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean/declarations/primeinsertionedge-source-subset-target--4befef062be2e93e83b46643.md) | 29 | `result-track:4befef062be2e93e83b46643fa2f9760056b7bc059f0f4e7dc1c1e4382dcebc0` |
| 4 | `theorem` | [PrimeInsertionEdge.prime_mem_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean/declarations/primeinsertionedge-prime-mem-target--770e82a625fd4562acd3b53b.md) | 37 | `result-track:770e82a625fd4562acd3b53b590d60b5b15df5ffb82a0b1a5c8a1362415738d9` |
| 5 | `theorem` | [PrimeInsertionEdge.target_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70.lean/declarations/primeinsertionedge-target-card--ee5aedb41eb3154de7c964cf.md) | 44 | `result-track:ee5aedb41eb3154de7c964cfa5d8710708e0e95568fd6862d976c04e981000a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
