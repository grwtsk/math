# Verification target: GRWTSK.Interfaces.PortFiberSectionInnerProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00a1bcfe7c94a7c286da4899eb8b5d4207157634",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberSectionInnerProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00a1bcfe7c94a7c286da4899eb8b5d4207157634`.

Source path: `GRWTSK/Interfaces/PortFiberSectionInnerProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberSectionInnerProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberSectionPairing`](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionInnerProduct.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/schemaversion--ba044f8b8b46fd2cf1084fc2.md) | 32 | `declaration-track:ba044f8b8b46fd2cf1084fc21b9e98fc408192355d7f4969c2911d0a14c94f40` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/addedindex--18f5c032e8bf469fa32af8a9.md) | 34 | `declaration-track:18f5c032e8bf469fa32af8a928b1bdb1a536d0b94e86075bd6fd9e7a2c98836d` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/addedclaim--fd9e18586e024d4d11711a83.md) | 45 | `declaration-track:fd9e18586e024d4d11711a8308ed853726476af25f2c038a292e10cbaf5e0d0b` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/addedclaim-proof--882135d5333d1b1b10dafed8.md) | 100 | `result-track:882135d5333d1b1b10dafed832f159e33eeb41f53bc228e445c8f282b2e021ab` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/portfolio--cf1962dd88f8ead9b887a364.md) | 150 | `declaration-track:cf1962dd88f8ead9b887a3649c0b3d722dfe6131f689dc8f67177b52a7231771` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/architecture--5ad9bbbdfb9eb38d01921c94.md) | 153 | `declaration-track:5ad9bbbdfb9eb38d01921c94a4a6b45c467df7951eaf56c50f49ba3f3f4d35bf` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/previousindex--e8733311417e19e42936d83c.md) | 157 | `declaration-track:e8733311417e19e42936d83c1e6b412e2163df6a42112524ea8afc83350f066c` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/original-branch-unchanged--a5932f9af160c87a6fe1de04.md) | 161 | `result-track:a5932f9af160c87a6fe1de04f6c85f6a3b812833e53d0932db3ff59c1dd696f5` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/new-branch-proved--2feb697db3eec593db5ab8b9.md) | 167 | `result-track:2feb697db3eec593db5ab8b90c5a27fdd7c0012ebaca5315f2b87b0993326da9` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/target-unchanged--0ddda6750d94ae3e894cd68a.md) | 172 | `result-track:0ddda6750d94ae3e894cd68a7a57ef13a9d128b9358217a3a714368d61189c40` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/declarations/retarget-preserves-new--9a47733a8929ac357dc0b43f.md) | 177 | `result-track:9a47733a8929ac357dc0b43f4fc7a70da93d602e75d78cc085da3e340da4976e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
