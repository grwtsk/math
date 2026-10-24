# Verification target: GRWTSK.Interfaces.PortFiberSectionCompletion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberSectionCompletion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0`.

Source path: `GRWTSK/Interfaces/PortFiberSectionCompletion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberSectionCompletion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberSectionInnerProduct`](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionInnerProduct.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/schemaversion--9ae1cbe57fe423efb8777a11.md) | 32 | `declaration-track:9ae1cbe57fe423efb8777a11647be87fa8b0799142e3f2cddd4cc430adbbdd47` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/addedindex--f317124efb3417dcb46bc505.md) | 34 | `declaration-track:f317124efb3417dcb46bc50576698d141446b04f1bf1fdd3aa1dea5ae2ef459e` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/addedclaim--8746875808d3a7d6ca84dd0e.md) | 45 | `declaration-track:8746875808d3a7d6ca84dd0e039cc16205d67d4d4eb9a5ca0e2b5b1b6441ae84` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/addedclaim-proof--abc9f9498f112f813f0bc287.md) | 114 | `result-track:abc9f9498f112f813f0bc287295acdf76bf000b042daf4a8e56bdcb8e8f470d2` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/portfolio--bec2176b3f8c6e4f39c512ac.md) | 160 | `declaration-track:bec2176b3f8c6e4f39c512ac3700caa1d27d8f0b4a0eda6071d33ccdfd1c6854` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/architecture--07604662daafa500084c9c67.md) | 163 | `declaration-track:07604662daafa500084c9c672c3035e5b82a8a37d13f538b7ad4f063d50114bd` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/previousindex--2bcbafca6a5954e6cf5945f9.md) | 167 | `declaration-track:2bcbafca6a5954e6cf5945f9a2211dba55388839fd48cdbf50fdb45d8313a825` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/original-branch-unchanged--d2039febd257a7d6923ba508.md) | 171 | `result-track:d2039febd257a7d6923ba50808c662edfd84a67e6f350420be9d3e2d24f9058e` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/new-branch-proved--22e285610c6d24fef182c845.md) | 177 | `result-track:22e285610c6d24fef182c845eefe25837e739ecbce925f86b16e549ab1cb1c8a` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/target-unchanged--a9c6f662b4f58cfbae71e9e1.md) | 182 | `result-track:a9c6f662b4f58cfbae71e9e1c9d50dad55fc5a7cd1f6821a23bdf17ae9c93ea0` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/declarations/retarget-preserves-new--ca2c4d0dc70b01de046d658d.md) | 187 | `result-track:ca2c4d0dc70b01de046d658dbc3fb054341e561658c22c62ccd2b2cef2f0c7b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
