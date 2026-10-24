# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCoarseCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91ceef34cfbd920994350b568fca10b220d69829",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91ceef34cfbd920994350b568fca10b220d69829`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coarseHighAllowance](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/coarsehighallowance--274d444015f64b08108a3cda.md) | 45 | `declaration-track:274d444015f64b08108a3cda9b6528e15d72f9c2e6d847e28e17f5a9cb89c0b1` |
| 2 | `def` | [coarsePositiveUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/coarsepositiveupper--71f749a08da66a150597f423.md) | 49 | `declaration-track:71f749a08da66a150597f4235862293936bc7bed5a94dc4d05a8718ee92527bb` |
| 3 | `theorem` | [highTerm_le_coarseHighAllowance](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/highterm-le-coarsehighallowance--6f2861b12fc1af1f8529f3ee.md) | 53 | `result-track:6f2861b12fc1af1f8529f3ee364ca50001d11f691ce99f9dadc18dfab1b71ab7` |
| 4 | `theorem` | [heightCount_two_le_coarsePositiveUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/heightcount-two-le-coarsepositiveupper--7e6c8f78f342a33b81ba4bcd.md) | 60 | `result-track:7e6c8f78f342a33b81ba4bcde7ed2591d9a7f61c2e231a53d8a0d43a2b471160` |
| 5 | `theorem` | [positiveHeightCount_le_coarsePositiveUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/positiveheightcount-le-coarsepositiveupper--6d39e64f808202709a6cbf51.md) | 66 | `result-track:6d39e64f808202709a6cbf51277cb539e6ce99806bb47b62b8153ba09fd84b70` |
| 6 | `theorem` | [rhThrough_of_coarse_positive_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/rhthrough-of-coarse-positive-credit--49783ccd52071922d194539c.md) | 85 | `result-track:49783ccd52071922d194539c2296a1d325d1faea011eb8b66118b9da4e30344b` |
| 7 | `theorem` | [rhThrough_of_coarse_positive_weighted_inventory](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/rhthrough-of-coarse-positive-weighted-inventory--7193cb7332470c9ad4588c41.md) | 96 | `result-track:7193cb7332470c9ad4588c4147182933ea6ae582b77ed58ccfbb3a5df793381e` |
| 8 | `theorem` | [rhThrough_of_coarse_positive_local_contours](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/rhthrough-of-coarse-positive-local-contours--59112375903dafc0fc8e384c.md) | 108 | `result-track:59112375903dafc0fc8e384ce71ac307beee7f2c054baf032d1dad28b882f4c2` |
| 9 | `theorem` | [riemannHypothesis_of_coarse_positive_credits](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/riemannhypothesis-of-coarse-positive-credits--050efc95cac67b332562a3b8.md) | 133 | `result-track:050efc95cac67b332562a3b809286f04ca042ec2941adfc69d56d4634c747e2a` |
| 10 | `theorem` | [nonstrict_margin_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/declarations/nonstrict-margin-fixture--f911f18e7b19e71aa5786ec4.md) | 151 | `result-track:f911f18e7b19e71aa5786ec4b8870be80051a5d96b748a7be65d23a38de207ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
